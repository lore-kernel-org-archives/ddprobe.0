Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271262CCDB
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754146794; cv=none; b=OUyjVqqYcEKTN9Efc3ud8J1w3VXp8c01Zz/fosLck4I9jieDnwptiW/DuP2nPXL6BFPTnRQ/pahQGkR+5wPeNRUsiigCRFxSGzFk4/IFTvK/BD+kInOBdAJGbpO9gV93M6a3geBf6tEkCs7FXhXEA/7qtoj/YaB+3MhM8e9ILnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754146794; c=relaxed/simple;
	bh=hYvgsx4jbdBVBcJe5U+woriWJYwZ9a5aJHpKZTnOnSw=;
	h=To:Subject:From:Message-Id:Date; b=MvWIf98fY4yu2AWGpw0xHzXpu6qAsLwsWraFtHzSgONaUfdFhv8EsjkP0un/EPotmqXLNmPY6shXZxM5YHit0lF85rEZH/N16euAHcFCvBMII/tJpg6PQxoeim1TxWVUzhj6QwDcJrjHWGO4pWYKzHx7b3TbJNpb9r6WUm1s0Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YTKKxFBF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YTKKxFBF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A402AC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754146793;
	bh=hYvgsx4jbdBVBcJe5U+woriWJYwZ9a5aJHpKZTnOnSw=;
	h=To:Subject:From:Date:From;
	b=YTKKxFBFBZ4BuflyG0B54VTgKgpsRhSMflxAJvlTh2rx7Mu1P3ojVHY7PyKYMd7zL
	 ql8/T+xFpcMMvOs9urMYxyk4pqMntl8OshBtxAARbmVtqoo9eZpke+77VdpdfKKenP
	 a/Cx0prz7LyluokaFYlOkRSrdazRbD2XBDCtvNlPuQU18fT0CN17vWE0qUGbjK/KKO
	 nqlQESNx+ea9pJb4oSXzVefDGiYYp1EBqyOLZ6RSBtaCkR88zB04t7kJZxSZnz6Xwg
	 g6BreZZYShLuCKNOQ5tkkWhocE9QZoiB2igkADArhmo5uSVgRmV1C8LgTqYHVPVF1j
	 Qa4vnmdqmpdTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F0FC87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175414679357.21354.11647733331434973367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86036c23178eb14e0a0e3e8304a1d83dac1908ac0a197c0a1ed6c8573e76e3d0
Date: Sat, 02 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754146793
