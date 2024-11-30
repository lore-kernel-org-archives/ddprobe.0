Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460D529A0
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732953354; cv=none; b=IMsQjf/wMvFv/F5OIQxgvj3Di0mhlEv+gPjq3iEkmpd9AKFjs17KA+mb8EyuDBzoUJp5/VdU1EccQiFaEmfXoP03imHqRsOGq/HWfIBD1Jpu6XJQ+8+tBC1RRDMwzrxR/DvEXcHsB9fc/Ci4nQ+UO2HD5fdkwwBddfVtc5/q1Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732953354; c=relaxed/simple;
	bh=YFpP2SaFrlwe1kH3uvZVpU0gMV5J1DLxBS8hoXA+lsA=;
	h=To:Subject:From:Message-Id:Date; b=hx1D+wOSX5YmLuH3sVx3BjvmtYv842XJr5+ia/G2JHtQniwPv4cjyBp2/LaNNjyH59orR55SOuP/cmQqYPI8CmtMkV9ppSRRSI+iOKw7cYTRV6+Cu3B9qv/8yFG3U8gwaKHa7/HANUR6n84urXdxLwTK6Nyf0cgaHsFnzU3drw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+tmE5YT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+tmE5YT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF815C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732953353;
	bh=YFpP2SaFrlwe1kH3uvZVpU0gMV5J1DLxBS8hoXA+lsA=;
	h=To:Subject:From:Date:From;
	b=r+tmE5YTfrGgDHbvo5qQvBpzYsJlMh+r7I85vsJSut2dDdg/CIhr58FZKZuxxDn66
	 CPtPljsxC1gS5xkafIRmjD4ApXjB2/VLeyA59GPvCMRi93ToMxbpe6600iQNUk9uOf
	 Mm0A8Qdbl2zXO+LD+aCyo0Mt0YDqIQvuf3tsKxCteDdZwl+sCUzZiypD1+KUjJiHs/
	 yjBJ0x4Rf+bZ/kebq0N7HXO8lPYv606nZREPPsr6EeXp5o/YL9lKNbE471d1KHjd2t
	 04mZ+5fwtBzsz25MORAVcr9KhbyJHSWuIabhvn9fDJNRc9bQTcGhllJ0QuCceCV4mX
	 PE/oOlbjOxIgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C753D735F4
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173295335360.28849.261709558325990631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 846db9805f0e38ac25f9f92cf9bdcc795a250e9401ba2b1f51f75511d4d4615b
Date: Sat, 30 Nov 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732953353
