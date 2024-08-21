Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEBE2140EC
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724235954; cv=none; b=q61UU4KoWc9TiwFINkiMx87Z9j9Bvbga3e3N96RMLcM+qnFqhjdbhzScYm1Y94FhEIH1WgHUOzOWV/f/Vab8/ZrKv1wWliGMVmQTlSIdDvrMdFIGpNkymKjwCnS7ZJA66gvDkJUyqdroNKmh5ELmru3lMKLxYHfAztAzrbZIJ9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724235954; c=relaxed/simple;
	bh=6vafXWk3+OuRgOsuM3b/BsfSNa48/xY2QtVD0ZaA2DU=;
	h=To:Subject:From:Message-Id:Date; b=BTicegn+tD3OmjDAs+xfQjg41ZcejbRwhyK8fhBd6Wi9IQXja+LvyQC7wWN7nDbN4zvJXDTZJiXD+gKZna5HC+n1ukOnZJcRi0oSWTaJ7YIPxEdCzRdt8bGNtUiXsSYddqWt9QgTYCHD4dDmFxAAJUCVllPjtdjmJ6EbC7QSpIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CTVvEIIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CTVvEIIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8212C32782
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724235953;
	bh=6vafXWk3+OuRgOsuM3b/BsfSNa48/xY2QtVD0ZaA2DU=;
	h=To:Subject:From:Date:From;
	b=CTVvEIIUwGXwLY4wVxQDqO3i7t8c6Cdb93C5hIu2J+MIw3wlZFvaqAc/ICQVvj4hc
	 lvWgmcxCieMhcOZSOU5e3tNL8NENsW50pIw8XRmz9UCNPxMnUtfTc0qrmar804dcGx
	 jM6a39Uc5Qpj5wrZJhSPG9kUQmveMBH4BQdDgvajtuz+D/RWIYNcfxaqoAykvk5AKd
	 d6iswwD9XjH0DlEYu5F+GQIuEkAOMIIlDq6cbYSP49JEV7O0YDCtzA9iSBvhpqox7e
	 nSqfL6Q8AMssH3i5UujNAJU9BbLoXGh/E/d8WIjHbiAflPHBGHaJKoEgj+d78GsWza
	 g9DqMuFvx33OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D02C52D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172423595360.27595.16178758679109827242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b2801ea8fc9f66b458ebc2b6f1f1769ca0af22d1d447351ad8a00e7ef1e058e
Date: Wed, 21 Aug 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724235953
