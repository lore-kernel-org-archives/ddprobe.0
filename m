Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EBC256C80
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749191994; cv=none; b=AgN/8WhmIWsr73aA60BvglllfK8h37gjIZ5cH8bLY/UiTZMlTyBHOaZPbmPXx4zodr4QiYNPsq1HIiB7mJ6BfOrkJ5FCRpzHrGL76IXoR/MsISYU7Yt/BrLE8etFL0GPP26xAODQ39ex90WrG2W7ddbcmKe88MEJkmvy7mlx0gY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749191994; c=relaxed/simple;
	bh=ALg+AmtoOYPVGxE5Awk6n0x2UqzflYot+jBIixttmeg=;
	h=To:Subject:From:Message-Id:Date; b=tW2UJE1E8Psxo8XWy5y8anrmynQey71/FhQ1O/wdl/nel2OSc7JRVjHkEUOHGb1w4SnBQHJbJfcwQkeVDKZgfxAng+DeNu6bfAKKPtjIJMy5WojKhO9Vk3g/3zUc+1UJqOo7jni51ha3DLdBfeZNAoFGWJkdNsiYXDPq4R99G7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYWtVvoO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYWtVvoO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B88C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749191993;
	bh=ALg+AmtoOYPVGxE5Awk6n0x2UqzflYot+jBIixttmeg=;
	h=To:Subject:From:Date:From;
	b=LYWtVvoOx93u87nhj6ztJTa5wAQG45A+fbHF4xmLFoZZv9p5sP8Huy+ctyvrw/+tU
	 0V2C3pm9thDtQyUzDUeBZendbjClbBOecYZiTkG7PvL5VI+ysCf0w6aNe+UhvsLZda
	 bcdm+F5wX+leCx4xEjj9pkpy+UirmMl45gH41ivqNXV5egzmljWs7g3k0BXSc1C90Q
	 NGNATjVyOwoC8EH9vgB5DXQ/M06w0nKg3ZX/x2i8wreebrgqEORYRHiHnS3Xty7sI4
	 90FHiF1jLt9SxCKvMzjOfEN2LOhNoBVudqhqiNpefRwONlPTA/YdYSUIoy+MBNCioN
	 DlY9cdkjiUb0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E56CC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174919199357.4679.1522813567544576840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae59ca0b4d8b454e7df3801edcc7b800ecd8b29f04dbd19663d3a7333d96edef
Date: Fri, 06 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749191993
