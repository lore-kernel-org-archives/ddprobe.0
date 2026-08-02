Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A2528686
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785634834; cv=none; b=YpeZ+q5fj32grrDxcnCL3pdwo0XSvHmRx/HY7JLJaPZ75jlQXgFZETaOJC8axKB92EmEk1Cahd2X1AuQxqUvXHtXscE/dvgBvutGTrvs629j0Flkk4zrJuEuHHzFLhFq5zN6wpQDsdDi0qxigZ/W08cjuQXVqpmxpBmC+IPCCZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785634834; c=relaxed/simple;
	bh=84xPfpOzm69lMnVuRemSJxGHzuftyM7g9lf1IynkMXk=;
	h=To:Subject:From:Message-Id:Date; b=JABSaAhe34jwF9SOmapQ0CxWL9J3cju/+8QgS4kvisPd2MGwqzd0Y7GGgp7bmpwVsFJmwjdymdMEsl5CPgseh8AXzZfri05DP8mziyvdueiE6eIoSBHt0NCvco4D8jsqXxszJ0q9xOkcCZzaVQ+xjRTsSJ4lcw74ygxt0wpGFr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCI9Sx04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCI9Sx04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC651C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785634833;
	bh=84xPfpOzm69lMnVuRemSJxGHzuftyM7g9lf1IynkMXk=;
	h=To:Subject:From:Date:From;
	b=FCI9Sx04olGQ7VRfI6GFVfGoVQKqMh48D1NMbEei4EAs1lh2n7WjWgNuhMfZeezIi
	 +LcbB5MtNPKX681B1jgJVyub/V788JlGvs+d9uPlKNFdIjyxZqe+2q30nr5IpRpzRq
	 B2HrpyoK9rX+69YihBrT0terjnh4+8UvJKtXRZ9dCqtFWgorRaBxN7Km4qh4Mj21Qd
	 EcSjdMImxR+RFAz2CB1xbzicHniTEOqZjHQMdIMGkXhL/CklnUnHE+sGWWQ2W09Ke6
	 LYa7p2URSZllLPmqaa9u5CnAgynq9mplUmJji/848oWZXZczSF/Tkg+cjs4NP+Kr19
	 wqzItzrx34Jew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9269C55172
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178563483368.31299.16103561238743906138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b166458a4732a8b086762bd4a39a9de6326902ae454896889bed26410c27111e
Date: Sun, 02 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785634833
