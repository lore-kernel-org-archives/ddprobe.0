Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447E43EA71
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 20:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715373143; cv=none; b=UH6zB3czdBOWy+3omO0d0GTynJkZRrre+/3gnFBUHNCIUGlu5ans2zxDtID7q5Zhv337ThtjeT8J5zqg2GlJURpxf3vJLnbfMGaFZPVOFXLm11umE1dT9wYwBVD6ANjnzRnEPVnzcQ40r0gxWr00Gh42i+rx21xTFo90lNi5nvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715373143; c=relaxed/simple;
	bh=XUonfe6VrfLmXlKCE5ZNZa4SMEHHGD/6Zn0Ss67PPeg=;
	h=To:Subject:From:Message-Id:Date; b=Kn6LFGH9pxxqoQi2KL5rYy4BcqDehvqd2tRsTZ2wGssg42SgXFk1vY0hHVexVNmGYFBlbJ1geZa2NaRrLnmd/GssfDbNVOLVywv6PaPOeqDqWiz8UAQeOvd4Ptjg07LvaehzOp2MWFjUZSNvr+RLyqi/gbFYmABsr9/1VJFOdc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFa6rjOt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFa6rjOt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBACC113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715373142;
	bh=XUonfe6VrfLmXlKCE5ZNZa4SMEHHGD/6Zn0Ss67PPeg=;
	h=To:Subject:From:Date:From;
	b=dFa6rjOtBd6S51NpdAbvhIPIIBE4+WXJnNEQMAsvY3TYopPBd0akyUOQ0Z8Jkqb5K
	 Kjq3MiFgk075peIdu31Y+frK8u+ZXahsFpHnMrirhFpeX1FMxX8HuxzjDP90cdc47P
	 0ziEhkODInT+HUU59MoekwvQBb0h2uBwlP7uvCfoHUT/7a9S87GpNMKLdXTa1GY2aG
	 slZDwwcuPF49h41im9RZxQNz7WyTbeWD8bx3w7zJ2b8PbBKV/okQOsQZQQkiyJlzh2
	 aHEt+ERYtz8k8IMJBaMblYAnVgj0B38OG9LiVnd5oA6Kngt1I1edIJLiwag+KLlMEo
	 +igX6wC5znJ9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB0DAC25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 20:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171537314275.22701.7173611777931094516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1349872e9ec1098785e562c4e75ce5f97acb8cf10bc623822cc1e778ca3e775a
Date: Fri, 10 May 2024 20:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715373142
