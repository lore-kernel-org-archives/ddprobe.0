Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D373AE1A5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 20:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781555194; cv=none; b=Bn1+Nzpqr6SetcJw2keBM6jOX79b0RcxCwy0FvKuzTElPgrcZT5IORGsynSxlU2jlSpWnk13lTOPLWytOdp1LuL5w7B7yg4bl6ZnnED14u04I4MU6zUdpMbZQs24OFUPD6VWBRRChoV6/Vulo8hjvhbRYfc1A8AIxUjIawDzVLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781555194; c=relaxed/simple;
	bh=8IRdM2qBrkGPZdN2B8RGUuSFOt1QiXQtXevE54Hc01M=;
	h=To:Subject:From:Message-Id:Date; b=ZDrin3+MHwn01s1WMrsqfayYjtwhjNlQLnZvn6JseUBj5RIAOFGzoukeERvmGaK0hYXnFdLQRFGBTEGjqmDBkXw+saITlgogK0K4P9ztxImKtf/MKHrSO0xDXxdKar7PX+LZOfjayVRDZnZ/sxYaYCRVPPIIWJVyJ0TzRFTrVRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYZAETeU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYZAETeU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C791CC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 20:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781555193;
	bh=8IRdM2qBrkGPZdN2B8RGUuSFOt1QiXQtXevE54Hc01M=;
	h=To:Subject:From:Date:From;
	b=CYZAETeUFwfiTAIp8dX7piIuMdyIkHcC0TDyMr74yBf56wd6UwOR9yAmDPgSf+fGA
	 GNdySRnSAxyrLHy4E0LrCY0T7q2YFQ0U6mrXkNTsqgTRT5c8wlfwK5c4AqQYpsb9ED
	 q1LEUaQPldfy6GtQt+8eYxKI9pdEO3n6xSccUgJ/q2lmeuLspshiwFqltVjpIcsECp
	 1bccw4gXSen51Czm6HkAHvCr19V09AyKwLZyf1xe5mv9SG3vLGS93pHiX6T7h4vInU
	 UDSfHWvZM43CLKaurRxo3SiO2AjY2e+S3NAUIoGTdoUKJxCIfjlRJpHz9b7t45vDyq
	 aCoSYtchhwhaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB21FCD98DA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 20:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178155519369.6173.15274727010819070359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea39ce59aa201bd0b74ae56951b8374dd3859bfd69b6d104be6669bfe39c0be
Date: Mon, 15 Jun 2026 20:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781555193
