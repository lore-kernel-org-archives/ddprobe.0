Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C99A8003D
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 02:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765159974; cv=none; b=L9rHQEOA6cLjbrhvZfXHM7iRIKMjdbmMMgg0p+0MGv42wOX1RMMvVzwUfWYpxGNkDCQdA/vejpB9X59Vxsftj6OjsqmI0QqSbTzsziHh4HKb1igeWGWlJGjHBha/ljRH1wfGntGcRky0DsAWdFfV0GrUzDM22teyaTh8RPRzLxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765159974; c=relaxed/simple;
	bh=tPGYgtXoatc2SKw5+4PckDGAMIBA+L9iWmSsoLU8fHM=;
	h=To:Subject:From:Message-Id:Date; b=P+JOKx3iwvuA8HNNDaJZtEN+cCvlnkYam+NqSTuV6gydNFNRtqPluSB41817TON9VtDgBoXUYguizcUBfn/rzmdEgODQVJL7xVex6ZZHVvmPFz0Mop0vmZhrsyYu9jhDoeUm3JpRbmdp28Yio6AQPOPwqPUKMpjSybJu+xao8jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ci6Znd/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ci6Znd/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84D4C4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 02:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765159973;
	bh=tPGYgtXoatc2SKw5+4PckDGAMIBA+L9iWmSsoLU8fHM=;
	h=To:Subject:From:Date:From;
	b=ci6Znd/IhsMONXqeQKv81APKEZ8my9oe3LpS+yMuYPSjpTmK84o1YmBBwsPXUhTuM
	 sATdzyTbBooAcURyajCQHh/IaUdg1tZ6bGSLHs1URubxf0CiL5GOoX07Nfz/XcwxV3
	 51ZgJMb+Y3KbXQuEOC/DkM99iEjAjFCGghekAuk59RAPfY49e7LePhxVI6L06abYwj
	 W9Sk3IgXCRT5u5UuprKyFjSseCukNteB5xu3j0unchA2w6TgqeYDsuaTFDqdjhYPLz
	 EQi/+9kFWxtpcOnJRiz7Vzxzu53m7f017YYNIuscGFe+Iev7UjpKI0q0Jb/zMgcZcd
	 MAzD/pQPVzAmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93637D2CE17
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 02:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176515997358.30981.11057902187009273378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c9ca5ef9b4699046493b86324cfa61f95754f98382c6d2f06c04361536ed1d
Date: Mon, 08 Dec 2025 02:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765159973
