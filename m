Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A95A1FC8
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754465995; cv=none; b=MZPWZ9qIWnd5whWL2GP/dfZ/mpZhsNeL7RyRl32RYVeOJ5n/alNgfApey1hGwfW8acjLk3ancBqG3iG3r9cozFS4wsioTXXfmeBd54DxOjrUiDBJeT/fWDE4THJBC31ZLRnePewfdOc6W2gd7DfwhbRQJKs5UOBfszrOlssJEJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754465995; c=relaxed/simple;
	bh=OvxNW8VvPBuCKNIYJkkUweeq3O2C3V5Ecea91gwYePw=;
	h=To:Subject:From:Message-Id:Date; b=KlaOTQYdiruuBUmDMaeRcTMBTjCXTgZ8UH74m75GqUGj8CNyiBPBYsrwJZFjfnTUlPBKCaYeoigbtUf13s5OfQ5YzlsFASYxp5vSAYAHCr2UIxrKNgUvvHEmJ1W/e1CyVswWGiIIkYefYqRgUolWAyrHhnFMP7g0lFD/eC5y4kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rb2/C0Oe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rb2/C0Oe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BBFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754465993;
	bh=OvxNW8VvPBuCKNIYJkkUweeq3O2C3V5Ecea91gwYePw=;
	h=To:Subject:From:Date:From;
	b=rb2/C0OewRcjrpGua3wpXq37KDm+Zq5Y+myYNx9WibyFx+1uf9lSMX7Zzt510cTd1
	 Y1jGn19B7hkIXT5VZYBQMpIqpBMS296YWBIlo8tCq4m/FjNDwIy6SOcHcI3sOs+Wrf
	 Pjla+fP74OK/V9Z4msel4QJQJfT15DtudkCkckUkFGQwmOidh+yHe9bIX0RwK/V9+X
	 93gSNVsTu+rchWjb3sdqeQzEui9xZRVip5Io/Ca+cggEzbsWixHvKHUWD4ELnZNM+8
	 PpTdtUHT9DBeaAeT/2X/De//FKGy0+tRE2DN1jQjbgGyW9Y7X9YuKj3CuCC8hFvzIo
	 /Tq2pQxcChCJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB60C87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175446599357.9417.2077603133075828156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c5e8756c4fdbe1875c4e1cfc537b1c399a6cb353a82f5f4e116a1f7ec4f441b
Date: Wed, 06 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754465993
