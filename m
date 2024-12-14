Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4DC4C70
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734201954; cv=none; b=XdBnhl1v/apr3tiGwe6aRrWAyeGEp1yF28RSU2u6iOUbTWQ3139SBNzr0cLxI3bvPzYkcV4uby3AYd02E0/YRp9Y97SCpOUCm9setofU0BVp1Vh5cIcRrEF3p5G97HvwNLdPOT123gK9XfmNEl15IzlAQbp7/YhcfhsLSPFhOac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734201954; c=relaxed/simple;
	bh=YvMPqE/IjA22BjOPzaBJSnPaZ+Z3ysdhqfXcKteyFq0=;
	h=To:Subject:From:Message-Id:Date; b=qn0kSBZCUimqe56OqjHxZC4ZYJYj51bE6ldip28FltkbGvLZvD0PbHgWoqaF2j3xa/VWnXTSew2yW4/34YNag6QNw+YRUefA4Wj579JEUCfgg9Ccd7wIumP+HBWBGAoCoxyMWzoqWULk/Hq6NbXin3XD3qDLKDeCb2SqVgIZHNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upIYVhS2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upIYVhS2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA546C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734201953;
	bh=YvMPqE/IjA22BjOPzaBJSnPaZ+Z3ysdhqfXcKteyFq0=;
	h=To:Subject:From:Date:From;
	b=upIYVhS2Mkq6FIUKm+92krAONLXBeYqXcu/lIEyVOWWFmuB//8iI5jiEZPYE4f1of
	 D/ZH2aG09nSqiT7EMm4A29Go19aLEVgjihLOOfOsmJsicx8Ot37GXHjrapO8U0hs0j
	 VpwGYAVfDx2+I3K61v2zWH8ld4A/EzxL95k19xYQszl66XyTOkKoGXgj7ZS4OkvWbd
	 kVuIgm1Net64pQ2quaBjZ63zPomeG57ZMubtYhvBZi5zogQrgVvxGsapMkHWlhctZy
	 NQtqAQfGgPmdNQHtR038i1v2Jb1YhUpIHNL4fPQI4IBa1Qw7/MBGP1fVxG2O5mUM30
	 gQlTTJdNGU/KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5718E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173420195362.6612.8911553175092992789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 801e4bad4804159e6a2b46d3e6e59c2c72259f473b6a8c6d650f77133e65e185
Date: Sat, 14 Dec 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734201953
