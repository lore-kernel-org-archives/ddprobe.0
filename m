Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FAD30DD00
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 12:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764593574; cv=none; b=Vf4v1dlAIXwda5Po59xJ21f+WKqjFL1jcOj67cUxWcnr+fLZm4a30Cc56LZWuiPCULWWfX6ah9EPtn2p1mQtBqjY01UJ48JqlBD8BaFaZ/hMuiMnfQfyRi5GO39Jo4BqTWVyyb5xj2WAwHJ8fFb+abmPYlH6QvunEacx5lWbs8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764593574; c=relaxed/simple;
	bh=H+ya15Vhoxx2oRfLGRRdJja5XN2+5x3Jr/thdnSjUS0=;
	h=To:Subject:From:Message-Id:Date; b=THv+2RG75lRAKFfT4PbEEP2cA5KTLLa0GLhYY8mjM/6px9xf/i3KDxzOkqod4FSyAIalo+pID/6UHamA3q/mzOwpoJ/izy448mwt6t3iHGb5ZOifycDNvkggckmaeoRYovCiB870DPE6T/BfY0eHtQIgHNePt/hObj//TgVefQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4Ly8OF/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4Ly8OF/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A930BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 12:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764593573;
	bh=H+ya15Vhoxx2oRfLGRRdJja5XN2+5x3Jr/thdnSjUS0=;
	h=To:Subject:From:Date:From;
	b=E4Ly8OF/DtRZgIU758C7ydvF1vpYlp0vbEDfWdSBbfQG33DsCNASbMHGgzamTUQvg
	 9RuvX82llbsY403p0kzAS/VYQWDDUfggryqS1YPh7HYGdbCdNC9l7rM4mTfsdOnAR5
	 LAFHnddJPDGad/wVX+jBCMgpodwy4c9zrGJ0ZjgbVS1Z0/i8HQAKI1QQoNUFm/pfin
	 XR40lYUi5vV2C/r5jc0XOe37vTYrBhNrycUicxxj/BRqQzKD710iPdVBdhfX48QZNP
	 ftQjbbHSCgwWj2uDBgmVKlPfHhqOGWXItGEf2E/nm94npzC0LYMBObKgC40694u4fC
	 4d+i2foTxkkPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ED3D116F5
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 12:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176459357359.24867.16786355798964074857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac42cf151bf37fc944022cdb4f1a2d13af1ca1dcd3c7c3d5ef900abd4045e080
Date: Mon, 01 Dec 2025 12:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764593573
