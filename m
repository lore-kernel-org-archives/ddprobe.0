Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 014222356BA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768054434; cv=none; b=mU92hjxwApoLuS+uqEVfVPmDmLEev6Xxv02NNZtebcoK/RfFnHTq2KvBMh1ZTyLaVOZtBoR/oY8s60ofHWa+5QGsxpPAq6zIAao6FNwiPhSgIGHXW9fv0tDUNHcpg0ZFVCcPQjD91xQQLMMrbPjK1nDCLjNvKLvuCztXItguOMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768054434; c=relaxed/simple;
	bh=asQywr5O2gVpWn++KPRGw0eStg01VocBcSGxkUV7e8Y=;
	h=To:Subject:From:Message-Id:Date; b=ClbNtpByGtcOnUGJZorcsOgxHnEqhmpYzywyDPpq4tcICnS3QLFr8xLxFDZ1SERUMsKRgvMbZroXCtMV6sOI8Ph8aDj9+2ErOGj3bznSmh8eS+Ys2cKWCGDiw9cT3yAV7kJnAYBGVPdIRIV2bi82rxD5nT0ONw/AkUC4IzK2Q10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MC+Eb/y1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MC+Eb/y1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7439C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768054433;
	bh=asQywr5O2gVpWn++KPRGw0eStg01VocBcSGxkUV7e8Y=;
	h=To:Subject:From:Date:From;
	b=MC+Eb/y15LqkcX8CbjZ8wnjN15nsEY36l1ghi8wWh1gD4Lgsl3WT1mWGuQrm4sd65
	 9uj5oMtr9CGyZLEpCJZWrEYM7B3rGKBUY0vrM0VtZjeBpKw12XijhouqK4Q1hknqNC
	 cXGKUfKwWyKhVEmoN0zL7D7Jl8YxKtrd2fFLkAN4OYjWy3JnUmL7NNHfkCtqzJmSkW
	 ghpl5ikUqb2RD48SfykmO5fXlKFV/+dk36c4ikjbCZ5BVs20KFNFnSvpvhipAoki78
	 yzKSSG0arKFObreiO8WB6cR4xPTrxKzQZCVXFBpmTzwlfYLV/NjHbqW+jbb4r4/Zcs
	 EH/5uRtpu4EPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95382D277E8
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176805443357.22859.7188469729232837208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91d56bd63348ca3c6e40cd41b0f6870e2f113d5fffc5b79aeb56a7558180d673
Date: Sat, 10 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768054433
