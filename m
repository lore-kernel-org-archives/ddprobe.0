Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1576E18DF9D
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761426594; cv=none; b=SP4s4K2kcuYM0YcKkx1jXEiu8IJ8HQj+ObYSDHTkwYNXesuIy/+oszuS8HGXgyRveIDKmrw/28FgF08TH8dDErxf0Bl6qv1ezxLx2iC6Q/dyRKaJDzKFPW8BdDqABZG2tsnE5SI0Em8L0XgYAt7xZfkEnumZ4OBVNOsvCduW04o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761426594; c=relaxed/simple;
	bh=FaqGeQX5p2rf8fyK3ojwqFVWn037rJ78V9bUAilqo4Q=;
	h=To:Subject:From:Message-Id:Date; b=YlCh6PCjbIv1ezTEJSjYNdtgjjQy93XkQMP17/QJGNWOlUqOdz32Y36JcgGKX9Ex9nAy9i1iqwwRAGh1tW/B/kKDDkloOQ8NHw/P2/pJw8plJ02rVfap4fai3qoGDOUnzr+yI0FCKjWVGaB2nay0vKY5ANDT9WdcJbMwSB0/NbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQEqTChp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQEqTChp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57BFC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761426593;
	bh=FaqGeQX5p2rf8fyK3ojwqFVWn037rJ78V9bUAilqo4Q=;
	h=To:Subject:From:Date:From;
	b=BQEqTChpjfhSYMKM69KH19PqniriqgJNbs5R4OW2fNOinDVDFqwmGRUUIgyJnNoFr
	 8YIl9IvcOdJZn1pjINrMF5THol5j3F6X6eNMn7AyshrO4jOMGUJ42ACxJpEQHMJrgW
	 48K4V5tniUV/1NSU9zAnN8upHtF6QrEixFhrMQ8ryeJ4/I3kha/QFywDGfVBJ/9dMe
	 Hq/U5Bw0b128Xsl2cdXCyQqjAQdw2hlfq9G2pWu0mDOYf3UEincgdrtwsm4rML6y4B
	 wLrkFrD5yDtQ7XECiAj0K+suqflJF16zIwXNL3An7DUnVc9Oe4NZ8Wrut28SyXuc1L
	 4fYD6lGmv4D7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938DDCCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176142659359.11428.6045947290604889270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ab36733a4baa31af7bdac1e4541378203823c40ecca0a3c338686bff4e2c8ad
Date: Sat, 25 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761426593
