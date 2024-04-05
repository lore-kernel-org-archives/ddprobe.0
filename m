Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2F116D309
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712327297; cv=none; b=RWkyw1oS7HSOhMtBsD2msq8IaVO4uxXUtLrkas3s+df5LzqSNJ10T9OCtjxn/T7gaYtpBuAouMWUXZeffJYpgDnxZfEUJU8EDDvH0hN3/4pX7RNbNFBAm4iMSQMelk9F3ZwyBje4v098kq3YhyAJOF1qz/2cirMfONwcD6dFC/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712327297; c=relaxed/simple;
	bh=oCJb5sjzESJSJq8sETW19Gv6agmYKjySi4dPgTfC/AE=;
	h=To:Subject:From:Message-Id:Date; b=MCRiEVcTQBKASU+u1+YpjQx8xhLPKJt8jeU5052PIl4oalbipBWr14O8kg3yXVQhn2YTYTrXxL/sfCeaHKhGWt6wJ+ZjKLKAnWwfRdYWAoUmrUd61N42iNU/heG6srPfQr3j+fKhkrDSlo5GAQeXAQIIitoiV12sxbD3rQAc4vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tj6wfkmE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tj6wfkmE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F273C433C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712327296;
	bh=oCJb5sjzESJSJq8sETW19Gv6agmYKjySi4dPgTfC/AE=;
	h=To:Subject:From:Date:From;
	b=Tj6wfkmElDWwI02jjUZBb6Ll1M9EQzWTupSZ3LSaFeA1fA0A6saia064u9i+Eme+R
	 eWswwUyNnHQL5x1qmrxtTCIcNzmOcik6OfwbDkcG6z553vZvAxmR5wN28Y80EhtcT9
	 CXchg0ChvfogDZK/kAIPrBcVkAmHMKY3pdxOLJWMCrsuUZXnMrd8OM/sty2VZpbbdl
	 0AJuOwWMzKy6xgRtrK7Tjp6Fjfxph2pi+OQB6UQIWTGvk3qCEzpHFKx1z0chlYzdjJ
	 r4w1TBwPhlvhgz5u26mzO0SIMxZvlcEIx1re0PpmtPM63mNTrmEPGZOARY3mhv6KLn
	 Yu5cyNoUxcKxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61172C67861
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171232729638.17707.9139528446323532042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f8a577062e51b7af7bc10203444044a5bb4ffc634f7266def4bf679b8496740
Date: Fri, 05 Apr 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712327296
