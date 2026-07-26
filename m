Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E961E4BE
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785045034; cv=none; b=Sx/FPu8LHzBi93XwjefrsGfg7K1zVqeWwlH45eKEeMz4pYLsphv2u1NAybq+O1W32sOQ5IsfCdgHe6N9oTUn7Z648Gqw6JnDQSiOxdGZhWSXFnwkBnkfg7mI2Sfq5GiTU8PaTi/WgePqzqTHu73/Ubt030UGHqH8TcjsouXS6So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785045034; c=relaxed/simple;
	bh=0UoTUHBgNeqTJOxjlx2xESJChjxGvqyf3VByWKgbFyA=;
	h=To:Subject:From:Message-Id:Date; b=aDIzOF9MtwnpadgLh5IwSTTXCITRgUiRGDoYEFtWmZwBUBOOXszcEry/4XvOx+yyBUEKb/3CdE/glj92M6wkKuQnUVDChq6nCMt0ZOleN6SqH3JIDmGlAI/2K1Jv4ojd+oFbivxyi6HB6KGsdbtoXxNaPmrzXluCa41/Kp48olQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=db3TdYXs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="db3TdYXs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6936C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785045033;
	bh=0UoTUHBgNeqTJOxjlx2xESJChjxGvqyf3VByWKgbFyA=;
	h=To:Subject:From:Date:From;
	b=db3TdYXsLMd++xdKo88sjVczLbWeiF/Uc2EILJgWfKt+jRM97buN5c1tuA+wcKniu
	 izwEASSkAn1f4Azl5HpjUBLUQBYr51r7xOarbN6ythFmOmbE1uGgzFgnjB+T9pVLkS
	 pZb3UVXEEJEsagoAzTut+qq4tEP6Gw7iH7ji7XROs4ETX+ZEQng75LZZQfK0lT3YNn
	 BCnWZg6TDxVFk3aLNIAb0m+THyTrs+TE+iVD7/UI57Del2niTiA21Gt6b1C4EF3bXj
	 CowhSrEtYZ/5CbILac5lrPibdq05wxFgNheta1iVW6YWEINjmETe7QgjKSyMqoTmlE
	 CFkJwoWn1BmQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF23C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178504503368.15333.7494093133888980614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bf02083aabb2264706346c47125521d0738b1135a96d5f10eb3e53f63b703ec
Date: Sun, 26 Jul 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785045033
