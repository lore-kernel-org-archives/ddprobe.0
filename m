Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0851A9F96
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768511634; cv=none; b=XJ/kI84dsOUsjRkzrdw3Ra6CGB1Oh0mR/pwDtaSCHHEqflcnWdqRgnFLGLpCX4BogPIdmk6MBAf+yTobTJ6QOE89gYLZorOSiXkTjxG28PAoNSQyq79KAgZkeCnpL7HQOoaoGH7TGZd7w+MpNwnFiz5Dbb0Fd3C/6b9jz4I0zfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768511634; c=relaxed/simple;
	bh=uyN6x8AcSjD6y0CxwqYDuazOZvSN6I7hogxfPLeIL7E=;
	h=To:Subject:From:Message-Id:Date; b=mY/+0VTt0VXk7Ws7Obha1dm5dSmidQO5ocXBS2fW2shb18vvTCSfHqD/Ap0f5E3EBdMrPGegYKVzrhtQ+nZZPxAl3dk9BvTevZ0oqC/0M7c8STNQMkffcJcne0WHYRtwbnnzXlVtVh6Wis1hIvIfp2I+d86fw5JrEee3hdnzex0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNbRGSiK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNbRGSiK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E881C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768511633;
	bh=uyN6x8AcSjD6y0CxwqYDuazOZvSN6I7hogxfPLeIL7E=;
	h=To:Subject:From:Date:From;
	b=HNbRGSiKcCpRACjyL1RgN+/KzDrWBAg2G/2fXv8UiD53rLDIQkLQzdX1C+wXNCah1
	 pCULa1eReyKTb6gPSv3gTV5QYITrMSiS9AfqhvJEMJaPgsrIz3CPhMYlrNKjdseW2t
	 f8E9Vhwo8WY0rBOd534JizE2KBylM3chl5PN3kzow8BmFrhxw7xH63utSBHTqsfcxz
	 lzlCFF7A57lzABBdY2KnJ14g7h7iulNTB4yufHU17W2IxKJWSJPohLHd4P2t/WBAEo
	 vrn6+QjxCEP1FMSxthDzOXKBy1kB9XEzw/v8ROLreeBLqJ8qL+yBdFZsiLo/vAg0gJ
	 aqsNjJ1vBODwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F80AD46627
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176851163357.24839.13617689070121586877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40b641d0d9c949091abc5e4f49f3681556125c5d0e1ed94d9d7f9380013bc13a
Date: Thu, 15 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768511633
