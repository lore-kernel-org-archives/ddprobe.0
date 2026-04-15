Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C3B3B7751
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776241054; cv=none; b=hICds/dWG6nbHv6eR8yBnjI5Wtgc8XHHeLZU+DHVvK/zxiy7UJYsyKHXRE91/V1H+WFGZ5mryLSVsWo04LH4gFfPn2ZC4bjrQdyiOlT2uDxwgnk2mURVWRDSYODwgtiLUwqbFsVSdBgjXYuSBgHxwEfpwmTM/gU7PGd5djMdLqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776241054; c=relaxed/simple;
	bh=SirnIpQvF6XlfBODfoLbn0Q55sTvDdYOkGegVGRiXsg=;
	h=To:Subject:From:Message-Id:Date; b=kIzOOo0IVkJWdQkKGXxQrKVmFhY2Xxxy87F/WjK4CRoeI7EC+8AV3XiasZjZd9PSZmkLx9V7pQnjhImF0K3gNLl0NyBdrWOyJhdiJstHcqrP+e2sQkp+2nuGjmtVMmAmvq1dAb8C1ku7bge/1NTg+p5WAsnlSoIZl1DSg41mSw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ol04wtu0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ol04wtu0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFAF0C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776241053;
	bh=SirnIpQvF6XlfBODfoLbn0Q55sTvDdYOkGegVGRiXsg=;
	h=To:Subject:From:Date:From;
	b=Ol04wtu0CX8WgG3uSDmJ46vu/ag2uCoN1rg4tLUx3afRnTCubMuolCEU0yIkS46PF
	 l562kmUZEckYaQb0WbCxBVaBEtrDkVnBsZWEi4vB8VqdYOqR1TOyMnYJfdck2jEwjI
	 WeMPEtK8Vzqf3U9jlGpAWAqb1/jTv9NqQwAfEs+DjjACAEdfqR1aa+iS0Z7azKT8c6
	 rdEHhWBsSdH/i8+jN3dcJ5zFHkAWTaVKf5hw/1OU3wn7WjuC6K5eMQA7idZ8+zNMmm
	 ncxe9ZoGd0cqvLPjh6DvFAeFahJorXqVwQYHJtaTFxcxb47l3zew4b7ofcexh1XT73
	 yVyrRjfCsQK2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0423FA0C46
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177624105368.28108.12454447629097527830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb124e179c20965c5ab3ca97e062a53c1bb7bae10d90efdf3dc172b1a33c4652
Date: Wed, 15 Apr 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776241053
