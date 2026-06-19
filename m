Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330A8281369
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 13:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781876194; cv=none; b=cTb8KgB36J7mJCCP4hItDU9ef8gvVqyAbNqPFo0hZxvKIPhEWhFXiLv4LfeQpGRbtdcLqez/oaXNBxE8rurbQActflM20v7YhxQo6YKQxPDOIOrMspu8I+RwNMfzbLzxaW/A9J0u0kE7/OfdCpsAozHU6u123+9Um2UX/AUN7f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781876194; c=relaxed/simple;
	bh=OEAHvteqPt6pnc9zb5QzK2Vb4NcBZTKRdvkQnIDGrvc=;
	h=To:Subject:From:Message-Id:Date; b=VWjMsW5WEt4HeM8mGBc3rIE1UqUDCltG2QBitugthdIb2kFKrFzMkiDc1tqWgu/AP/y5pfqDCMf5LeCj63XV3CuoP8wznrcuUo/lC8nNt3wqlnqd3yFJXU9Fjh0A5G6opBEl4nw8P8h8a/XXenGX1urb5X1SE694RkoZn7Uo8oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D04ea3x6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D04ea3x6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C961EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 13:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781876193;
	bh=OEAHvteqPt6pnc9zb5QzK2Vb4NcBZTKRdvkQnIDGrvc=;
	h=To:Subject:From:Date:From;
	b=D04ea3x6K5pMEuRIFfzQHOfFmDIL4tW1jflStFjqY85twpIJhGB98glM6btz9ZGlM
	 lH+5IUbYBd8KolE9WO9qeMw8nl0EPsxiktvJp8+nalK2tSzZli25p7J+JzCvwPZUt7
	 76WkfIdM15hWuadQ//qBiqbWJHycQucOsq3G4uGutw88M90lUBfQV4NAo5HheJ7wy/
	 FM6wnmTmxMTQWwDBDXdj3Obazlt46Vt+Ug0wZFfZ5GSt9I4YYWaOFbaXBuife9Lq2b
	 9YHp8YEaJKJh/1KH5mfzRjE+gqS4aOJkG4UYGppHH1wEgbSno6dzCFqUeH5Ycjcnb5
	 /KlgW/Frr3/Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD0DCD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 13:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178187619370.14753.4332320596910419525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dde76983e68f70140ca4db50d7ebbd29abaccb541479ac1b98279dbfd7bf15d
Date: Fri, 19 Jun 2026 13:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781876193
