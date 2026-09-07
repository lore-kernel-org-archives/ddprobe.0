Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D8CC3559E1
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788813634; cv=none; b=TrPrXNc2UHGKtWopfZvbjC/pAmMXrBJwuhfpnC9NIrvMJzIRYbdaj+RCp9VHAfYFIu0HAUT1Itz5OhGr0933EnR/+eLtHqqaC0fCbaO4Gn9+AG1aUtcjmP6ULCezLNZKjfKWH2etHArzc0cQnX7rCuscEYq2uK/eBZBo7GqM148=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788813634; c=relaxed/simple;
	bh=QvHAzjwxZJwwOJM661Uxjx9AnyYU1kKGeosLbWvFlLQ=;
	h=To:Subject:From:Message-Id:Date; b=ncs+WfF8ImtJ61Xng3gw2YNhmJsQR/+DWKZs0V50O6z+fgzt83A0MxNRxAL8HtHvqVtxhvWfOPDOSyClZaeaZwtySFS2sSiSjEnaFydRXZcmaeYTkfZtl/rutbHpIUQuzPTjS1sPrtUDHNN73HeoJ2nQb9j/I5FRH31hiTwGHO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SfTaGk9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfTaGk9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCDA7C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788813633;
	bh=QvHAzjwxZJwwOJM661Uxjx9AnyYU1kKGeosLbWvFlLQ=;
	h=To:Subject:From:Date:From;
	b=SfTaGk9EbcmCVwFHAOFUupaXOVx18N8CNMOwb8E7SCMgX5ypzQyZPfbFA1XIZpEJS
	 72M4E2HCyMxySAEMd1rQItPhc2GJsNBpU/xA/Hp0D96wsr12WCElLBqw4nzzjOJtEn
	 zocojNKms/BCYUI3Ri7gqS+MICrMJHmfgp0yAODfTfKbnnhag24fKtV/4GyqCOGC5v
	 fpFXLIuhM1xnhjLsSywZdykkjgwIjzzg9BSYMHaCazDtXdtQ/N6VVbp0MlSgKFcM4I
	 XkUy0aYTk1Ojkxd5yN0TD9YOwONfofz3pzfJx85eDA5pbJvNzzinu7BYQSmWCIwQAb
	 gqBJqTszRSGrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D07C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178881363374.14777.12088085214444093101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7819e02e8e545258e15d09108f4e1c0f08dd2cec470774ccfba5bcd277964346
Date: Mon, 07 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788813633
