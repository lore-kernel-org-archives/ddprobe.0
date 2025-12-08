Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03115314B84
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 06:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765175574; cv=none; b=Gw5iJvbfCFTUPWjYdEbdQySTIzUptvvsZ/ZuMLJUp2h3IJCwXd4UupZXucJFLTE22ZFus0EpBOudlkU3BO/mQtNKT+r8qqAx+fF7c8xpFhA8qkVfMcBqMxPCjvNBJ62XOCnsI2iJ+Pkn8n8fEvmfCC66o79dMzOEIx06XIzoNug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765175574; c=relaxed/simple;
	bh=ZN1Qjfknsqb3CL9HuFoWdmWj51XnuVSh34deDMDtT8A=;
	h=To:Subject:From:Message-Id:Date; b=TalCd9pwo1mQ6QxnB6HE/hHWoO2aldDwhVmYCei8PrAvHiiY07zu1ekYOt0tkOSi24QTvcEYyUCk7kCDP1bJw2pr7LN04+sgMu4OkCPWiMOHt7u/QdrJ7beXm3Nnso507Z6z+t01yZQIgojbT2i3kW7phmCiMrldNDmtcsRIVIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XydGu0bh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XydGu0bh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74CEC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765175573;
	bh=ZN1Qjfknsqb3CL9HuFoWdmWj51XnuVSh34deDMDtT8A=;
	h=To:Subject:From:Date:From;
	b=XydGu0bhohv3BFW1gBZW43ZPKmFreI3ep8UVZfuwnY2zBZgYDlhT7D4mEETOQpiZG
	 uv3YfvHhqyANcMB9JuA48+w+eZuOLYeOYvK+zZexzkTVu7Ejjvah7v3YDPTqiO7Phx
	 yy0LLx/d7/dlHo5pwQ96SVAx7Cfv64OiNBmiHLKdjemepppN54RhMk7pKufYGYi0T4
	 m4FqbVaXzdjoazlNY2VymRA3qa4XfO0UzxZyePxKvZnUOMT2rfTO3KGlvorxvzKN5A
	 I8P1R/kEvE0q0sw9fLa2rGq7EAz0F0koKM3rPVYAFPGhVue2Yk5/+YleFM2IE0aXY1
	 KpKbruacBSrkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A2DD3B7E1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 06:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176517557359.2364.7436925438904013578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54af270ccdb61bb3d0a065a8e948861c9599aa219c2250fdcaecc98614d81c9e
Date: Mon, 08 Dec 2025 06:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765175573
