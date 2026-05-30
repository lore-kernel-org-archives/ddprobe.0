Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54629227EA4
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 12:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780143814; cv=none; b=LrJTufA0wNF/woaXFFEc4jenh/fdZyx0YIGNgOUWgoYG4AmfcgDP25okcxk+vrkf4RVO+qnyY+dpEyamWq4limJVSfLUFhy0eH6O2qolvC3nSbyBjiGXZ43t9ZgT/NfhZUEQYSNW/IG5sxaz64/+fsTqQlOFATlL2Oso2jLoEzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780143814; c=relaxed/simple;
	bh=vO3UU0CQH4TsPuG7/30kOFd4iQppypd7yQ7wR5jwTzQ=;
	h=To:Subject:From:Message-Id:Date; b=dSf3gqvjVGg26txEDlnk/SiRxmkSO8M8pDZKVkTILcCxdLw9tDE3O9knj2wZ75H7K4AB8gXEPO++rrMmzDp2MOWvCnprHSx+KB62zwAZKCXlYwI9mhrmz7I3oNdfV110wsilm0dzN4WMv+FdOzJ2bzHVXBZwqZy4QO0aBkwjEJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFYbTcog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFYbTcog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA378C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 12:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780143813;
	bh=vO3UU0CQH4TsPuG7/30kOFd4iQppypd7yQ7wR5jwTzQ=;
	h=To:Subject:From:Date:From;
	b=eFYbTcogA1BaLA5WsEgbGjXm9bdJgc2VsJeFUGTXNJEOZTNHvluvnJb4xCqeA4rGQ
	 XEvkNc0hZLEjrJT83y0Nt+yyKGUBKqiQk/gt40hBgUR3Ks7EljQuWVOPNtLCoi3ARB
	 85jHTYd4HTy1is7S1sCL3eIiWfCamIY61JAzji/hXledeAqAcE7nLtmysohW8bf/RB
	 zkq7EvCY3CAMphPYQcvCczdptsghPpUwehVchoQW2xmT2wECOwpSV9tN1yLnx1QCx7
	 LanyCHxlS2BQaEpJzOGGDpBwomUu7gdn5cobybx9jIaUUf/Z2O5IniSrluSzZXgJ4B
	 VFo8x/mG24qBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4EB9CD6E4A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 12:23:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178014381378.13750.8078997177998507322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ef9581b152376fe58f118c5c923b05d705d0fd23e0ef5206fce82c7f8650af
Date: Sat, 30 May 2026 12:23:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780143813
