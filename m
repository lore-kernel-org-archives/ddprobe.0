Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FB34315F
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771224294; cv=none; b=Grs/MfwvldfKjAYL4HbfhGDwi0A85TmHSrgHfgKcLAshTEFg3zytjV1WBK/4EoF8Y7ELQh7BsOmuIDgAhSsSS5VTnswrGE5tUvE8am++WPZ+/6jMKxnS/UqiNxxeqsAmA861ZqCqOEj+fHO1BNkAfwK8jH17vawZ1aPDk7IJjrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771224294; c=relaxed/simple;
	bh=WJw0U6XZZD7OE+PEQLoQHvD9z8PTpUqedoH4VJjF3VY=;
	h=To:Subject:From:Message-Id:Date; b=iABnj3hwfkapAPCik+oP3b8J44ZmmWQuGqLqWhiBAu9d4jMoPF95hvmi6qcp7Iav5fL9tYd7WbNTv6a1OEr9kB9j314TWficjhXg7x4nPgR33CRQkqBwxMaZIL81rQ/+urwdgdFZGLCiRTgsQF5tQ9SWG1ld8exA71ge02DgmY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkvNuZW6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkvNuZW6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CBBC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771224293;
	bh=WJw0U6XZZD7OE+PEQLoQHvD9z8PTpUqedoH4VJjF3VY=;
	h=To:Subject:From:Date:From;
	b=mkvNuZW6blc7VMCp647VG4n6BrBU0K4Ez1fgkgF2BKDPWMcy6fNPdqWZfN806+EGm
	 nR5m9pXlllfx/Yx3QSDbltniTqAAkYvsX2Ngos69PoOOttDAQHIzHbpBIWTkA3b/6H
	 9tmbqYbexf3hyX53mF3e3pnvLA+LzBiQDzE9D7qVrBpWcvn03/1gifwXryxLvxRPOr
	 0IcfdaP+NYtkRNaN6e2j5x27XLbQFrh7OfulsZZ8USZlmbXu2+F2O/jW0/XlKSGC/9
	 VMT/+x+/SmCFxbVJSrR5z9cqMqZOrT4kxo1dIpXbVweixcCDAC0j40uPxY8yr+FuHb
	 ZTkHw4ezTwW+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB57E63F2A
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177122429359.3534.16101510471256449730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50605ced8e7ade9b45d80c7c9d561005224a7c5c9a2131dda40faf182f4eabcf
Date: Mon, 16 Feb 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771224293
