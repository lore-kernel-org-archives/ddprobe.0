Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1216F21D5AA
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 20:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763844114; cv=none; b=MuwBP4f0ZpquGajaMShZpYongJM025tgxND0say8jScGiWI5nxu3TGOgKqXPf2Le9XyjIdNCFikVA6dVnhuws0NOVS1clB4t/3Soed9teHt7twYkB1/g70jw4cT0QJb2MaIurSfIe1okm4KzW8yPkqtsJOHXP25zCjg8iKfrdTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763844114; c=relaxed/simple;
	bh=aCPB/5vtlHhHyco+38pbk94bk1htv+ODVbi0R5YhQRc=;
	h=To:Subject:From:Message-Id:Date; b=C/thyJfIE/kwNg7ncRsuPLMO7Z+GogfWaYnxFosbPhxCCp3Q7k6LEt47cXlluBA7HhMNj1toxEgescPI0cI1IPowPw++Q4BiEkiE9730wUsszOBulxB0skN53VTg071brvT7n8ytnDpczyGnEN4flLn6tha/+b48jYmORalF2RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRwpeiI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRwpeiI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CDBC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 20:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763844113;
	bh=aCPB/5vtlHhHyco+38pbk94bk1htv+ODVbi0R5YhQRc=;
	h=To:Subject:From:Date:From;
	b=GRwpeiI1bBVCPkXzs2zn8VJWabVxRaV30DvU8wYJB5zh7EJMwGRnFXcWcORrTwLrd
	 T87Kv/SCj+SJYOKrcrVXdZgXxTpa4PGFex3J19YiY29Oh4uL5NFNhUullXLIUVxmn0
	 l7JSxAavu+9EgMdWOFvJtrspX1Gw4pkrRlQIK7qsKC+9kasVFvywvqTqKDJ2KlD+Up
	 aBmZh/8+/852XL5XBDB410/WQT75G16GIk2kqk5bhaYdFiltL69Wo+1wf0IbJ4CY2s
	 xYgNQDKjd8fHzBSL45spq/DfC12AQnpxtNgA/dQ4uwYDdmQsZOs6i2T/OAS1sKrfd3
	 E4I+1Xp1/0Wig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A62CFD2EF
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 20:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176384411358.27423.1403445768299550077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7eb26b26bb8a621b12bbdd0aa93c545abd0bfd3bb71e05c35b2875c7b184b80
Date: Sat, 22 Nov 2025 20:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763844113
