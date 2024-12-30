Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D101C32
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735567554; cv=none; b=VdYi/FI6wo/SRp+vWpL8ipWwLFHv7DtBkyNvUxwwUyBAnrPAUmTmgHZ/kFXycM7kZiHYDe/1egKkjoFUGNvWpTcHdcyXj73iFtGIa3IhwFQ25KocYM+cNqO9RsjnwGmyYf5l4xq2V+JDHq2LZouFX9+e0zsJgFap9x9HkDnqRGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735567554; c=relaxed/simple;
	bh=wBkuT0NF8JH77YY00TYyb4t/+g3qHLuKTJPQkjFEqXg=;
	h=To:Subject:From:Message-Id:Date; b=RsJy6Qjrs3U5hrOre3hoWCyZAkU+WjW32En+b+8H3fr5WZz8ferkziC8wWFFyJ7RHEUfGW9e1PayJiuhUVtzMcHvZYVxhrvWK1tgGAiarpz2WI+cx/4tY1x+mhVtQXnovehWqt1rckUZS4MyLLLDYA20B39GuwKQTYS/3pgYwSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+xy8SDV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+xy8SDV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4326C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735567553;
	bh=wBkuT0NF8JH77YY00TYyb4t/+g3qHLuKTJPQkjFEqXg=;
	h=To:Subject:From:Date:From;
	b=U+xy8SDV6shuQdWrfIXBZZwfuxfekzl70NHnzqFfxsMei+3P+zyqRHinuKlPYO6B7
	 akwNA8pkKbW0d2Lb90rBj9Y73tXukNXu9KDkR950bW/vfH+GN5R1annoRFvMCFX0+3
	 OUF/+PZCEu8OEnFTte9119tgEEeu40P4WhHXr2/3fbh5ljQ1oQu+u3uKwrJJ8uZY8y
	 Jit/JPFncwjdXdN5CrhgdVWKH6MemWI16QaEXoTLktgo3hucHR43VhtqJHoyXLd/s4
	 aupwrhwlVX9AJP0XiI03hmMZ/ac2n9nMl1Q1AUs2/RyoqneaJFdstRJDLNmdgG9fIO
	 E+7C9jhCJZ78Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F40EE77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173556755364.19828.16545975719251127547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 482202c98bac29298c35158448d1dbe9892cc4419bc7b61d6e2579d41400fda9
Date: Mon, 30 Dec 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735567553
