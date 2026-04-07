Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2153435BDB2
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 15:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775574334; cv=none; b=nZPqpnqjXQte3abMz8dBi8G/eJUeeneL6zYwmkhsuIOviduED36dHorsed9tBa7sdlNPg9O2qLbXPEfdCXjdlKbzBOU3ljVpziNA7tiDCOrMmIiFBwm4CH01X+XL9ESI2OeTyk8VHQExFMV8i8+RrS7hJ7aqajxuQwtVk0N3W8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775574334; c=relaxed/simple;
	bh=6rntYyA7zVR3Ehq0OsYYiq86X90iLUsrEE9HfODr3/0=;
	h=To:Subject:From:Message-Id:Date; b=cHzf5EFwKp5/va2WCe5WstZK96536taHlEwRkS7cdP7LcUui4jGHwBlpCzstxPaqAkCe5KT7Hy/EvSNaqdcSOeFaNZ0kYnx55oT6uv6WVVYLg6I9ildtd4qnaKGrMW9y4rqC2ER4HKO8ABoh3/eaoGTptfDURw7gVNhqLUwTaIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KqehYamb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KqehYamb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F5DC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 15:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775574333;
	bh=6rntYyA7zVR3Ehq0OsYYiq86X90iLUsrEE9HfODr3/0=;
	h=To:Subject:From:Date:From;
	b=KqehYambmfHLwkFK346erDinHsEExt5lN7cmxANP2Ib0wulVajpybE4BPBdXCfHLg
	 QUyhXNDZc5YmQsShSzEtH6EvTZLlJ1Jp9DjvqWvRUeKPelArrUMBbfbzFnEx5TUzw/
	 LzpVOv1QcfNb8g5Rcz8UmD2lY7xmmFGEEsSDIiJZYEofPlOAuovj/o7HmNJhHKaCqk
	 WklEEpko6dyZdyCo55z2z+lloCu1RQtdJX7wjeQcvi9otZZVX15qFA7edHxPqZHYBT
	 fttWwQufoMpt7s3fI0TRmwiDdAQYLEYRJA0J+dtAb4yPBnVyABt6cHz/jQrqwOcGBq
	 JXzEDa4dTws0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4F2FF5105
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 15:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177557433369.2818.13119285185418546667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3855bf973ebc69a4274199f1fc9724554a27a6653c7a50d084762ad1f68844af
Date: Tue, 07 Apr 2026 15:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775574333
