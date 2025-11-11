Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1566835CBCE
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762897794; cv=none; b=RfX/kJ6ia3xFPmciI7HvL03GKawUjckoxHcNh7V2baTWSAWed6VxwDD+0lR+IfSklXXeenjJMzrjOcIX9u+gC4SWnEKZx7Jj35YUpgFXaijfGtS6zZBojVjcULlMLfyxcMWoTbHZ1fqW10eOm282RNda9SgBNcpPaiSUSRiqXtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762897794; c=relaxed/simple;
	bh=IhT1HQBEZwNJD3XBmhjUKFpHEjvykgtoUsiMzEjR1kE=;
	h=To:Subject:From:Message-Id:Date; b=rw8usIm4I518rKrBHt/fBefHAixL0ZBble+qoUsGmG16pkZuvuGB0zCk9h2KbTS7HY1iCb7ImArL9epu4jnUBYK/4WDUjcOJj6+9vPiShIqo+suVYrl9Z5KYO/d54jkLoQ772su0wFafaC8UqYhtl7FxRBz60Atsp3JPklIoPCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYNaYqTq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYNaYqTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F429C113D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762897793;
	bh=IhT1HQBEZwNJD3XBmhjUKFpHEjvykgtoUsiMzEjR1kE=;
	h=To:Subject:From:Date:From;
	b=eYNaYqTqRtdngmTzPDWH5rP/tL8q7Sa9ghaoZWBbgvPmAFbvWafhOhaO7X3pKeKat
	 88U0Nt8Zv6UPmn3iJOLdcveiC9AUaYaTV/+RxvFW/CxL/vsV1lGP5T8uw0Aj9g2uu4
	 1eweqFkeamTX7qI+/jTfD5V8SuMRS75zxYNqNl3FGqfVarjaN5ySV1/lc1ipmUzqkh
	 OgJWAnfI6Drt9FndB/TSCFynBRYdGrFeb7pTMthqLkUeA6Joni4xEw29QtbkG2KRLz
	 NAG8cZbQWOO6rxQ1/syGplTF1aFxYm+6BNIOXuu9/2xZT+j7D1AgwWBMEQew11oIdh
	 2ik52ozvpkvmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F2ACCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176289779359.6609.6943646636673043543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac847b1c29929ec3c0b0477f2fa72063245bc9ba5ae7918535b81d77cc9a587f
Date: Tue, 11 Nov 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762897793
