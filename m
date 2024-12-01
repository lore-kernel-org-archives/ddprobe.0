Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C96C2FB
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733024154; cv=none; b=d5LouJZapQTo50ErwJO8Ez4aiQcjWTnxvAAdQBLXjYr6eL40QTEI+dyaNr0KB70OcOM0Zr1oNuIKzqAUztU3aNtwxjFKvre/8/f5tSsmzgAVFh9dOpPWWGtH2sHowQ9wNjy3BoR5pDTNc1bvArWQMoAbJuj2flwqRG2n0KIfmXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733024154; c=relaxed/simple;
	bh=lYKSdzkhAwrJIsHrl8dmnzdpMQ1FUO0ytPQMgMeksmU=;
	h=To:Subject:From:Message-Id:Date; b=u3I8B+iVIv23IEAnUpO8FrDdn8XErOpJpgF9dLjx6q+PpDlUQu+d0NlJJqb7oaXeiavKpjSc0k7+KSHqTj5k0M2pcL/eD9lZ23uDWzXgo8600wwweK2KGImSTm+932XUT3dVVK7Tat+MoujsqwSfKVgpvVIOcLEWPbVuuB+ouq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ts4eXWeB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ts4eXWeB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88FDC4CED8
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733024153;
	bh=lYKSdzkhAwrJIsHrl8dmnzdpMQ1FUO0ytPQMgMeksmU=;
	h=To:Subject:From:Date:From;
	b=ts4eXWeBMpyMhjRVdF1kckmqM4+xg9jZ/QQw+75PEwY7boG/4lxg6VxGPu7U7yE8l
	 /0aaUBdn7r3fmbz0Ymnlo81zWqx00j+G6syGk+UausSHyveL+4ZPSd+b+iscdLLt6v
	 l2DyXBZI3hLsLKa/nA66NYKflG4v8n8GJnhuh4zD3sxZVz91XkdTsTTaEcNIW/w9GA
	 +4K+7MlhphhJbGf6tADF7B9U4FpN5tGno9dqtCxfSG7HF0CyTAx7w47vBxxPe3u514
	 c8TxoNm8eQ+sKf5E/BMYoOFEYiNAUBi534VDqZFylpaSSGRxO4E4G6BCYt8tTIKRye
	 iDYlJOyAow/4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED81D735F0
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173302415362.22185.18035469356134214754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e8998c6beb8543b671d5217720be7be0a0ac4f002b6a4502f0f2b0a799da994
Date: Sun, 01 Dec 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733024153
