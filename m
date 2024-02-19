Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A40475226
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708313296; cv=none; b=Mohdjl7CVSnuU8pePIUi8AhjHamESstJj+O388nj04MGiqmlQ/bKq+bBalMXTnZGhOyuA6LWh17X2tpLiXusMUimCKe7B3Td/vd50JWIbzmTY4qZ1HAJLlUJBj+fDoKYJPfYkfQqrwCGVJN1kgY3FjGWFDZ2h6yyjD7Nh4SUhR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708313296; c=relaxed/simple;
	bh=FrZRjVgWdP/WCQCV5QrWlnwRzoLw4zb1WdV5IDlGYZo=;
	h=To:Subject:From:Message-Id:Date; b=Itj0rEElefwVPODpJWD4ZM3gp/kkqCY+Vc38pzgdVliFDYVv2EQfGRlUc7A5lNzhiKZdIo1b9yNv9YhGZmpqnQ2BjFlfcbCa1Jiiu4+MxQ7MVI6yd/CzSBM4xAXKEBuQWiGMzOPKhjNpgrYANX2UA8gAqxsQDDvEtMv1w//1gtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8kPf0C2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8kPf0C2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 782C3C433F1
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708313296;
	bh=FrZRjVgWdP/WCQCV5QrWlnwRzoLw4zb1WdV5IDlGYZo=;
	h=To:Subject:From:Date:From;
	b=I8kPf0C2nf3Xs2VHr8zy5evIo2wqKX7IyDwQG9RgENLVBH1WIIDNykX2Ki87mbKye
	 wOnPzW2mD+75Ie4mUWd0qZh7mYsIm5nDOht+8dfeqvzsC1vndv3OKz1GFTF0smMbHI
	 W3W1LLAKGPNWSTe8d7NAPXv8H22rkUusLHdr1bc/aVHJbmrmAr0MdIBvhwvH7IfFta
	 TZYxQVI/i8opOBoW/8o0HygVLm2WSM+G2UMI46jZFoZIHPdtUIUU1R4pKO4SGU2tlc
	 nXhj1r05sY/XxuFfMvNuA6H04fVFHuyyRU231AEFSq49VqgVThIkLqBZwnxO0u9YNr
	 Lfq1bEHL3wITw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C8A4C48BF6
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170831329637.11205.2332619279317248812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9ff75c9d7917fd46e0b4fea65019c4cf414c02d1baabe3e5b028fd2cb8d00e8
Date: Mon, 19 Feb 2024 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708313296
