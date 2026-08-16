Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68257282F17
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786857034; cv=none; b=jOcTPAEoVrjMhiSmF/i4CxCTE+ug3WiIQBoRC65ToH5u4KfNU162Er18MsS6F68cAZULSTf8bpQHE8VsJeKZ8yWeopMHqpROsEmAOjP2Pskam8OoVbScOFLi8xhGT37+l+MYC1+5zz/dqKVc5MyN9W/wnuEdA1E3ExngAJYbLWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786857034; c=relaxed/simple;
	bh=jrlGEJGOk6iJh1gYP8RoiEOqp3BXuDDxsmJGS/OXWHc=;
	h=To:Subject:From:Message-Id:Date; b=eUWKaQyJN1VZ7yQfye5yk/IN3muDJCyo8uFFFCP4xXrbu+EFNsAKBixReMxp/j2Tuv8WvgsSiz7L6Or7AjP5bV2Hck558fnnIxVcjLBnnDO5XG9YKppsAv6gE4E5ENchLIgGEJ1/W8ZvRaqty3Rl9dyoKdLOjDnGkQrHrjKgWkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRwwOyLd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRwwOyLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC128C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786857033;
	bh=jrlGEJGOk6iJh1gYP8RoiEOqp3BXuDDxsmJGS/OXWHc=;
	h=To:Subject:From:Date:From;
	b=IRwwOyLd4JGbhGpdFsIX8JLl18WFtRwUkhxjS71PJBLDh8rjojtrgV9wpqkQOQsiZ
	 m4yCj0Lz584TK2iSY11cVYL18fVLS38JCaWLJ8O5SXyJNG21LZF9Upb6nMKPKi8BVo
	 YviqGZ038h1XCci7HY+UTZOb72/8rUMrgPlByeSRw6BRibBU5CgTVkv8hpu4Apvjgf
	 2yzkiSiuNG7+Bowur95R8x7UayEWfyWNf3yFSUl/IXaOZDHdqUQogupcCzEYH8xiIo
	 5JHBJj6p50rc5PIutyzblkIciO9hsE8JxIzJ3XcP/pYDJprm3My0ww5iHL2S2p1hkS
	 ZdSg1JNDyDAFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3317C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178685703370.1504.7771171215109737156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21d4bab6e3925825c63fd71294b3c62e307853f4034ca04af69ef2ba99584928
Date: Sun, 16 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786857033
