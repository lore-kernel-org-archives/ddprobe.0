Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332DB2AD11
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732803354; cv=none; b=aiVtJevVfQQKbbTg94qLRBuNuBLjQfFOMa1YEQYa3FWELyKT16T4L8K33DR/ED/2GUedsws4Z5mf6nrI0KHYwXlHt9wmuBwRY7Gjpdg1XJ6KBqOCbLclV1YzHm4gFNp3vVceUkNUmTBDcmkfFEtFugR8/Gu3W6DIM+Ps9jBak2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732803354; c=relaxed/simple;
	bh=gNJSGAnxDfLxCc20ulB05n5PnZU3mViQm4A811geKhQ=;
	h=To:Subject:From:Message-Id:Date; b=bjEkC3oZPazHt1DtKMc4V7cl/xuE+FI9MAZW9MJ5r3f8mb7aY22Spyh8UlkjJjR6+7D+0/OcCYelIiNLc8G2YEFqLRL4CqU6YABF1OUcc/Yhmcs2F9320Y5tMYa3e7fd2+6PEACDUe/cW/bPCWzfSn57l0YwP4GfQ7k5VZaEQBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDWbMpB5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDWbMpB5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEAEC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732803353;
	bh=gNJSGAnxDfLxCc20ulB05n5PnZU3mViQm4A811geKhQ=;
	h=To:Subject:From:Date:From;
	b=ZDWbMpB58XkKsOT2UvF4GsxI5qmZPT+E/t8yW6KwsC2UJ2lAXLc5LpZ28pnFEkVqV
	 dRd5dmpS2GSfu7PgtJi7zJBoHyzMmRSZUyStCTweJfIMarduEvKOlb8cX7gAKWck4m
	 +xuethlxr0iGuccoTB3hizHnBlalYTbgCXL27UezQsHCP7XM+FA9GkOtfQ+EZzhmc8
	 arP2NrOw2/OTjpgv9G5KDU+D/NI9Jh0Jp98Wkuj4la6yzkMuOItj/8m0XFkFlXnfR+
	 +L1kH7ipHGGXBGnI7CgVuZjyHG2JXtfbEUk7pvgG3iTJsPjWTCgrakWUjyjAISzsEf
	 I/QhwFWYVrhKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988A9D69114
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173280335360.6468.8382619919248236086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e592e007761022e849eb2a9dcd04029375250da31713c320844e7881574567e
Date: Thu, 28 Nov 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732803353
