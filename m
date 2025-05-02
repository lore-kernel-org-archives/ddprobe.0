Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F6A25B1CE
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746201593; cv=none; b=M8ikTplBqeS4s303QbHrRgJMyCkq0WdJ0mjkX/O0WjNzkgRXPEQh8mSEVaupbBpgjtTI0gc/xiBWgyUDnNJOwfBWgmfrgMTqqFXNnQpYFxG6DO1R4s6Sqkm1lrVTwEXLOFe8sg1cZrgrn84SiCH+CBLBrtk7o8dF+C0jlzkYed0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746201593; c=relaxed/simple;
	bh=9y1MFNqa+brR/xmd8DtqhtxwDMd2NbBCK1vVuVUfd+c=;
	h=To:Subject:From:Message-Id:Date; b=a2VTuY4+UiIbl1AvUCJ0APUNj8Ni2mLClaQXcC7er2EdcxKFk5swB21Ev4G0m+8mf4aZFV2hNarVr7vHJcq+iCyJcQyqb1c2FJacI8HrAdKTHzeXvXfSfv6HJkR/a/PH4/cYPlaMFKS23wx9o611AbZqeiFyhsMfOykrJIAVbHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mX0fhRLR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mX0fhRLR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF0BC4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746201593;
	bh=9y1MFNqa+brR/xmd8DtqhtxwDMd2NbBCK1vVuVUfd+c=;
	h=To:Subject:From:Date:From;
	b=mX0fhRLRncyW8a9oBTeBE1ghcUHRZSAUS5gtW4iYTCVEG3qXh7nRIs64/D8/t3KSA
	 ag/255CKNIfr5A80+c1nH9o+a+XKElzHcru3d1M27oaffVfbyDDI12rh64UpGEXNa0
	 whxTXwdJZrVUCbH1YfEHZEingenJYf30zjGkC+gWkb6+v0AJMX7wEQXza0Nr5bGCjp
	 05I5b2GujFl+u/KF8hnYiYjlmbAlhzXt6Pri5vXsI681W+y6M9lqZRBqVuHu6cRVZ5
	 Q+0IEvX/QzVU+aZ0SR35B/VE82Y8wbBZL+u8QEJzVoU8xgeVUWeFGsk+M5n69r+SA6
	 x16394OWEEtpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9073DC3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174620159358.14163.11527796971125919561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74c4cd940f7fd6a4a4173d29d685ad4f799d5f7586b41a5ff388557e78e7cafb
Date: Fri, 02 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746201593
