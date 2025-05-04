Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E27D27718
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746349794; cv=none; b=MkQG+3mGHLM1uu6LUIHwhwGfsDleCneZChoLNEDmxJkI7RbLujQImp4DaI/KM/1l7usR1eJPk8tpvjZ6XUnCP19IVPnEbRzPU4SK3Gb/CKRRD2rHD/41Ykjjpu/VKT5Xjui+WSjwLm2/+GWTp/GS9KBivrW8SQ1gHy7ZObfUv3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746349794; c=relaxed/simple;
	bh=XwUa37e0SUZgwPIWEebArrYOYq9jLC4gDM9jcrF+o+4=;
	h=To:Subject:From:Message-Id:Date; b=HgrcrYC3lfOvBUGLWTvfjplIRbawDjIxHTTXWQp6919E7a8PkGHXEIXVqyYYhnj+95XaNf0W61KAkMW5VGm+ZGTLzVVm5+gJbTeyMA/IUlnQMvWbFp0vOzRstxriKnIqKWqkhmJQzeANO1uctZ5GAs/+B48C4/fgAxQUPnomm0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrBctjNH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrBctjNH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A172FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746349793;
	bh=XwUa37e0SUZgwPIWEebArrYOYq9jLC4gDM9jcrF+o+4=;
	h=To:Subject:From:Date:From;
	b=nrBctjNH1/BtmxMmnAoM5Svoq0xv3D0MmVrBLiIL/wrYas/7Qae+EJxGtKNVb3FtY
	 GNxGj0NdwMruTYX3x8YQgI1BAeOmi7HDjwbQtogthfKnsHIuO4Sar75tTwdqpMjjDB
	 e/MXnW5w/Aw16PbUdPujRmxUAiL6gr4JUgYjnHWBHz87JXzCb3lSp+H4ZpoN/UKpNR
	 LNJtf/yzG6JXtuWQ9/5mYcpj3KHbYZ2BsZYWiGVcu13ohiQEvBSz5wPSTb32wHgl6C
	 gdUSJObd7IHE68rvk5GEQYbm3nmhJcA5xG+9N1EIxaTGyavcVcoakQjLoLbG6lOcHP
	 DFhbxghfBcbpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93644C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174634979357.6302.7903828319237861906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aaa9f66a0d3fb65f34e3fa1b489621617ababf0d0ca0ef198200ec7e9a293ec
Date: Sun, 04 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746349793
