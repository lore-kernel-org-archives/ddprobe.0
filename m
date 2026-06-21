Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B41F2FE0F
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 04:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782015394; cv=none; b=mFZyBPr7WjiMU7zcSc5eVWSNb07NGfIylDKmMJOehQuBCm0OLC38B6zQMgZ5p6MR5reySC1B3McdLSyT2CQg/zqmUOVFzAyS0z1yVEXTdwprvTJrkL1P2KFYOo611deihUMSnAKttC/17fE39YZZWiBPbwKji7A0QqHnH4kLymI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782015394; c=relaxed/simple;
	bh=m+67jLBzAcTl+gLeeiTt2RHXkcOqzIh3qjJve7Oz59s=;
	h=To:Subject:From:Message-Id:Date; b=RzNnE0UHRpYyMPsO5eDNzzdYSBQgEMeKLstIWxVX3UQOJBjaxTiXv2J6TadafDaCb2pxc0yb2yVkMAed81qso8Y/qQfqMfcq9Koj2b9lQqznUQkPEuGz67Up+9RM1WXiMb59s22y/almjTZYOjsOFMT69bHFVBHd2Ns1FlHHVuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZBqB0Je; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZBqB0Je"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 10CA8C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 04:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782015394;
	bh=m+67jLBzAcTl+gLeeiTt2RHXkcOqzIh3qjJve7Oz59s=;
	h=To:Subject:From:Date:From;
	b=EZBqB0JeZdcU2SKmq6UUitev5vB2mdsqIk0e6sXGBbnaO61iwg6zv8LhxZ5gobI73
	 u24zZjzqVIFz66HF6W/etQe/hgyFKhd7VdptRBg8cgzzGBYAtU2trWI5CV0MkOuupi
	 UUj3/FmxfhaeTprNbkWldfi3+GaX9qzlIR6lgQH+TISAGd6bf9SXJhDRr4GvpveQcj
	 Ue9YwsgSq8+JWWN7Gm8URYTZH4wWF4Vnfy55SgVeji1b33rhi1R2riSTm0h2ycLgb7
	 4HXtEFxtcXD0vn8ngBZRKXDjkLOHRSP7Sr67yr/zmjGCBi05iQ01esFgPdi9kerdw5
	 ba49bU+JoQOJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE1E6CDB472
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 04:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178201539387.27700.4211487455986498986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb1e5c4f945d867a10c4680109b4b3a4761ed9349b2a3d86e9cd7bff21a71c2
Date: Sun, 21 Jun 2026 04:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782015393
