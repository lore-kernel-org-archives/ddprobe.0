Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290C4634EC
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760243394; cv=none; b=AFAcQQsMoFFNATYVcmmKNONCqdd2Cz/Qo65ylOwWsbD4I9QIiORnptiOQhplWOqvH9tM6IcgOcVVuLw7mSN5lrjEMpmBRNzAZ6ZsUjXMsn/GcUq4dYtidiMZj0EYoFAGOB8V7fiiY1ru+YCvPusqvkPFR2IpBpUX3xGgEoiScNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760243394; c=relaxed/simple;
	bh=ZJtwkMkuZdmfmVCA94YE6kSlzv/qLyz5tSr6XDDp2nU=;
	h=To:Subject:From:Message-Id:Date; b=rIiZMgDPvd4zJ+vsUF4AlPafUfUX25hUW1dZmeCHxozHYeMyib8pYiBXEKoDKjDknhM6z+k42tUeBom7vb0tKzZJeqVjG1EHAyftzVSEQ+1xuRKawMLGMxYe/06m45rQ8FfPmKk+IBdRl+l3NSPrrIW04KL0ldIGiVXFfBH0/rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5sbPuiQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5sbPuiQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60B2C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760243393;
	bh=ZJtwkMkuZdmfmVCA94YE6kSlzv/qLyz5tSr6XDDp2nU=;
	h=To:Subject:From:Date:From;
	b=q5sbPuiQIuz/GFGngFg7ncJaHxp8nkhcgGmKxhh97OEi63wO5bDMCSbunpLM+fGA3
	 /Gt6OxU6bKyfhh3hVRnrLHBIlKBkK4L844eHD0kcDznf81Uqfg/p2oivSTW1jvZw14
	 DcagnsWSXFSoicGXZj/f50NC1S4dx8VFRCAu3x5kSUCjP9ADrhpy3uL0kBufDEur1t
	 wWumm9roHpKv/kEL+Q7b+gSlXvmdmfYPDNRttGaEWfwf6mDheVVoUAffzgwORn54HG
	 gRMNFZn04grGHblG6ewP/y15xuKfEuxdTgQQwBXg7FiEtHu1T61DapYhUrKyX9lNfF
	 kJ82IXiB+4DSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EE2CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176024339357.32758.13871792846022207568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baaa5c7c9841bcfb3bb132cea46199b5ce8cd13afb146a0a1163c216a30e7d34
Date: Sun, 12 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760243393
