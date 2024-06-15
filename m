Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 614CE1E534
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 18:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718475503; cv=none; b=oBaja4hJEteSIyJWM2CAJM2w3GcpQge0dsgKrgBC6c6GzKJCStbJM55r50VfzKAum3mS/yxPkdzyCCBcN9LjMp0gwGvEkMzgHtl6G6Ry3z/GgqFQY745jqIx4iEg8M0T7AutwHDWDH/ThLuilZU2mqRHdPejluP6t1AFKaVbblE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718475503; c=relaxed/simple;
	bh=sC/phg/NR+XyPp0LqO1kTS/qEi7qtJ/lY7+doXtkIE4=;
	h=To:Subject:From:Message-Id:Date; b=l00CvdfvYEbrRy8KTUn7XRSpyZSoVGrKgiPb9u37O/PvYu2lyCE5n4nvTEDwLqkUyppMeY6pz6jfvu7dXQ9JxCRlo/VVTrjzXL6EgZeUdbJYntCBxdB/K7Bdr8M6h7QXGp+XfKiruLi9TOTX83n0bVYPFklYIjzBVS6GjKWBHp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoxPiT/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoxPiT/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E799DC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 18:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718475502;
	bh=sC/phg/NR+XyPp0LqO1kTS/qEi7qtJ/lY7+doXtkIE4=;
	h=To:Subject:From:Date:From;
	b=AoxPiT/Wl7kvNgTWhl6q3UW44/uAeQJGsfV3nX1RINBDMcN5rfAIgES14ZCX3/Axi
	 f248nSQKXNY98GZjkDiEIMcPoTyYul5I273PNr0I7Ma/8VwK30Erwad/kk8JLUNLOz
	 k7vqPTSAyCgCUpHCEVRgue6yozqV//o+LAjBHCRmGl1ixO1kfV/+2Qn2adZ/poVI9a
	 6asjkn4RhehvoWWVv65DuAJNcOWH7y/3lrH6csyCIw51e+cal1Inm7H6nutIM+KT43
	 2rEbv/+XbO1XwXWMe2tYkjYexiSwH/3OgtqqlrVb5BEwtTP62WjARy1cXhTYCitYia
	 qxICdwYXX4Iyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE475C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 18:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171847550280.19806.1318714944618034986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de6d7d08a6dec33d0b8736045b5f77612115889c0571c978bbcbab329a39baf8
Date: Sat, 15 Jun 2024 18:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718475502
