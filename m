Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449BC443AAB
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785454834; cv=none; b=D1qBOYuciqOcPMD89zBd6DMBQ3sjPtx2wYU7nuvuEiDL9YCrYIIiMwFjbLuw/i4T1pdj8+1Xzewo2qMmL2XQmrVGvMPS4qC3nhl+Eun/AAmEFN+mP87ZogInSJv9lBrS0KKQCrL0Yuz1Our2mPJJ2klLj3Hr3bcPTtyJgdk8/sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785454834; c=relaxed/simple;
	bh=ftvFJz2RQGrPSZhe247phnlGkdL9QzsKIkYf4VARsxI=;
	h=To:Subject:From:Message-Id:Date; b=anVkqMXroOIoNbtrwIUe2ElZ60l0dZhIY7mfmzjas2HKr9zn1jP/F5MbpwBQE4eGJUNT6HI3vh0EnZa0LLvNfHJIfSf3Mdj0ybguJzm78drRuDt2kg0xz07bKKva0ssyjs2aN1XA43m17ahp5GrfzlwgethUkntPpOJYjEx40OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZE8hb3x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZE8hb3x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21C9C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785454833;
	bh=ftvFJz2RQGrPSZhe247phnlGkdL9QzsKIkYf4VARsxI=;
	h=To:Subject:From:Date:From;
	b=DZE8hb3xl8irswPu5mz3wV0WFk+BVdkWl/+yNqEvqNlKNxeYKOLjGvwivvBXJdTH1
	 x+LmiJO57/iNw67i54KR7pr3Z9h6WZS4qRM9ykujViKvy4UP9Zz5Pf0aw8rRv/Rvj5
	 PwFWMUAELytlL6NhBELkXhlbZIGTJbVgh85R2lBUnvLq68tJQD5ThE7R3hA/G71y+z
	 c2Ts57EJczirFS/+NJxnlIaZjobSiCSdfwMKrUtE3duBRvVcPGh0IvwE7W0jyQgHU+
	 fPs4weK7+TLPI/LoyQgk1hbn7rzGyO5ssEkXj4gw6qIX6JjHnsy06lCp2gpzKaah0H
	 Tl8zj/gG8HjAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0FDC55165
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178545483368.29094.14271698736279144305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5b0145e07d40b6596ab6bb8b0cebfd57b87c85a535339f01fd50cab138a3ba1
Date: Thu, 30 Jul 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785454833
