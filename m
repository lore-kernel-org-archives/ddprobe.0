Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E98C1643B
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787085034; cv=none; b=oVtDzJrjzBVS/AXsmH8buqWp3Aaf1LqFHJWX5rtRxlgkRJmgJUeUIFqWSdUfWjqmR437Q+W9H95ECi140qgYgugiPIU6PmVVvYVYyF6+pE4MJWWWPs5knDDW0C1if7Q6DK/Dbd4wTVFKrOkp7Kq50K7Ir712MxlPZh2wvFaTkE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787085034; c=relaxed/simple;
	bh=K35Qtj5sZIfzJzsXuq1crDpm9q+pZ/yerxtQJ1UORIY=;
	h=To:Subject:From:Message-Id:Date; b=RZLx0mlvonjS648s5JE3WMH4F8cq0fb63zbJw9Z2I5pS0hPt4vW/BsYZb9I68LSfdiRQa60CphxbRKOMbEWVtcC4Ea0wjIbQd6vU7NhrBq3VopFGFMx39/v8+HuUn4yAKoDKOOHzthTzhIqxY+stJ7EHTGmRqOkQASr3Xb1Hsm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNOjzsZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNOjzsZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB7CC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787085033;
	bh=K35Qtj5sZIfzJzsXuq1crDpm9q+pZ/yerxtQJ1UORIY=;
	h=To:Subject:From:Date:From;
	b=lNOjzsZS7NEp/FhVpKrHZUP3/bayFcX/prM5ALaaaP4+fx74kb2wqdKE0s+Xz5G5m
	 YER5Kf2f7liMP+NfgHAfbIHO9bycsHEaHSaiMmIcgw1vHrhg/yQPGnAYwknXMFgdvR
	 94U+pG9pwvmToD0N9ZCiXJO9MTUq6B0Eh0VGBt4i37GPAf3oikUK7rJ3332PCgWGvK
	 2Hc8794GNKKCro1CcoH2uMvkeQGbqnNXWuBKOd1ZgAKn6CFrzNtXJ1gnFprsbY4MQ7
	 61wKl1ibmmtKl0/SPX7sWBR+Sr2I6Q6Gjh1CNx3vetc1eC6m3qpdmN15dssl9SSW5h
	 5B0h6j8BgCdvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD2FC5DF81
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178708503369.26744.4654973014540965424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e80acb55895d49fa51c9aaf6f04bcc5237b3fdf480673f474d1d99d6e73af834
Date: Tue, 18 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787085033
