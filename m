Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F9B249F7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712791097; cv=none; b=SqTAzNCnm6B+9yn0PscBRJ6sXMTDTtNgIG6/SSmA2eU+5VqHXFqRPxB3AlPIFI2yF855Gwf38UNkJ25Hrty7XXkR0o3I9cqrPQ9AN7qHWWmbmPtyFfb4kQBIGhCIsCDik0xqmWSc2hcjlH1kktSANGJ+74cPlWxVnVQSy/oIlRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712791097; c=relaxed/simple;
	bh=GQa5EgCTDk5sqYkPBbBiqyl1azQBxjdoMZRGdtWd5xY=;
	h=To:Subject:From:Message-Id:Date; b=rR+VJk6mx0P4n0/GBOlPh0ckey1ZAz7IBiX5zPd1CryPlH2PVBV7hwNvroCOwS+7nR1/vZeCFeF8Z4rEiDZjYEcZ5OGBCDgBQgd1eYbt4Yl83SLvsQidbW67j4eYB8aFog2vrUDfS0bpKnT1KOKMR2witz0T37Dr8HxouE07OV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LySB7O0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LySB7O0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EB41C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712791096;
	bh=GQa5EgCTDk5sqYkPBbBiqyl1azQBxjdoMZRGdtWd5xY=;
	h=To:Subject:From:Date:From;
	b=LySB7O0HJ/9IrTFxKA8Os+sR4u4N4iTP1Tx4CMKvqcOjZIHHB0WTo1fLsZ0WqvToq
	 TIL+pCYfHm/Auk7fbOTtKy7oAYlm1pEIYsyZ5haOizi2GPNQNYQabHMfMpBbieprWu
	 X40Y91qjsd99wAEQDN/e5eXAfjuqMNikpewMxP+nfKYp5IjKWfEl6sWjII8A1OE8Hc
	 EVuCzkgA33+tkmijW20P41gMa20SoKcQtNopuKQfgJV/IoMg8koHZAqjATzfftBvcU
	 tu5fA6beXiyeQBOhtXY4S5eFQC5M0XGoi7Fsg4IyN494EDlOb4Ko97K1QnFygb0qyi
	 oegV9nNzEe2Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A370CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171279109640.31640.11406407781146164182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78280fffca7614c89d0ad200f906ba81e2195c204bf18c785761a4019c3ee11c
Date: Wed, 10 Apr 2024 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712791096
