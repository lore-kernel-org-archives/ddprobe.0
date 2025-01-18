Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7892913
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737161754; cv=none; b=sOq+zIVpBE4IG5I/3w85lJ0E34itcr5jZyBa4NjVWW5S5GyCC4ffxPQB+F4GVzUXNGuW8d/o68BlReoCAuZuNHg+uL+b1RnkBUeS11ckUr32s5M4H6QSyiYVrnUFmk94EVeBuKiA+l7hEc0PqEluC6jNUzTVD2PQjaiiXfFkuhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737161754; c=relaxed/simple;
	bh=KdIhAst5hdW/UgclYVixWNdvgsKRIKV0+jRv5yO4als=;
	h=To:Subject:From:Message-Id:Date; b=oteG90HpiWsDRvjrRD8u6XEX0kHtMN7U8NWgScxBstEkZyjTFkJfqYlzZBkKHBP2KKOpDqaAgg/Ql08un2WJ1vF+Urtp8qB5jxfPVabb9jROg2MTS796wRAmAuYT3KcxHXzWvci/f+9DRyUlxTGXa7QZIDCaK8h55mhU+X8y5vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgBhfv6H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgBhfv6H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6104C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737161753;
	bh=KdIhAst5hdW/UgclYVixWNdvgsKRIKV0+jRv5yO4als=;
	h=To:Subject:From:Date:From;
	b=fgBhfv6H6RGQDTAsRnvlcS/eUv6VvPawfdqNu3eg+oOblA0zxGv9pDPhRcpi6qPBR
	 AsgOIiXcbxnBSaaqsS4dARxXXHZKb4bs5vKONB/iVRmlRCX5P7c+n9JeY6hVI9vXvT
	 pDcDxsw32g8SwM8JRVz9FM9bSjGrqZIPe41GpWZEt/vw14F40TGcb/ytzpjGox66Pn
	 LXKazfhMDAgfObuy+kSs6FQNHPmUWlLPoe/ymb1VdARIuzJDXJlb4+l8u7FcpYlbHr
	 q9xku6JZxkK1n7tvIGX+LqAvRCsWIsDHQl2ZRYSNigQ8IcVqW0tGJk6+sSLGGaLtwn
	 Am57Jw23t2wyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F1FC02183
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173716175359.30824.11520871986235221714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae634d45f9f6fe3d4b9346e0925ad3a901c231966f7e6a8e65ea4d1a1ce920e2
Date: Sat, 18 Jan 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737161753
