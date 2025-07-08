Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372821DE2A7
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752002394; cv=none; b=COvYjxMVIb7kO5BhhRmz7aJ7IB7YPoACm0mRrUSseM6ervbHCUKsX39PFzKFVXsajpfyH4rg19Ra06xyDFENsqM3CcVjDSTN93xiVqmfd10820gh6REQJky702U3Tn6Xx7Vit1AgQSTuDzrEcryArUmvj7YOER89IPirVdD5ZM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752002394; c=relaxed/simple;
	bh=pV9yzeOPOEya4e3VQLcWtbGN9uJGrKQkMsC9KGnVaks=;
	h=To:Subject:From:Message-Id:Date; b=ewZA0BgWbbYQnZJukJHay7r9o3tj5o4VOHh/vwYK1KJrEzNUVjdQdCnxrmjBX0k7TfsSZP4A3YBg0ZWUStMNj9aNCjKcC/FKvj3WKmOcYktLsUxuQNaQ/sS2nnc2F+1dxULp/sXMLzdvA4NO/AGub6HUDyHAEVrHar+AAS0oXng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dY7oWyqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dY7oWyqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F775C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752002393;
	bh=pV9yzeOPOEya4e3VQLcWtbGN9uJGrKQkMsC9KGnVaks=;
	h=To:Subject:From:Date:From;
	b=dY7oWyqOO2acZKrtWoyKQW7S8J7ASodufR4syn9xOYtgrkGyf2coH7R5tnkl8YO4p
	 55DIxfJMZuSIJ3y5dy+YMbM8AdlkIucLjknCUgQNv7H8dWDDTxbetu0kNwzBYQTmHo
	 oxO/IQIXbYKG9MLiPvvNxtDHL3vlZ+xYymZS9lImaRg7I9qMR+5TrAVtWS4Q5Kmi67
	 MJVuxt0B48HzdCGy9MK3/OsLd0W+1r4mVdf8cAc2T/F0nXs32VGvqggVleRUisP/Yl
	 B2a0EUkJdzRsjtAIxpGd0kwkYUAylc+/ebKLfpezHS7W5DVKl3j9dvmu8/8unGHagd
	 MMEyWzXqYfeOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90820C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175200239358.25181.4890681534898830837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d286bb7c3cc3c9e925c0ac195d3de8c69f34a4acbe1cd8ec12cfcbbe25335f21
Date: Tue, 08 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752002393
