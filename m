Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1251EA7C9
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 21:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741902534; cv=none; b=oHGRiyLYH6PPCQyP1CiyppUFGTAABihjd1iPSkWpxbdqtwtjduyJscqJyWIPfNAgrG940ahEYr4ONeSWQqhFpJxc/I6YIETIxboAFhfthwkz0RM2epeeVh/HccQ9ocBnSieP3Bbmk0Mm8l/1WnhpXTchchjVXudy/tT4xsqHWuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741902534; c=relaxed/simple;
	bh=SK94YehAJPiuRPkp/fvXPxrdzxsaqhuIZAH/uhimnIw=;
	h=To:Subject:From:Message-Id:Date; b=COo06J4H4Amv2h/glzJ4vfwkIsKwItcSH9zPZNvA+H9qQ5rftUMgcsYCfi9vz9VWyjNNNPkShSJUSy/p7fsrYxy6qSS97NdsMFnRin4wkViMnPU+cxKoY43Fs6srbOP9fWAybtvB4E4Za2xJax+2fVYckkGZfWAaAZEskd5fW4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMmjGSbK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMmjGSbK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD49BC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 21:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741902533;
	bh=SK94YehAJPiuRPkp/fvXPxrdzxsaqhuIZAH/uhimnIw=;
	h=To:Subject:From:Date:From;
	b=bMmjGSbKGm8nPcrqpahzFm6SyMidBeGUQSwm+4v6Yg9wYLHmejVEVKJZ+AXLDshrv
	 Va9bxM6/WqxXZTYi5HsfvoDHOj5STnV76xtqbQL1etGQu7/QwaszXZRdq4RzZIQsNJ
	 cubyUReZDAjR7gu5cOpCculJlL5R+mditFC8dyHx3qywcO7s60T0SY3Z5fiRPkAR7f
	 CwCV5bYQJQFV6vT5T7wYveMYz75hpoZKzz5iTGuww9BGlZcA918mjY5TVcmfhyw7G1
	 ApPYcPFZLyB4smzZu3uiqrB51DS7IlHdpYlTDo1QVTPGiJJ7jGu3Dw5ygkb7tcshl1
	 FQ82CtszDJHhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F192C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 21:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174190253362.12480.12067911039037147267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3c43b93e3a81cba2a70c04031d59aad655fc227105d3ea9039703694a481417
Date: Thu, 13 Mar 2025 21:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741902533
