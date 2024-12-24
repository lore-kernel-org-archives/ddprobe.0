Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C911442C
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735070154; cv=none; b=D1I7HS/4J+YS+xTGKR1lU4wlN5MBilpABJgINJ9oLRYNYH42lDQM4ofV+MT1SS0vQ0mu58MByoGQTGyfGqaQIsOEwqTch0+/akHQmptB/fEWGEXm5wrpvcHMNOT6efEhJZF2NI4n5Dx4r6HDiu9dZfyisLNAkd8u5NUX02Z6ajs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735070154; c=relaxed/simple;
	bh=mIHjjhZtydew/tMMxz90dzQK9S8TvvKKgDiUAA4hSVQ=;
	h=To:Subject:From:Message-Id:Date; b=K/yUF2JkNcK6iIuKoKED8rvUxG+yoEI0tGUM+VWGvJprDoHpiksDZDJHNRktQfsqm7rULFhujesodRLHnrFsrP4DtDC3WXAE9/VEvJP6x8XpLY8jUakD6Leb8A8QesYssF1Uw+fFTxYQ2fmr9bQ+St2itbcQqMtMEsByfYHNEqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LX3XkLgY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LX3XkLgY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A78C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735070153;
	bh=mIHjjhZtydew/tMMxz90dzQK9S8TvvKKgDiUAA4hSVQ=;
	h=To:Subject:From:Date:From;
	b=LX3XkLgYs6OVFZ71MA/WzhKWuHKFNKiMTgw1zUw9rEIul+IG0iL5OJ9h1cIfsO6fu
	 TokZCiyTkuK50bN8wOyL9TG98wcAyrxuYym0t0bnNuSJS6XW++3NBUYwVKXRlKQqNr
	 MQH+Lk7BRT4CA+ohNcy/D8jUz75g6RUupRVHeNi1IxvC/EPf9WYp1AtApb8Zfr/Rcx
	 aiXWr9aFvARQbF5mdsGvBHB49QEgd4QIB4dOv3ykZorOpAEYgx0RPVppkNWQb433/5
	 JR+Yxs9rQ6CDqYsJ25p5rUCQGVCB+DJ8IS2Hi5INcXKzZRaW8O2MnqK5+q/Jx623ir
	 WMiq3Y4dkxitg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9303BE77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173507015359.13365.13384612859417643779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06fe5a24aadfbedab7e105e291826ff42be9eec92f3d6d5f7ea4cd5d2eb505aa
Date: Tue, 24 Dec 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735070153
