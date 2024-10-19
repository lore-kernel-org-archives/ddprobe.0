Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2520A12B94
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729347954; cv=none; b=TGEum0iGbPa93Wv/cFLyalxTUHRqycIL6/sEQ2aiLqZ9Z7MvQ2vrZ4ZR5LIrcQXB7UCyua9hHLpu31WosSxr2qs3fInvJZV6HoA3Rz7frF1VdBhD/ZM9VE4dKEeP8JqSkr89o0x1abZ9nxRG7ZUkxNVYN/dKayoeNhIEnHtEQRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729347954; c=relaxed/simple;
	bh=elNdeOGqrebz+UCsOoxI+r4RaOVgeNfXjPuB4YkxqvY=;
	h=To:Subject:From:Message-Id:Date; b=t//rxLyoa6uEabuxh8TcHhpind406BsFFaXwhW19sd0AjmuAD4iivaml8TIIs5f0WYlICYIWKz2SLi+fzOWExfGwcbhAwklqq42ohgjiEQwHW5zFIJAqBa0y0DLt80ZRmcJDC2JoNaICMO4XMS2HdsCRXD4ny/zWk6WcNibQCQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxKDR7XF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxKDR7XF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39CFC4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729347953;
	bh=elNdeOGqrebz+UCsOoxI+r4RaOVgeNfXjPuB4YkxqvY=;
	h=To:Subject:From:Date:From;
	b=NxKDR7XFmWtqVLpP9QRRLCcg7+fx84Elqqe2hQCjzqFHyrTuYgvSwcCH5U7gRKxF9
	 4nACs/ajBFFB+F0F+9gCp91qHqmIyNh52HXuV87Ayg1osJkGQVTe/MhjUvsNIQjtId
	 aErgRyPn+GlsIsiTBUx9pEFmbY0NxegetUd7uM+vismER/vrMzqdtoGfN6trNhqhHe
	 pJnD+mmZ9RrpHme5vTW00rQ7Yl6IJ9SCiPCX1JvRV5QeNCazOjm7jsHsnNij73TC4i
	 ILYQOmrneNsd7P/X2IZ+TynPstdALwsnFj056tN9OO+k32EnySO8uZgX1SAE13zrvY
	 GljbF/JDPbNpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973A8D3C916
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172934795360.9358.10989131295689074395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5158325734eaa4b536702ae040f6b53fe03123f901a090261c50864249a90a33
Date: Sat, 19 Oct 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729347953
