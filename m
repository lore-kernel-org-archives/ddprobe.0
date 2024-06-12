Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74EFF167D98
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 07:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718177303; cv=none; b=drEOEvwxcztLvOg5MkAYObB2Jrs2fY5wi3M3fNF12lQrAaZyDIFvoAIjSUxJQ0g3rus+SHO5OaaOgHbQKX6OjFaigFpoH1+9JFKewnMgGx32ky/NDDjyvuQzbR0gSRCYSRy9gO6fyGBBZUrsqMVN/pbVqmHak/f8mDOjYQhwISA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718177303; c=relaxed/simple;
	bh=RKiCOMeH7F8IsoyR9jcaHdMXNBrAgVlH3DAxruVzMww=;
	h=To:Subject:From:Message-Id:Date; b=PLy2kIMaTf1o5mnHNJ4SvfhDCTaqB7zcKUklaBsTZ+sut9J+0nhI7QSnqCxQo0QYGEO5pGKp1c+emsIEK+FiUHCj8rgmQ/dESeiWQbvaAc04z0UVh0aE2LICsl/zJi6FFia+UJACtE/jBha3g+ppbaL89teSwVpwZK25G47RTGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODWKcMbX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODWKcMbX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7F7CC3277B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 07:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718177302;
	bh=RKiCOMeH7F8IsoyR9jcaHdMXNBrAgVlH3DAxruVzMww=;
	h=To:Subject:From:Date:From;
	b=ODWKcMbXbr9qu4uieb8+AaCT3eaXsh63NucgpqqFn2T1+huKoq8Vvh+ibPAs0fcfC
	 fTP2Nki4wHpiOdyF4EYgJfe9KjW6BaCoFP4Zup4L+XTjaIJZ/Yyh3TlSS5cZPj9xn0
	 YKgh2zk9z9F8q54zNF0NHeacSRx+60duhjAGQJ9bQ9VQn4eTOeE2Qgt4fqQxrTUXlm
	 THHfjONVn3AtrCmoVAHDJKueswiHloG9dsyQk8REDFprfZ23iZmo7gIRrhYY5mH5U/
	 WlaxJ5jIyG37BR4SkxoIilKzwQmj0yZ31YgzijRCxyiqtToHmngZB9wKj5pARu4yIE
	 zYDkaZllBtW2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D390EC27C77
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 07:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171817730285.11792.1456409326362030030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15ee2c049021de93198bbda08b929dc329fb8c1204fefe2000d89a5c63558e7d
Date: Wed, 12 Jun 2024 07:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718177302
