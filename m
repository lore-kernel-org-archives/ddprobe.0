Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05DA59476
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748576394; cv=none; b=osf1WWo10zlIftl6S3py4+AxDOcaf8dA34m/kWnc/EpkjFUbZ8KctNukCk4q/6XrkLXfVp1S7YhAUdYflsFkzlErol5kU+Qx079XoXOgOnqv1yuCFzwWTU9LU7kgF8hLSoQh4UrpX7jNXBJSQeWs/qwD0DD6XrjMEf/iMAY1Z/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748576394; c=relaxed/simple;
	bh=6FG2g/uWenwojTAXIv/6cZF7AwiHJAGe2yicJqvge0c=;
	h=To:Subject:From:Message-Id:Date; b=Ujo6g+0Q4BCTWLTxpySI16lwjiD5mwHe0BZGjPf2az7rIKK81flIOGlmPaNwe9IOQ6WjrlUiqi4ZxWB4dDwMydBjmCMR2Y7zixy0wABmZjILRAhJBKqXPOwueSD8m3tahL80RPAFkINS9TIb8vNJtKjp0vvCDyHaVxoG/83loTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ct8JWrZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ct8JWrZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A731FC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748576393;
	bh=6FG2g/uWenwojTAXIv/6cZF7AwiHJAGe2yicJqvge0c=;
	h=To:Subject:From:Date:From;
	b=Ct8JWrZRu5usmtaSaD6VON6Jbr0qKDE99x7MhUvXGtEIL1M6GajM4H+xV+Rv8JGde
	 p8/DSNOo4abE+Y/4Kh6batfLAxtyFB9iuze+WSbaC3mLTfLvpFkihcr4aWwU0q/Sk4
	 FxUFZQAjCEdh6bsRBBf+bjDwbkFnKdxHjwVs3wfajVCe2EXRHGh5sHZ0Gqjo23hNVp
	 HDv5K6jMlDC/O0YdwUYvpzE2gl3NifFHsv2+yambdDciug0HRCuAzuyCqMnzf7vOls
	 X9hzSr8Loe1MrBFr2QJY86xRM/SgqElpTfry0tQ/6S1Lnpg5HqHsszpbmKEYdudLG3
	 DbiyMpphE7jqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9511BC3ABB2
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174857639357.19624.3212569446225034043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01f024e4a3bf334ecdc1986566b763b53ffe9aba8e0f32f415aa287dd44c992b
Date: Fri, 30 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748576393
