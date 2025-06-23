Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2081B4240
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750664394; cv=none; b=VKsXA+/VMHWR2bPp8p9OXqhVxmbk6wHqS2uYCaD0JUs7dXg7ecNrvy7wi+1pFNv+hCQGRv9iewFw18xrucxUyGoXaZlrK40LgYqEA+/Xhk5YQHQ+fOvlFfNFGEPCeNCs36P26ZUvOFBf79KlkELc6J/nonYP4c0glj/dkZ2OQBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750664394; c=relaxed/simple;
	bh=TeSf69EKrD6l9z18SsBF2oW/TtyHBUrhMmKhuA/gho0=;
	h=To:Subject:From:Message-Id:Date; b=l37BM+Xqebz9r/5ekXdxN4oDSMcJioOwOWbcHn3/ST2GMPCcCwvDa30mQY7EDGvQeksue2pvrH6vOkLKuWghrY4rBgaXAHzkWwNpiDgIQsZNupNakfilBprWdsCvVKh/pEUxRBcRGfwDThP05Fru/GD0T12cE/10LipAmHn71PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQ/mQEmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQ/mQEmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22FFC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750664393;
	bh=TeSf69EKrD6l9z18SsBF2oW/TtyHBUrhMmKhuA/gho0=;
	h=To:Subject:From:Date:From;
	b=kQ/mQEmM95gpAIaXq2zzIxuoBbLA8Gi8zuASAL/CjFhOCdh9Fo262xdCiOVPm3ibs
	 GHLHHAI+7ERDxbTTpsrPpD9pJi5QeThjA4wBnttZ7Gs3BXSKYVKyzVMaoKN769zKsv
	 8fEq+yFdo2EJbdWnkrGKcXRvbX1iGyeVALDEXx5zQJqk6d1JWVv8fXsB1jgezBX+Nc
	 ILspaauMOOhzPfDyFmNOF/yBhgGwgHi0avMYaEycOJpwr5nouTWbunJVlsq9QQqzBP
	 vht/ZW4AzWiKxgUeTOmJxkB9GewpvcKOSXcUuYhv5fuAhp1PBgmjl8PSy3LUGIkpqF
	 8G08EPOCeX1SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9139AC7115D
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175066439357.20271.5739351876208152612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58968fc9168cf4a52f35ea4bab117eedf7bf319daca9a3e196cb5246515b251
Date: Mon, 23 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750664393
