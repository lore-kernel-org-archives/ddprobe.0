Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B1F1754B
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 19:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712863163; cv=none; b=WF/PLFo8UuOmX+cfIfVyKhRuZu4JP0RKDQUBYRuH4g9vIJEOZGTxGzTR2M7JuRi6gXNtBVyfd9ISbf0fJFrvLceQRC1fqk/i643lNnAxifpLYFXdAlqUXd4YEKpBmPlyz/N7kIkTjpLx4lk31WSd6oXSTwbNY7ClKlr596e/tjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712863163; c=relaxed/simple;
	bh=vO60A/kl/vMRu9wkQI8VBuzmXtquwYWhZWNanlLvSy8=;
	h=To:Subject:From:Message-Id:Date; b=VxgEnc2FvKn6dnR5aKJrBnmDjTyQJbZtFsE0DAhnI49o4HhaUWDi/UmmGqbwqKbIDQTEQ7TaM07occUvDOjIJS9z5Smy3HjmnJwmaF2u/tkStesF7vKYh1t5dkpKWi2zC+Ytgg1TB2COAVxfKG3ZyqFxa3Kenxpa7y5Y+UqOW9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bppWzwKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bppWzwKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8FBCC072AA
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 19:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712863162;
	bh=vO60A/kl/vMRu9wkQI8VBuzmXtquwYWhZWNanlLvSy8=;
	h=To:Subject:From:Date:From;
	b=bppWzwKsilL/BFYHLpoB9pdXLd454/llDBgd3A6QZnh7V2FqcEniKQCHqbLpFcvnX
	 gqS3jkb73JI5VkA/ZHGYe3nlyjEIdvx9+XyJAnd49cePnF9CEyoGzwlxaPXeZ70RYy
	 qZoHb7aayzDsEEbd9kNPg9zwHnuI2Ojh3EmPYMsVUkRYEy+DgOPMiDGBe122fEhLHr
	 Tfm9ikjzON+qg2Vk5gq7iw/N+FSvzF49O1CjuIYfVD1PQCiOyrUx2LUihcySkXNARL
	 m7ktq1muWfhRlzHFRzzLgnUD2T4UhCXx0t8dyG/vz5jV5rTd62NDg85mg2i7KuoBe1
	 UTOFrg7zEqcbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE1D2C4345F
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 19:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171286316282.5447.10336403933296419466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdd19c64dad72d3539eb3803cb000ef5f16b2d2becb655b1eb4e057f11d6d0e5
Date: Thu, 11 Apr 2024 19:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712863162
