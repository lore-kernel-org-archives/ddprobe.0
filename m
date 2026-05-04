Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FFB1A6839
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777874254; cv=none; b=LUDvNQgjmN3r+EhsAuOeCmw5bwO+/kJnx6oZumhoQneEk9wY6dPDP+BoHB+5dgzaj+zhFNE6qBn37wpU3gj13eIQyQ6rER7ld3fbFtERxtjiyHZsxes1I9vxC+rKlrs2cjssam1LO6XTNb/K6Cmc0+qi5tP3MJDK597iclt+w10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777874254; c=relaxed/simple;
	bh=7H4SpIli75IN38KYV+ob9LJoDIJ8d61agx8K8ROMpqw=;
	h=To:Subject:From:Message-Id:Date; b=nh0GQarZq4UfD5akxQX/ePG7hxrAmf6wnrYAxliNnjf1DkdclI305kLZW+qQfQM5ndE3sCif4Gzl6p2xWQ+9T18vbmJdwI0U9sqGqtY+jLbYke3t6A/P/PZib8ItQ7GiTi41TCtN/EbLEMciULSqnR9KTKbV5pLxflcT/qW6E68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2kRszU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2kRszU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FE3C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777874253;
	bh=7H4SpIli75IN38KYV+ob9LJoDIJ8d61agx8K8ROMpqw=;
	h=To:Subject:From:Date:From;
	b=n2kRszU0buuVIQNsir8FQQDiCPuwMPaXZPjsCMuwRwa4bUWCEuXbe1Tj/NbekcXO7
	 VKxvWPDZR3X1HeKVdl2VfGMCrLROGgaDke15u1/KFY16xcyyTXPAbG54PP+TKNTLww
	 1vXuM3WxOaoqGxkKaGcm84Tw0eRVVovf4zxrDgzkiKmjPRVUDwZEwAKGRgnPU09juT
	 8txx5Of198DphpYD631gb04DAFQEfOJ/qF3Q/OthRSTKhLmQJT49ORbrgkpgGcOAeP
	 bcxY9z+LyqDUcbxqROk3WLwDBr1Ogc9POsW8vYsrc+6YdXl8UhZ4S3mHZ+/7KfKv19
	 bnbDkNbOWgB8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E0EFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177787425368.7940.3477165348622217297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ce68228799d1b7db151365fd39f15788c62315b133c73c8de2900063417fcc7
Date: Mon, 04 May 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777874253
