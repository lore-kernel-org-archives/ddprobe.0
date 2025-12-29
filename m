Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224D025D1E9
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767039234; cv=none; b=nMSpb6/NsGf4eY6VOHzGSxQ3jeo3jPZHji8qIN8JV3vZJpxVsb5P2il0zU4yMqIR3NvYFma1k24VJJdDOhgdSKk0+xx/wrZXLlPppGkC++y5S/6qNDnsLzr3ajeII/ScXJTL+5G/BBx4LL3A5tfN95sgis9sRWUDiuuPOms2iyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767039234; c=relaxed/simple;
	bh=pMx4OR/EAd+qZF+GvsdIBk+Sjqe6B69JFoQ1Z3eILak=;
	h=To:Subject:From:Message-Id:Date; b=hsBU4aW+ofC9/XK/QNnVcdrH98YwT8yRLs+PkA3AUTHq6aEwsHjmsofO6wPG+CtyNKLauUlHEvmAyeoJakxpZpazKWw2uvIraUbqka0+E7OdfvFq6sezh5M9tg0/grH03bfmVuTUbMjt+4dWQKY5FNW4m0WOMF4goMRJ1O9xfkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/rGrujk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/rGrujk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9F8C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767039233;
	bh=pMx4OR/EAd+qZF+GvsdIBk+Sjqe6B69JFoQ1Z3eILak=;
	h=To:Subject:From:Date:From;
	b=E/rGrujk2zgyjartcp0T33F0lEkhPGQKg/v/Sf4y7dxKkeDZJ+odDfgqrPDZBboV+
	 WUEd6cFrZ7u2XmIPyGLMTat0pjoXE2vfsy2mS7eEDUOhA0QgxwU5IWdv3IsghXPdzF
	 7+v/3ryhKmdUh9Rt7p3BQ59wwCi9q1xW9bXA8OPaE8D9W7/vyaA6Pr1M9nsIzIy0Lq
	 tavVaw5ZStSdjFhnqB61H/nQo2aNjVb3aYwnNYEF61lLsmITD1BjLwrdWntbjNI2q2
	 B/VxGjkhhp840WF3oMmojuvWVnhVE+aOI4jSbYqP0ky3zjyJa3ipFduoEmjXVKZzcs
	 oIa/riD6ExQng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90368E9271B
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176703923358.31487.17434352866740989920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ae99f27d7dc38b257c34df41e135c75872aaf23a5b57b4b1f5c6b42436712eb
Date: Mon, 29 Dec 2025 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767039233
