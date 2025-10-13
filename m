Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8CB2D3EC0
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760380794; cv=none; b=f2APTjQQTJi9BzR1wDO3YXhtLwBOcsXIjCNpEwYpvyE4zkKT/sHidzxKxx0AlSdvhBIWm0shXG+MkNoCqrn4AOIU4JN24LOABsWDmW3Hd/dTNolPLC6iez2ZCnuTFHsQfKlkxmG+QzvCdKrvIVDuCgSBEcUbHTuOjeNRKmeLU/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760380794; c=relaxed/simple;
	bh=5+9DIdbMBaK+CisSuM45p89zUku64Er5/k7Q1+C3jbA=;
	h=To:Subject:From:Message-Id:Date; b=NP/3pxs/8FDfYSFwKJ/vtuBuGKkb1r8t7eNBcxRHiQjjgFw0pyuynuRu0ADUK280k1sYqLjZ+IunJqKZE5JUM9XMHlxNMyJGIg1SDPT2CXncxTPElxHjLRr/WvAVcN5mhNxLimQee742SJ20V6kWZSCaSHODrB8NAc/jfvX/mJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPfvsQpr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPfvsQpr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C8DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760380793;
	bh=5+9DIdbMBaK+CisSuM45p89zUku64Er5/k7Q1+C3jbA=;
	h=To:Subject:From:Date:From;
	b=vPfvsQprhRqL24+1XBtaQ6uCQVEPJbolTQ0ipchgE20teMt/bR/yHndzb00vmFlCW
	 kdTSBTrKyZn1JNvyRed3wxTGmEnTiFy2/mfo/V2tzSGsgpM/iMOpfXEkiReLmerACZ
	 fix2t8wrdqWwAshnqg5zFDmRRnVJxxKLk/E7URHyUsctS4fhME1kPYln6MUVsqVPO6
	 kZHiZgMfVq9vdLHyQOVyEoc9kAaTbbnXDiPYAvCYKIIp6TImnRr8D23pAJ1+uVxCW2
	 9wByb1ylEwE/RntCdZIh+ODkb+xX4Sm6rTQgk1+kmYkWGR81m/CzssffdwfTjUlJwH
	 gR5GMm90ThY1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901ABCCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176038079358.18519.2779480947612644796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac3822b1d10af83107250583f3310c611632062f2d01e965b2f14c42f55dccb3
Date: Mon, 13 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760380793
