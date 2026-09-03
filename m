Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F79371076
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788478834; cv=none; b=c7rkMYgeW+dTErSeP4mKya0Pzjz2RnsrJpO/yJi87KXBxjEl/rgjwHxgAlF/Ti4iNTkGVFmxWv1AFO3zW+8QwmaAgqXOMuUvrO2iyrjow+kN/X5+97M/FTK7L6fvTIHwEFmVCJ3K1Noby3hSi9XI5fB4+LtOokYx0Am0sxPqooo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788478834; c=relaxed/simple;
	bh=/zlDIexDhP/1nuyqgwQUIekktgKMkBC1LQ5K68wvGnw=;
	h=To:Subject:From:Message-Id:Date; b=EO4JL6UoZDEr5e8/CzXhULUUVviFBlZN50Yx0+JvkmOeteYInUN6bhKU7KncDRGuQ2lC5IUj2ZoVwF0OmC2wCTT63bw4svH2KWJnI+1xVs58GLZk3G+F3biz3TcHOuB7SYpNs/ZL/u+oIWGMpYFgZeAS2+tx0/AxaYMpVGqtGVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4PWNVW5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4PWNVW5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5733C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788478833;
	bh=/zlDIexDhP/1nuyqgwQUIekktgKMkBC1LQ5K68wvGnw=;
	h=To:Subject:From:Date:From;
	b=I4PWNVW5FOgF4DLYXW1Homx2c4T87LXp0Q0+DOm1MK9ffdEi2umIa8p/IRRE2sLPI
	 bBZzYlCUnXamHdB5l2+FSeWXOOOQZokseSFoqGabDZ6Mw4rEaVDzE++ImgyHyVr325
	 m760DsjbpOWbOxKrac9Hr+VUOUuD5kfHBVHDyH+gYi/SEKA6XDtGe9cPQu9MfBHdJa
	 EYmzOX9QrPUBg9ORnOQxbr3R0MmuEmujBj0tgic9lPfI4+v1ZY+6IT/VQOlonnKb2N
	 QzUuesDg1AIZHiqIZH63zYeC8SFNGNRJ2nN8P1uYG7ky60rgudhJby5IdXl3rqUWfd
	 KGVFuhREASfjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0673C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178847883370.9590.6563557301854426420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7df26219e64e0bd4d67dea689ebb8d9e3b75550c0baada30017355f91c7d73c
Date: Thu, 03 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788478833
