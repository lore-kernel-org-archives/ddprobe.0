Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE6C79CD
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774420494; cv=none; b=JeXrQ4ZSGaC3Te3+7V0rBA9nBbu4I3DqUvoIvGjgbtjETDmAR1HqwadpHVYdMRX5YmsldAdD1BP3+ImgGoAxptveEYvvHH1hwIKrUUJPzOX38I56nGkNvflpJj3yc1TDTU57+lWAwqORKyM67GJsKniVBvoKrZTqIw9v225n4+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774420494; c=relaxed/simple;
	bh=yPw58d9Ki7c6XRkNvGIxQ0wmCv2dEyDxfWFmi2q+4H4=;
	h=To:Subject:From:Message-Id:Date; b=EhcjOscozYWiXosv5dTV7nFRbvH9pA6sEkIT9hVJ+iflG2ne6TA+i74auj/lyPhoJLWAw8tuhb7fgEJ4uu6/6H1L5EhTKiqnk2nBbeUPLv7tmx2SD3RF5DgoqwQoQh6rfwifJZH880tIueB4O7KCkGkB78g9i4hsynsTJFrl+L4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OsjORZwQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OsjORZwQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A43C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774420493;
	bh=yPw58d9Ki7c6XRkNvGIxQ0wmCv2dEyDxfWFmi2q+4H4=;
	h=To:Subject:From:Date:From;
	b=OsjORZwQU2ANTDh4bsoVFOSVrQfET8lbz9Uw9e2/VewEt906eV4g6j386tiHDxVdB
	 ZsUkCJ0YFhyohUNf88+9H0kjQjoNI14WCH8UyIUZTKzes0AYkF/MTDisF58m3qfWpM
	 CpmVL8/3DQuUi5Sr1aId4X+3P7NLqRvFjIem9FReOcLKSzveWoFDXMKw4H7FORF3lf
	 dKj3a6Yp+PqZd+dgLUHLYkhiC7IVX8fku8Nhz5444ulXhsQbLxNLJuyLSZ/K0IpeRE
	 N8pIR1zChsik+TPV1zGu02ynL35RS7v1dO6u5gx1ukyH+LudWlWjcrDMVRMD1cTh7j
	 kpTfcngQVAsQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B00FEA80D
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177442049358.17439.683016581074902329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a41c0284a0ea3576e222ab03d9d248dbc1b73afd42ce141ebbf77c7f59516d
Date: Wed, 25 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774420493
