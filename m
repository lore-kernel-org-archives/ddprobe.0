Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBD41917C7
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738188354; cv=none; b=fiysQHVg29At08HaKIVF29vA/vpfuy6nMGT4nycbUvHYLG5jU7QM+6TxmQZCe11T+eDmWifTLapjAC25WP0dYZ6Nujjm0TP1A7lyvc00rmqzz/chVlsrpCZul5pxcAuuQsrBs2orPqp5z74lDyU0z6z7tOSkJvaZzhf9c9nMu1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738188354; c=relaxed/simple;
	bh=xoaVxbmxYBVF+d8vGWAUOu61gKgi22K/y4q4eBdB7q8=;
	h=To:Subject:From:Message-Id:Date; b=qJeVcbczQPsEMp6sVyPbgHnga9xCPczDwB9iGBAYijhdcucX91AqbSZiF2FWf4LGhA3NXtv2q+95TWEubwSEbqYIicMBJQiLzTQhEnPXO22ZP0D3ymep1hVySLK1q+H/gi3G6nMW48ugMtZvzqqeS55/QihintZoTozmaLgd7SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GdORBn9t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GdORBn9t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B625BC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738188353;
	bh=xoaVxbmxYBVF+d8vGWAUOu61gKgi22K/y4q4eBdB7q8=;
	h=To:Subject:From:Date:From;
	b=GdORBn9tLhZPvSxjMYadIa493gy2q+UVoBzH/MAEFi1SWxnWe0S+l9etHcv0pXhbo
	 T7qD6xmkpNj+PkBGLavonk7nQ6aSOSmjUXyNnQGqVabFMpNMr/rqwpLfM4767Fscoh
	 MzQ9spWnAortCZ86fLt7jb68JhurUSBl2T7sCda1kW4DKmxx8Yy/46ATasnA9cyn7Q
	 Tfb4Sn+3p1NXm2A1OY5KkXKViRrjdJFpUnYYB5WQ8upMhqWomiUsdRSFDD4tWdqNcP
	 vVOP3eoZnE4Tw3ory+iZr+U3g3AM9aaMsSGpw/6SIKnRiNouLql21tBorh7oNuTXk9
	 7p5L14YwErs5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7226C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173818835367.5645.4108958074860589742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806f1ed538b2bdd8cf00d2014b2b0d611b4e3816bbcd34698ee8598894d1e384
Date: Wed, 29 Jan 2025 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738188353
