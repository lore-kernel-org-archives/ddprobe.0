Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240B83ECBC0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772044494; cv=none; b=Elg1KGWUtuTnMci4jJIlWsKp0BLgYC8rcwVBiHrrk4pmXwRCPIZWkGAxwDou1C/OR9oRooxQI/sU/k2ILfnkd22YxxttjRvfGzfVhpVPvbnLDt4yACPnboPog5rNpp1jbUynoBy69/n6ubVQ/bopW/Ywuk2MFq7fZrBMcb4wGj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772044494; c=relaxed/simple;
	bh=ieuxTr62g7YePrF9Tx34LKwz0ionENZ2h/+lrjloOA8=;
	h=To:Subject:From:Message-Id:Date; b=YADKWJw2llZFcO+vRR48qXPPebHOaGhDaTxbJ/E5g1KIBJ4aERRLPhu8mjPJ/QhPr/GD09u1ljfRI2Wg988GCYrVfHGsOpsQS+pjHOaUUrWpeTSkzdBKW8a50FzcOVF6vyQmDS/B5c685n0brXnMtxYsSqE1ffQa9xy7qZftR6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NdWIIpeb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NdWIIpeb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7A9C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772044493;
	bh=ieuxTr62g7YePrF9Tx34LKwz0ionENZ2h/+lrjloOA8=;
	h=To:Subject:From:Date:From;
	b=NdWIIpebanUyAhSZQl9GZjpavi7pIOpCUF1+kZvgsRjQ5gZSY43UIMDKNXNVtNyq4
	 MG0JurE4Yn93rSx/wfrMHtOA4qnE2no4Ynlo/hSRflLL/vU2rYrJGvYbRmtv+AqVdJ
	 d85zTE8ajSNNnxM9+o3gPhAtPmbwb5oxMmjY0006T901BEi7+E77psfa9SXv9P3VDg
	 5pQyYnrc47qgw5w7nO/elKdfJRbeP+CLSAs+WROIGBqNRDedKXcTigyiIf/EfnC2I4
	 7Mh3duRs3eTF9GqxdgrieO6BMC2h8fY2tPcwMdrJ8+uYjcoBAcvvFtlM3rhGqlIr3d
	 npmP8Vl3W9YsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94523FD377A
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177204449359.4459.3715432419461093865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9c84a283018f49e3d3d03413205ae766c8c49869f2da37faef5bdf1e4c1003d
Date: Wed, 25 Feb 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772044493
