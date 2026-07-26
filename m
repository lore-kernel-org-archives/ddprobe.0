Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593884908B8
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785027634; cv=none; b=FznEfduEloh6E2Ruevw3FNOvONJj3gK814BQ3zxr6Lz1f1hYuntIEgcCQeLDWGyiC+i8p5QEmVnEva1OzR9Ryo61hb+PAWMj2A49gzsWr75lI3yQCUg5PrOG6ZLjFTGCe+wyggeFtexOEa03ppkzyrJOuIGT1FoSsHB/LCwn0D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785027634; c=relaxed/simple;
	bh=37lb3brQQruN6rLLjOWwipagJuy3YAtRzMS3+AExR5w=;
	h=To:Subject:From:Message-Id:Date; b=Flw0Eze6Hw2dKFxJLnvA2+TvH3ZC5JqHW/Rrb/jjxgD4GiuQNP8ZlUxAMMKRNXlHvsJTgGfCzII1td7AglAT8kBcdbRkA44fyl+zb6ftEQcCGk8XwnoKpaay3XNpy3SMnvgkSuA0p48uUNH6K1hA0FgKKFULgQVdHDmgJCcNc58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xdivsjmq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xdivsjmq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB0D1C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785027633;
	bh=37lb3brQQruN6rLLjOWwipagJuy3YAtRzMS3+AExR5w=;
	h=To:Subject:From:Date:From;
	b=XdivsjmqrdpSVDCsz3FeWpzcIKXw9tCmUIvtc/ndfKh+lZ55H8oQMu01FJ74aVxfp
	 u98OhxfPu3kBmGFVPGZl8dEJtuGvFSDArXiO58CZBRlOynNU4+pCZy4ZhowQQjTrv0
	 vt1Df3r/hqyqW4UcswlbnAJ5cwzb7MPrV1RRRjmhZVofPLca5y95i0U0q3ERzuuq3p
	 nu8BMn9MeWxLFLeGy5VY9NIfAy0yOk3nS7h/jq51SZA/lOH5DQ+rwcYhTr1wt7w/aw
	 mBLmE/38bgVeDC7emL0BfY9f5Qpfs9GB7tOIe8SrJ2mNbFN4HLTBzkCmOWdltOq9a/
	 +d6A1t5iFT3Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EC7C531D0
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178502763370.25660.7571573162116592867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fe83ad7d4d98a7eb661926a5aa06e7439b154432fedf8efd733ff6d6abe4f1a
Date: Sun, 26 Jul 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785027633
