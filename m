Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED2C33DED9
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 11:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780917874; cv=none; b=oyvU4H8rGoWD8YlmAZ/e56XQ/OXIQLXF6l/tOU9VKAZ1YRv96uLvuiJCZn274MRX6QyOeK04ISF+9ftPhpQEO2TQUo0NrC8BauwfR+rD+8eFlSa9lkbjzY2yaMsVT+c3fFiYZgNkRa4PSST5GTYCJfRUkw1zot2Y6zrZI6kw3sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780917874; c=relaxed/simple;
	bh=C9RIU5uhtyULOEqsxGSK3bWKnWMHR3ubHw0ZrA+iJSw=;
	h=To:Subject:From:Message-Id:Date; b=WRB6DGqXDrNlkbEEo6l1bbSBjBYLlPBEGQUBnBv1cena2nxuGxGHpxkJtwyvc7poRSfXl2QOA50cbcji2jXqQCiCn0AJp2Hp1frMymiNkdStKpW9fCKJhtPGsBYtSL/pf1NkT/i0qhO3caWMbKgDNIm1B0H+SGqCL8tho60evew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wy3hyMeJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wy3hyMeJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C380AC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 11:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780917873;
	bh=C9RIU5uhtyULOEqsxGSK3bWKnWMHR3ubHw0ZrA+iJSw=;
	h=To:Subject:From:Date:From;
	b=Wy3hyMeJBgZIMxTW4XoBT9ygE8JXzDo839Tipu2Zzn3A2iJhSSkY5MSrdMRPYJLZi
	 MEGyqjxoArNfhNDcO7VQ+fDM4uWTZIMvqd6dtUGgrWG1GygRZPZGmUSj+KKljjR2ab
	 0ubKodWdUIeqGuaGfabJ69VpHDQQjMrro/C4Avb3Be3rxnoCsWt8rLvpfdS1Mt/Xcz
	 xMXTTrFXuiNPfZxtW9UXv7f+IKY54D4tnz9IiyiV1SvIulqfv9L24I6Ug8ro/fQ2j5
	 1TAReh7yQcKsAOO9tuN06QOZ2KdefpABTHy4jsYtXo0W7W227rFZVNiYvFCTNb5SUe
	 8urXlvN+zZbXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D8DCD8C9F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 11:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178091787368.21790.1962808326796908979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f6cbf910ae14c7abb684eea1a22c3e426094d24a77cb0b2fdf77b26c2a76784
Date: Mon, 08 Jun 2026 11:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780917873
