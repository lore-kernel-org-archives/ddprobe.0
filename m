Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59342414A27
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 19:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784663314; cv=none; b=UM+MpkalKc3R14LXV0QYBKxJTogHyI6+vNa4kPQBucIjkxszUJGkRwf8+WxF80LINbuPX1sY7rFOYJPRQRoV6ZldKtAnc+yl33tBMg4VNTC13avNpCzemRV6TBLus/0Otw5mQ8AZwSS1zgjal0Jw3eUaXW1cBAm3G+ROQ2HdfsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784663314; c=relaxed/simple;
	bh=FvKwEhIZGDlth+6YKzyRQqH3y1kAqINJp0XV73wjHMo=;
	h=To:Subject:From:Message-Id:Date; b=gU1ZGVx3tHBl0bYBSzmDQOhqxO0qPXKguS/decutTYkw5xGnuC9Uy4CXZ8twfSOaYR+7ZprucvIcLTHTpoUM7iZTgZIGLhEHyzDqYtUTdpe4Pz6rySZ7od1viSkpg4AqOM4EgwG4Bc1DXVFmkki5w/M26mZXlgNGlF79sw+5DO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XupNkdO2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XupNkdO2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F46C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784663313;
	bh=FvKwEhIZGDlth+6YKzyRQqH3y1kAqINJp0XV73wjHMo=;
	h=To:Subject:From:Date:From;
	b=XupNkdO2KVTgP5VuRn3Rm/YX6cB+DFjZmb75ApMw/M3lZvVqjW8uycYHlyeXVxCUR
	 0riW24M1V/VJX/efO225HPXY1PlOYtXznmTViYNCpQdm3J3ep0Jkr+cpxpp7u1r89o
	 g3f1EduTJUWluqO679mvB6u97aIU6uacaaLM6/jW5uU0yv4dLizGuFFmwX7WdvycC6
	 LWHa6ZUkE8rMiBxTL4yxz1UBwjsfM0cuYogTyEQ/zawvhar4ls2D4vVh9pxtsStOwG
	 AT8NUFFZZmvFcRpKvYiWE4FSPgqOlmsDh/L2/BmkP+7+Ac8oJBz2nHoktjnkaHHVAk
	 WllQHoEvnyK1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3966C4452D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178466331372.12202.8691437829217425090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff71c89b47a9824bd3bb51b52dafa279b247292cd972a55979af33c2c06219fc
Date: Tue, 21 Jul 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784663313
