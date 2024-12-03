Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54DA81E2304
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733222154; cv=none; b=uLR5lZHuTgm86VLVX/KZYYSrjUSus9vVzXUArah4i6Q9yAJrPWshbD6Cd79PwNNQIAw34ayZaFSo+iDM3jKMk6Rhd7oFThc7L4Sqt/R4zYVCWNRRTZwJnIcdrQq9tEokImgqVEYMIkM5vbPyBrUmvtgS+olp6NQEeNogymSQGTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733222154; c=relaxed/simple;
	bh=maridRLo9vRAC/XJFt33RhWIA64se1Tl5verlqTtEZg=;
	h=To:Subject:From:Message-Id:Date; b=NTDoO42Q6vPwnHKXaY3JOdBnMup4g4UrXH4uH42ulkuoCiehxJlZEBFGXI+hJ2rtVq94ViBeTXcyTl8muEKjdMpyWmHou3WFSdW975ByAetJjQ7Xu09e6bHqFE3U9zHWRXd3Uzx/a2nJ0kbyNqMqgaXcD5y9hcduM1GzrN+IZho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l310i/nr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l310i/nr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F1CC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733222153;
	bh=maridRLo9vRAC/XJFt33RhWIA64se1Tl5verlqTtEZg=;
	h=To:Subject:From:Date:From;
	b=l310i/nrLDKFalNh/LYI/4hm3v819AvMK0ydNx7Tm6Ny6VJt+9Vx6TePZ3F7Zxvdz
	 OoTbruh+6+FL3MhbFvvRhzEv+Y3fH7++my4o4bAl3U/PotM1KZJA8aHiBpHPmnpHTR
	 WNstIH9Sxx4bvD1SKXF53MuOBN0lV9Ohgt+buR7n52KWSmhLjuHlrSNCq7EWPEVGPd
	 qXctZuVIewh335+F0RwqlKpFVIDvfl5wORTXKhd6L4v2Z1q8P8grzn3NI0QKlgWxrP
	 ZBl1AwmuuZ4K1v5qNTjZ7Xgq77a2ybrmsx2Mfs8A3Pfv/zqoIYi45bWu+Vb00GzgXb
	 QcyZ0gyoyFTWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A0EE69EA6
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173322215367.10252.6469411148412597480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eae6eefa523dd851518909202c32599796f62479b803bc29b1291149fce7ab6
Date: Tue, 03 Dec 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733222153
