Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1A7273FC
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726949754; cv=none; b=dg0IBBVscYKGe+qltZja5UIhps92xObw0Lzz86/Xngu3zXHDTFuijwUJchJ5Yti8I1PR2uXRhkLE/imSq8+lid84t368YG8IHRvwhBa+05b1tSxEvOYP8/VPIqEI6+TdaW2BUJfiJ+r4X8DG+9e+a/XmF4GI/6d9wQBW1xvPyVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726949754; c=relaxed/simple;
	bh=KzMH/TwlDUYyzxXFzc/ZleF2t8R8Qm6JoGOVvwE4RAw=;
	h=To:Subject:From:Message-Id:Date; b=RKkN4gSnb5yG/ejh6SSnpTki/AuaPIspFzQ8maWBSosYcIeEsA54lOSgprCA12B3ytl+HWzitepoA9hUCR2Sk+d2qNiTZnLjtyG0m7CzIwy5kNDyjfUPb1gmCawv+oCInGNPfa9cZoag6t55dynM+uWUyxi0DF3XNKSnypwh1o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+72cBYq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+72cBYq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD03C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726949753;
	bh=KzMH/TwlDUYyzxXFzc/ZleF2t8R8Qm6JoGOVvwE4RAw=;
	h=To:Subject:From:Date:From;
	b=d+72cBYq8IMZ9hjGgEeTK61G+9ajrBWCeSORravBX3OKm5oMp7CJtKvlQTcvkn8PC
	 DOwspShlwqfyOdYCzZW6EqqFjo58uZf5mpZzw7iR46cLb2jVRGwlHJgX6sI7ubfsue
	 WmkklaDiZAujNqY9+sfj9yIU7uVgG0Ai0KYMq4oWsAg2kdizO+XOk8eg80G9y15+d+
	 9jga1nUhxKJV0dpFCOndFa9oFXrHDN4R/cc09igVAmM2qwpRocNDcwXDq7GpPaBagc
	 +EHSzdabRuG3Bd7gGjjz+zFcxhl2SutQ2G4UxhONRxWiu8AjdgvpFR8S4vi+tb/c/Z
	 toKbAJfo3krfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8E6CF9C64
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172694975362.25751.2444249374664277719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95025188b7a105deb1f5fca06559d3f463b07c324df739c297a28c735eb1f3e8
Date: Sat, 21 Sep 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726949753
