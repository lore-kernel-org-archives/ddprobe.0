Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F72C1C233E
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728927354; cv=none; b=NWGoT5bfEYTHZwn6f57k3yyc2Pzpyo3fBbEGwQoPT2hilJ7JOv1cqv5ZSZUtBfwHuFsbF8x3vO0LcbKm5lFXK6gvDqBg2lQVutnF0t2mcVmOD9fyXbByoVxH+yzF3D5LejtrL35axGxF7po5WP1hr/4ny1y6qlPbcng4VA3e8Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728927354; c=relaxed/simple;
	bh=3j6PzjKMVcABbGwK27u5fWABdzsEje4HEHqojmRWH7A=;
	h=To:Subject:From:Message-Id:Date; b=GpaWptmFmBKwZa8xwT2UBNVUNjbjJlCkVwTlpyKu1mutKq8oxuDlDyJkm6CzXMvK5wvle6SGHsktiLG6fYudKfi8tPSSI7nZcZnbpSuor/SazCxvIvJONXd57yTHj9OCbfM8hT8IornRxBqozWTpNz27htdYWOeyKp8tXdHyLxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nopUTteN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nopUTteN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8E3C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728927353;
	bh=3j6PzjKMVcABbGwK27u5fWABdzsEje4HEHqojmRWH7A=;
	h=To:Subject:From:Date:From;
	b=nopUTteNPR9/6AHGnHjFnR30FE8OXO6sQ8zzzFJRY86kmZbGM2uRtqd++7rBjXpWC
	 FbFnBh71Tjruesyi+pBUM6A1exoYLG0zvjHyswpY0LN6W98gte7IKYbOuBOfrgFKaY
	 Pb7wlV3GPo/PTtAmzK+7fDVXuaEJ8authtwOBt4Mf1+wMjiWdvyU1Jhz9CcIql212H
	 UfOpk/OpZk1Rm/8+SE5Et/MczeEsaltLGAVxJH92fIH8tUtWStT7z9a8oQqRkAbsbQ
	 ZsLs2K84bFdAu2AAOu7N3mBdUfbYboLuOFGrhuxLhjMGsKQqGIB8SXLrnAd0nqlXCR
	 mG2qcFPN8NPtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DE2D18138
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172892735360.25407.5796798595850652563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d42b6286414a507fcda7376711abc9ba3d63e6353b2bf921a940b79389fa066
Date: Mon, 14 Oct 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728927353
