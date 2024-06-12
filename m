Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75AC72231F
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 03:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718164703; cv=none; b=Sb6/lTnG6KAeVYcuJ/tHtd4NTU4JmoN+c6Sg2bNz/l7N2j/ADRuAfLfNXI/6HRqPppspj+In4/oSttJXgEEdYjUmk+gglnUNUfyPJxhKWsXICh6bgChOOjXgzVvNxv08lnnY2A7doYwpkOIWukUYwbt0q957jg7PbOmA1gYC07M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718164703; c=relaxed/simple;
	bh=ya8D1EHC6ZU7KHUE344isGn8FivJSmiQgiExlZK+GVc=;
	h=To:Subject:From:Message-Id:Date; b=arAP5nRe9GT1xuE8OaVA7GAspg1UZ/m+IEoei/S7AviLN6Jilk5ktpPuVSulx75HC6YPdL7ap9ImIGARl51snC7L17hRc9ByT7NSzVEt+PbxxpWDsEaoexsNHnyhlEwSeRAJv/Y8ZwTNmyWIycMTiPsd4rS5sPVFrU1DA3qv8/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNIU5O6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNIU5O6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF6BEC4AF48
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 03:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718164703;
	bh=ya8D1EHC6ZU7KHUE344isGn8FivJSmiQgiExlZK+GVc=;
	h=To:Subject:From:Date:From;
	b=kNIU5O6le4m0rsMzuJXaYpX/RyT4pb9mhVu3EpKJ7H3WFxynVn5M61YJkJ7ztuXd7
	 hbDaxw6LUkwR5+xCBQfFI4wclhdX4t9ZCg6sDQTVUIQ04dILufIMowJPbyPBHY85Hu
	 zt2sSLMvpW0TgRDauvEWDLrT7kIflu4jzLq6+464ljlT7iqo6LABlaBtt66nNeiqGo
	 sXAwJN/IogKpLQNjmrz0P0Njbt1QvhlieYMyhi79btf43H8zPgJBiGyEcEhr16GXvE
	 E1viWkj3a4bXV9/jhx1p2pAWjvZ3wFxa3rm0KOyJuAvSBUa2dcohF1GpzkQsZLU1aK
	 oiAEC7KcgAWoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF1E5C27C79
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 03:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171816470284.22803.5796992736643700657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f8becd5d804c96e4edff76976c239197c3d17cbe64124a9a0a3d197aeecc84e
Date: Wed, 12 Jun 2024 03:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718164702
