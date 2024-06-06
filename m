Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F087446DB
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 19:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717702043; cv=none; b=daAS6yuXPDZpCJJJyM2/x0ogVvlnCKat2j1EWTX9BqM/+EgTnb9/YbiIu9ri0leYceiJx0Kp1rvMFo43UnvcP58a73TFuu5n9JpzpsHIaYsq3eR03+i0zpAXIiTuekKj/MgT6tLVk0hH3EcXBY9UwYJf6tt0r6jLvwy9ngzqunw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717702043; c=relaxed/simple;
	bh=V6d2L/JWZDT/BUPg8O5tIiUDArPMdFMb0XYtDE11ano=;
	h=To:Subject:From:Message-Id:Date; b=PtlWormOzQsuAx+OuPG1G6SK47K49gS4cNmhrQTdTrqmD1eURtMPVqutM4wXwkr/1flkJR0tPD0of/WzrEMT7M/VMplIg22YeuXCz/0FhtfY0rjNlCjE8jHCj8IlsUWE3jepRiwhDxzQbMdiupxu5Z3Z8rHPLubw5CB8CyeC5J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pw2kZrRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pw2kZrRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E49C2C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 19:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717702042;
	bh=V6d2L/JWZDT/BUPg8O5tIiUDArPMdFMb0XYtDE11ano=;
	h=To:Subject:From:Date:From;
	b=pw2kZrRyxHlzfexdleW/GJGOfWHVP7duWyQCavGFs8ZOM9X7cFCybRn4Z92Cd8HQf
	 kPIto7XAvqyWD38LVx8ifdwvFLTY02TNAyVjJaX3mWQcjI2x5iJ9rsrAfb/JZWIaa7
	 E/szwjKHMJgs0pucm8/lZ4YoEprvVtFsaHCSlM/2XTNsU4RVgZxEYK6HKEHTuDqeRY
	 PoWNnJe/9L5B/JlFEZ/ZXSElN/UR9PsA8yPi5JwLm1j6PI7pP/sqDwPt7LcIrcTS0m
	 4FywYg3TYoYZN/p1bStU03JxNK9BD9wuA20nCnfFs6wEk34p0d2pFUblpgDzT6ppcM
	 EI24Y1cWaWuaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0A21C27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 19:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171770204284.10184.7910295165594328965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3ef848ff810f78428a8e66d3100824d2fc7c00f419723c89d09ce8a0017a309
Date: Thu, 06 Jun 2024 19:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717702042
