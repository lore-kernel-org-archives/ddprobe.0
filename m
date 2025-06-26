Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150BFEEDE
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750897195; cv=none; b=LoFC21Pl+kPZ27DvCZMNeMA6grGfg3eyPwxR+l94ku3Y9KcLrrgRoRLfDxCpwNV7tsl1zGivUwsBwr3eb7ueLx45Rv48waVGwwYu25nOWacfhvUnZQEc1iXlwVj/y+SJ+q+5EFttwiTQIOH00y/fan5A+wy4CPaBx0XpumM7Rdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750897195; c=relaxed/simple;
	bh=AWdhXK5JMXbi35M61Pxiv7bn3W5BhqqrYNNAKSzDyGM=;
	h=To:Subject:From:Message-Id:Date; b=awpJC0p/1jqsAl6FDJftAjyF1RAk8uuGNFi0ifxu5eqrlJVhSFtGwe55Gjz2ZWmnCtcOw4Gm2nw0iPK1lZp1fZ3nccpf4/+C3aJUzKjSEIrSD1RF1Kc1Mv7nSjCw6BGJFY52WXiBudRcaYU7Xq4eGBoteEnOZl1RVTpxQwzrw28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nfp9rXeS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nfp9rXeS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E853C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750897193;
	bh=AWdhXK5JMXbi35M61Pxiv7bn3W5BhqqrYNNAKSzDyGM=;
	h=To:Subject:From:Date:From;
	b=Nfp9rXeSZbEMqmYUf0dm1OaQQSHPJ4A36nr/aEUTL/bvEAtYoKgQtqpcjcoLWSDS9
	 s7nU9U0gLvoL4Sw89++en9SWxkL8lWOgKIzYwDyt5j7GQFuyRvvJOF9w60M9JHiA7f
	 dvf6KNbvGiunTM1kZV2sjlZdcIHv6nLeboa0tdy1LLRlM59iy5GOp2E/QDGX1O+qdl
	 1lixAzvaCkuHHEy0FD2rDG7b32ZATYB1+B2UiQjfRQzngElhpyAvBS4ugKTWFwLjR0
	 KieJ+gWNfONNJt7ioBoJOCCsObkmWNzz3f9SL42sZSI6sWtrLmbO1jua2SxfT+oyJs
	 qJxPQgIRmyZ2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECC4C77B7C
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175089719357.27279.10256330710798143791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aad874fe801658b33d83677b1bccb96b815794cdf654b672eebced0233bb795
Date: Thu, 26 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750897193
