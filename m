Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAAF2D193C
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762352394; cv=none; b=ra6FAlyYXzVoLceNraOLlrkIyxS1K3MTkhgvYcF1Y+CVz6ARk1kV7gPEBlEv2jFYK3v0kzjqLuB9uxR1OsGXaXUzFXxHVmvhpXggBjdw1N4DlUwMrC1IKeZd3QtMuQ16rZbq4CGOm3dl8BqbQm9iQgJZ7y3KEu9Y55ZPKgC09UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762352394; c=relaxed/simple;
	bh=823u4lkqOIpPKaWUebs80xXdkXejOP7VirGavzI424Y=;
	h=To:Subject:From:Message-Id:Date; b=jTqdAu4H3r2kh3KUsKWneTTO7V4gEWyN3VscVpHZzY4+tlpwhe8dLwhibseY52A1lpbl057JRhG6uGeAMfKN4H0mDEBwpMujW5emz2sRmn+YRy6I7aG9g3Y6ic/hsS6Vc5zNXbUBRLN/xqk/Kr4Vx96BQU0gnWKPBQID/kcy5wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KsqFR8MX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KsqFR8MX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F8AC4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762352393;
	bh=823u4lkqOIpPKaWUebs80xXdkXejOP7VirGavzI424Y=;
	h=To:Subject:From:Date:From;
	b=KsqFR8MXl+dpfErSAl4Tmu3wrEFykYNWmEsO/iPNIZCpJGNFlOOl3dAaq2ZOt/gOv
	 Eci0IFAftRUWe+zr8I6I9L8FRjIU+5S4aUjg6UmVoFJiqIz6Ic3EUzQ7SfDa7macwr
	 NIEtP69Y78SknM1Ma8yGN76AIbIUZ5c2+2lePc0V4h+PAVEszEN6PIDE3JvxF+RHQZ
	 iAvwLD9EiXbr5bbOHnTcOKT83cHIuEBdp735UVrYUpJTYzBFxa9xEKMZVvGja0jK+F
	 Oti5XBR4RiXF6LEwmuXV+WW+r7D2zJBYi3EovPl4OkMdC9VzVMl/C89eh3RI8cGrv5
	 eI5wt2VJ/K2HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EBDCCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176235239358.28751.11431567358591691309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99515d8a1dec651ca389a4c18f7b49c648a0ecbbf7d08129108acd22a2ce9fac
Date: Wed, 05 Nov 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762352393
