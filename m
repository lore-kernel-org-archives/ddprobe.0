Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8F826B2A6
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746772194; cv=none; b=Ler5SrBfVNMn55dbNZVYrirKHR4MKO48NEzkRwok03bR9jyhstfEA2G6ng/U7ju/8blDm6u9RYcE8NW0FOZaVIlR3sPgJcI9wdu/CpC4VGZwK0gKqSQ4S25XtOvi+ueSrBbWJ7qcuHg3mRTWbaYddAAa05Hc/xIZKtI+3UCMYuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746772194; c=relaxed/simple;
	bh=o0OeK0X/teXHt0EBsXWhx9qyNSuPgdxhMzxY8oT1+vo=;
	h=To:Subject:From:Message-Id:Date; b=p/+kqCFT23Xn09GSrPDr/Ep7DqBG9I3l2BSeb8lsIo9akxZCsMWe4JtNQQt47UrDtY79HPk9nqaT7kJtCo1xyb0J2vnN58DTeQXutYt4D3+gTTUmIuKu/kqJl+xvgK5/WlvZG/77NOLiIUBmuc5z+JJu7KCxjd2wkVIMA1dF+74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHJikOpx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHJikOpx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E94EC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746772193;
	bh=o0OeK0X/teXHt0EBsXWhx9qyNSuPgdxhMzxY8oT1+vo=;
	h=To:Subject:From:Date:From;
	b=VHJikOpxHev6Lly0UQcSYlQ0P59z2ur4Wpp8abUukMNpD10lyzr/gTVaQCCVihXQ9
	 yxcW14/djRB8pA8B+zyNaL5bj52N8/gerZHoVoNMewKxLRDc8sGCtUP91J3pjvKFht
	 cGhkjtnpghOG3xRq44BS/6bcZhJevOVOaqC0t4VEV67VTZgkFgEhuTgsU5pd89hutw
	 znQMMj2KZfBoryY6tJSwv9mr0zwoUcT2o5wX25fxppnNT3l8cQ6LzzrmPt83WbPsRY
	 D4ddv3U1F91oMOpWL/S6J+TzySjK9fsZBQfrcfsKRVWNURiGsbRYL8ZDPLN/NVxiXs
	 j2ld3M2GA+HAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E16EC3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174677219357.8345.2026803420127666787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b653b1b035e0e4108271229d27b70b2bd9be842eecea17de2cdac6848783fa7b
Date: Fri, 09 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746772193
