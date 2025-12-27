Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F41770810
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766854434; cv=none; b=WheZQtvLqY28idPIVGfuqTgkVJizKmtJ7K6NvWFM3+/Tu5rtg2lE6SKC3uLUWB1mv92zwYh3k/grOhI2974Utls7Erf5Lfd/O2HqdjgOpqcsyp/GCSEJdS5rQRKpKFcSYyVS5PMG9prgSvBJvAeKHiACu6w4erl4w0771eWUQYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766854434; c=relaxed/simple;
	bh=NDeMvwL1FRHhomUmY6+LTSrs0TWH0rfmOGgEfaxRC9w=;
	h=To:Subject:From:Message-Id:Date; b=l+94u7U9Ue0U3SNvGjgKw37e5ERsHyAN7p9FlU/Fo96W1IYpJdrUcD+OXszoLYwpY6SZuDTOg/WZA8/6HtsPCb6B1d5zsZnP6zIn7nxsEHxNQciIkEu47Ulk+fa/FO4siDAHLbDZzm2j5v0fV16wKo3C7riFdfLYuJbU2k8/rjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFS1rXUe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFS1rXUe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A818DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766854433;
	bh=NDeMvwL1FRHhomUmY6+LTSrs0TWH0rfmOGgEfaxRC9w=;
	h=To:Subject:From:Date:From;
	b=VFS1rXUeslrHbsPn1uQNZ0VlIbmbrHRfS/ZZn70u2b7VQ4EkciAjT3/+WBDuA8U6r
	 kh/M3zAARa+z+omGd4TGQZYeVjFM/XNuhqJ54/n0cuNKZvb8+XOQ50RSsu31eb2rXL
	 ryRP5FIdQktNDeWX2XOK1ozJEo9F5veBVNKCpNhj8QAh6uZEdV42EJzc2VxmMzbL7w
	 Tq/x/eQyNXXF+QP50XiBruANRkofJD84sb7e24ve/FkxBs3SDVtDikmI4JEFRJKjiT
	 7gpXXCUyYtFNYg6mGnVBEWrolRCAlVJQm0OGJu3UHBrV/gQFGfaVE3jh2PzH37OHSI
	 wie3lJKVbxUZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9487FE8FDCD
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176685443358.11067.12797650296170905541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27daed68d2b11c0373ed70aa19532036ccf93e07fcd6e455b88ca1eaff4ec1d1
Date: Sat, 27 Dec 2025 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766854433
