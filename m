Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148D62C158F
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763028594; cv=none; b=hiYJSqn6j/lDqj08ALf0Bk0OLRob4iRFnhuEY7a4zHLtu1x80nXzeWnt9ttPFLmJgOLh58I8UAzsWS3dm76k+ajjswLWg/II0uFV1GmnJee5HiHYfGzeEnne8txVy6yNb2GkqrUY5kZWfEQZXmy7IdGWqx+IX1Pe1bSKVPZWfOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763028594; c=relaxed/simple;
	bh=0hg2dreVGFWaDskuUqayS/JgLf+lw4zCXaYfKIo5LNg=;
	h=To:Subject:From:Message-Id:Date; b=T/YnT81vIdtaft508Ex85tyhD/Bx5djH+FD/FcEseUQD2a98rMjZ3dGXfrZdktaf0p3oQRoG4UwDb+H5gx/zq+zLRAqqRVA1qGRdHi4oELuqaiZY09FRt5LMrQqDf6X57A/SkMoIEGVDJECvZqneSW5cwLzTX4bfSIQ48TBhEEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Khiuxdh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Khiuxdh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AA3C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763028593;
	bh=0hg2dreVGFWaDskuUqayS/JgLf+lw4zCXaYfKIo5LNg=;
	h=To:Subject:From:Date:From;
	b=Khiuxdh5nVweWZXz6Xl3oLAnpv7ihKOdjrD57uA47FHw0qXnayTzlw63Digqpj53c
	 2e7I/1ZMYFCGqjfgujP7n+ilJngBTg/r1zacJ8uvjxk6ccwFgtw9N6kSJCTK26oYIj
	 k4GpCQ148gJJHeRPvDAJo+WveynUnAf6PToVqyCBK5j7oHphtrf7xpaNRyAOhCYri4
	 FP7ubZrAk6HhE8niT5sl8h1yKkO4RWW4JoFtNDbqwVRBct260qRnjiaG9KYdI3EpV3
	 u5QbiLqFRFzi6dU419XA477IhCOM9tE5F1ULBd1AWqnd2FpB9Wy+sol6C/ObtFt77V
	 H3fcq4C+wne2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934E8CD5BB1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176302859359.8779.9703262332532838426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beac34ff6e04497c8b90f63a109d3b0df0a3f78372d6f271195d768d5b047f52
Date: Thu, 13 Nov 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763028593
