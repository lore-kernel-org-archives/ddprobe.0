Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA1A17AE1C
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734072954; cv=none; b=mQtR/MtHKkgvsPt8cr8hCvAL0M6FIJggAb12A3CRMhrCA9yt11OEKny2gazDRujlgtQZXmwHLtkEgjrTW+bfh+cvn60CzcF9E2h6wsEdW+TsthKUVOVJGJTgrv7BZyHbZHhYwd+NE6qpe7FoOT+X4U4xy2X+q5YBJuRpOuOMjxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734072954; c=relaxed/simple;
	bh=EmnE3WibwoulX5zMdK8+QRRzJLoYBzwx9R/vXQwbfzw=;
	h=To:Subject:From:Message-Id:Date; b=lJufFTel/xi2vzMkoIW1tkcBbLhrZ5M9N1cebkJ8Ndag4Z3uKwiW57gX90F57anV5N/uIO/meV6mQ+ibr5g8E2m4TFN6grfcTWVCQFPLYqS/ZZwUEFL8HaI+q2PFZa0XSgVuDbIKxn0DfBuIaA3cl0kEzAKOOLp1g5j7uPuyeEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGNAUn7Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGNAUn7Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4932C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734072953;
	bh=EmnE3WibwoulX5zMdK8+QRRzJLoYBzwx9R/vXQwbfzw=;
	h=To:Subject:From:Date:From;
	b=lGNAUn7Z4BbG3jGX+n6u/C2QOngC26/ksTwJ1F/2oskZQCB697l6Gm/x4x93A/mW1
	 VzNSqo1KIh/jT+Q+0MGbOOb/t3TjRr9wmBBKg20sj9bgc+TWCke5ffHeqW6CCCRu0l
	 9358wyRJ8IweLdo7M92ZGbZlUgAP/aMmmEJRYlfyTAs6q5Hmkqj2MibyQFM82ReA23
	 Aoh+aArAKCzoOd5oj+lkRpCV3+pvyHte3jgNNU/NEXHTep8bIfilo3bm7BbeZ9nm7Z
	 GVglE0/NKJo00EnaV1UKzUGCsEMa8vkevKotrn1DIHxFXN3gUJr6N7q5YUT2gtUiWu
	 o4K1QcfRgSOKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFDDE7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173407295365.27437.17362324714964385264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca28b928fa6c370944867fc36a289c0d7a694b47a6278ebfc0a64d84436d20ba
Date: Fri, 13 Dec 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734072953
