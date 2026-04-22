Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C62E223707
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776876454; cv=none; b=qg91O5SBvbWpS4aBFqW+Z1iBkRm1NLDuaA2dMfl9Dz7/qz/0K5w/OUTlXvjogUv6wg13LlH7on1KBki0Rk1armc239dsv67cD4a/Ttkbs07YrlGLcPBhicwKCtYcIPsQJUgOGipuos5F9uEC4CqQYf0h3g3ogM/bHzEWFZp3HGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776876454; c=relaxed/simple;
	bh=Mu/WYyvgOKYDLDftfwYEVO0AehbMAK8CD2LnDpaKGPs=;
	h=To:Subject:From:Message-Id:Date; b=dOiHto80SWs26xtUP2uuIvCWmMgkrA8UxJVhx5pJ0+3vM3vC8JqcQrFMI88zCg6kfANbZCu/FgqiBkPJmP7ol2uZIsPbpY03XeqeNHwk/CbommpbJzkJydVFQdps9NilL5QCH+IiQaso2X+bJAzxorRqroP2GtWAb7WwzvjQZGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMs7UDdu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMs7UDdu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95FAC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776876453;
	bh=Mu/WYyvgOKYDLDftfwYEVO0AehbMAK8CD2LnDpaKGPs=;
	h=To:Subject:From:Date:From;
	b=FMs7UDduncZogo/lMhGQuVKNbAwfSALZ0/rRR+qUfV2xWUJU5hzg1ydA3KK+KN+tv
	 ELQz7AZ2t36KS6pjb668o1G9nBF9pzb/NORjzm3ZvKN7evUajxN1F0vc5VOgRsdRtJ
	 2EucqttsjGqyfRwiC5NhdZKOPuaC/JebB3NsuM9sjtbSjz/DOwVXghWsacSAekn0eE
	 aLKd+vK1eVJhxge/VaH89I0Gd3fZh9tUcsDKGeg87UgI803PT+8IZkh9reeNjfQDwj
	 XO5M25UF+ChTsbmWi2oBetp3JjHWPXhM+SLPIeAbZ1SggDWK5rcJ5A8HkGBSMwbtIr
	 MlSDBOIBlH01w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA12AFA1FD7
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177687645368.24547.3046078546127682816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aca2757487d3e0f4b932a5e6a8bc8789aed6a5c04296584b605225206754846
Date: Wed, 22 Apr 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776876453
