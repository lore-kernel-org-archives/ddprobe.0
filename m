Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222683A0E97
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776714454; cv=none; b=NcvDqgPe8NHPqLcrtXqVEY3geM/aHBfiJZagEX6vSjxE23IUOT9u43yRYWBQ+y+W3PPiT4JnUtITqNNWQp/QXxoHcSECb7evWhM9hBodyNn/0kSSk1ExEF0VmEyZDFFFOuEMr6bu9fMvZW5lSmF7U39QVR41zoLonJ3KMAamgF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776714454; c=relaxed/simple;
	bh=/PRMnqjObZy44bF6pzOiXSycqt4MdVfC++rLnkBwf4o=;
	h=To:Subject:From:Message-Id:Date; b=UZY0iiRaas1gDfQLXEyHG0VYLITurk9qoRUvRfY16GKNRKVpbvS6PYeu2h270WECU5ntIYKXOJ5wdYegHHSpLXdatC1JuUO4izylMEq1wXYp/YtsrtFT8pLntUqKH6KB2JKbaRyBr0PjQXZoGRIRgf6iB6RkVtcNzKS3Bl1iMH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqR4OeBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqR4OeBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE5F6C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776714453;
	bh=/PRMnqjObZy44bF6pzOiXSycqt4MdVfC++rLnkBwf4o=;
	h=To:Subject:From:Date:From;
	b=UqR4OeBf6iGV4JpKnTbJVvVwp3aqkoe3J2MX/Kb+Mnx8UHhcMPplzKUz6dpSayQKY
	 Y3dS8tZtW3+5Qp1op8pNOZwl0G23LeNWsA4T1PGWscR7QcbcgMjpad0TW53LQU6vv+
	 34POFpllj95YltvWt10KFqKoie307KKa7L8hCL3BTgz92oW2ea49Tkvl0mFW3Mr3F+
	 SjIIrvz/lGret6HlMyXVd1xAmfkLg1kA2VJEhDd4OwmvwiKPeLsJu1r2iXUvUZSFUo
	 ARtMy/jOS475dyLgonmSaQdkJ8lpBYeOXWE+LvndydY+zsPxjV73BZC8KVD7svdLET
	 Gir8zA4XvdisQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9DCF5A8B6
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177671445368.25283.16949566011787278105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c46504634ad629967c7e9fc25b350800429e15d66c9dba67e237ece316c96a10
Date: Mon, 20 Apr 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776714453
