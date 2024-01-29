Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117A177626
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706538497; cv=none; b=K/4LsilZXchiRlSxW1AkHkRuqdy5N+D0wCAUST0LGWx8m10E6W6sXDkMgDJd+iOnF3xFVVLu2Ir1iJqahcniOetyn5/l5Yd9/e7e22/9mwlFVp/D5D9e657a1C+GHTzmngJWyJOO5H/5UTIqbcQV1lYxnNKKFVDVMyBpp/jKSVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706538497; c=relaxed/simple;
	bh=/OdTgx2uqxn/chXJO/g1Yoi/950d0ll9T3OtzSQSPmE=;
	h=To:Subject:From:Message-Id:Date; b=JxgEwnwOokBSDjzDrWwK9EmOrJVPZyGkY+JZACTGgdRvm+N9NHC5F0l1U9laEeviXdbLNS2dWrgy59gRAG4dEymihnuRPtbj2it68L2yz7LiPGTK8NB2LwVKueWrzd+GBP7TW67LonBqOrKnVgWpL29ToiEKgdqL/SYAhl8EWJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdaPEL9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdaPEL9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CDFAC43390
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706538496;
	bh=/OdTgx2uqxn/chXJO/g1Yoi/950d0ll9T3OtzSQSPmE=;
	h=To:Subject:From:Date:From;
	b=HdaPEL9XpV/gWytZYPVq7T//NO+3ALlBVAYOQgNGBjb8eRGL1rlmzOtcTRTFfUq5w
	 oJJpYrHRR0Poo491ftc6Bdx5Zcp0I8qAYmXGLYpWng6+Q8/GTx0nOMWJPd4+Vl5uXx
	 eEm94o0ieg4WeGYUz1A8nlwUNSw5W0gwfEXIz/qkTK8FVDveSBfnQuj53IaThTE/D1
	 iqzhcgBF0I7Hj2YzJMfptnfY3wkoP8LN/g9P1TqKHByNt8odjYJISa5hf5TKup8K/V
	 Z7En6S4YR/YfeMGy0Pbo+T+9QRPnkpHGO02S7pU2OoSRU4y4nca6nTQT7FBulTpHpS
	 JUWepOe8+sNug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62ADCC47422
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170653849639.22768.13476246725242495452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7ddc29da5eed079d0e5b29ef30b590f80cf904844c345eb6404c1b943a5fdd6
Date: Mon, 29 Jan 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706538496
