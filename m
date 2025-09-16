Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07705AD2C
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758002394; cv=none; b=AO4OZi5aMVfr5G56iXtMDDJNJ/a5UfJBzSXdolOl1iXRP6aj32vd4Pllwc325q/u2MkME2pj4CByuUb1rcBsDvDO5PED02i4wqVcRRv6GgiWP1UN3tXz2LTXAhOTFd2oXvbywKGr0OKTX1V8GIxDeW1j9JL1B8z2HOuwlY8c01k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758002394; c=relaxed/simple;
	bh=W2CD2PEHy6LOYIoOuVdZ+MRIjYqgbiZ6Lg2OguBGWQc=;
	h=To:Subject:From:Message-Id:Date; b=WsZLDWC5i78VAig/5XzFQcvIIlYSIq3sRDIaSDb0Gnk5dx2y0Xz5m5++n8ITVCuU0rANqjSzi4N1mNPrhbRquq0sSw6pjYGqxF33ZzHZqG8MaAdelt9Dao/ZHWG8UXI4m0wqSa2aoond2CGixNkMUuhQbxrsritag4XyCU1NYoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPcMzkmS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPcMzkmS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7DCC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758002393;
	bh=W2CD2PEHy6LOYIoOuVdZ+MRIjYqgbiZ6Lg2OguBGWQc=;
	h=To:Subject:From:Date:From;
	b=OPcMzkmSfX8OVk3Pkdv2FeZNh0IkPaiOBU1ssX8qH8vmW/5bSwvRKmbdd1Tu6z4+I
	 GKW/50oEseSuxWNZvcXZa4ge4SLWJr9Yv8s2luYQ4uUelGlOrV+CFnxcrm8Y/XUd+g
	 IGuK5Z8fxOWOZKtP6+ec8e57kxqykZ0/uTir7M+dVq0CoWJwEgQRnjHIrpkxVl0YvL
	 AA41L2TDe3K2iBZGZrRc4hul4nU+2twyV95DvaJKFr2kxafs2lZTOsKcSEWsi1KKxs
	 MWhv1XDYteS/z93ZiYtcMIq/hzQ79kmTBWv8RNQUVqu2LWEJ/glDFNqaQChpEzrBO7
	 M6ODdqCxV+29g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E26FCAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175800239357.27183.16455744998005058625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7be75078c95f479a6708b76ac93c964f77f03477e566a58b6e099e13284b662
Date: Tue, 16 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758002393
