Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439D525A63C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737183354; cv=none; b=h/VlLJxl8lEq32lB0561KjWw4wJjymq6CzLgdaq5yMT9J/7DsLh/QMOvPt5n8XyR9cZgX2aHrxx9FlFziFJkpAiTKtYEWeRL2oq9knqIU4P8stz3E7vh+8pcKqfPxcf/FNwYcZ00JUDE3I3nYf4OOAkPxCIdyw0iMi9wM0zK1E4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737183354; c=relaxed/simple;
	bh=xmO3Sn/rxDNecXzGXxpDgBjhQ6H1YVUdeb9VvLKCES4=;
	h=To:Subject:From:Message-Id:Date; b=p3kkMtxkzrgCW8K5xt2hYmC4LgkL4Zq4bR4D/9VBfuydYTyfFTrY/JybCurY2e0KbTCGrXm8Lnggz+va1qNpowIPmZr7+zqd/bewbzkVUFXVTIyC9HJmf1Vcak0g8P2gOcQcQ+c5x+axlOJXHMrRzKaWo7WQWdN1ategUVoZyMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxIfIbS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxIfIbS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A639AC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737183353;
	bh=xmO3Sn/rxDNecXzGXxpDgBjhQ6H1YVUdeb9VvLKCES4=;
	h=To:Subject:From:Date:From;
	b=GxIfIbS+mSlUkezVwNxm7oFKr/njrSqRZLiseDdq6tF71+0das5vfPcMb0HYjpsrM
	 q12l6qd9Nrak2UceRgkhfkc4OMcl1u4Tbq9xHCaryjhsM+GHLXCdTXL9AoQIEgn+iB
	 h7PO5cXInb9hQjyRQgM0p5QHLeBayE8LRkk6ZaKZ7pFV5qDymop5ndhodChBAvYqsc
	 +1VnV5QqxlE+tH8M88Zo9NiSSYpg7Af+iwugw8adEah2p3Ov8P4HxdVvlAKdURxC8G
	 mKemzam/TatpECJ1gqf4oUHVqxvSYwBkqyI/Rpmwol4Yar+/DbxT+j6MB5B1ktN9Yh
	 vYLhDvpLjulrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC22C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173718335358.10156.16995235967523268082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f896c31e53378390eb067c5c9bdabd2af2f7c4cc15367d5d4360fe87a34035b
Date: Sat, 18 Jan 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737183353
