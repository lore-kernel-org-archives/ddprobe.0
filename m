Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78F4648488E
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789818634; cv=none; b=EAZCQjplPbxq+7ihFutc0mnGp8uo2YIpaEwZpO7yPWFGJOIGj0HexpbnbnZR8wgrMdjXNgfgOVPXf4x/d4R4FTxjqKbmVMNoWArtTfnST+WbUWvYm/MIgcI8ck04NXLjq3qF/oTewhyKDXWayZtO/FY4DW6HE2deH/EFinUY7FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789818634; c=relaxed/simple;
	bh=YshioP/bivAFsBDlC9dcbNnWFOYDNgu+168gE6bCBpw=;
	h=To:Subject:From:Message-Id:Date; b=RVOQ3+jm0umVae8gb6vdN9wpM2W2mhoETfX9iVsxXopwQSXv36grgpBeOTPEVj/CLmzzu/DZf5bGmxZgQZhD4bXk85GiTg7R/D4T1PrrPQXNtve5zQDagVdN8SwaI3nBOQbO42dplqV1/1QDgbEi7MODju2wAItbW5d3FUloveg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKhFRWuE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKhFRWuE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D124AC2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789818633;
	bh=YshioP/bivAFsBDlC9dcbNnWFOYDNgu+168gE6bCBpw=;
	h=To:Subject:From:Date:From;
	b=gKhFRWuEZzb6WT7IZDMemtkABdwyJM4pgpMcYnUWaXaQrBJVtFCVclQF8BXoV/PK2
	 xfkyN6qG4PfEUer7PbA4/h4LxOX+GKN5oTQiNrA9LuFEgICGM6atYCOYaqfC6OFQNO
	 7cYlP3iRKa9nWWaFkGNE9FxTwupp1wde0nAHLXFOeYy/QHltRW+uFpR0R/rLAdudV3
	 jCkWJh5/QLyeiYBwAF8z0nB9D9aMRyy+HhgubtVcQn6j/4VY68kRnEClSDZIxFOjEZ
	 83Hv/X+KwLyj3HZWH/6RT6j5dUtW1zTs8jdQcsvW6JK9cwmqxDNVJxVcINRYrnq67G
	 uDyUUhUk1sjjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF93EC982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178981863368.21235.1606588234896799502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86763aa541a0add9365ca1f4b5fdeed2310ce0d4b14912b4f7bff69e6e27a658
Date: Sat, 19 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789818633
