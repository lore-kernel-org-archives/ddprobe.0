Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8D9515AAA0
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706777897; cv=none; b=FazZ9YUy5pUvJU5JcdsGQZFxObWsnOKhRYEjuMM0hUiRkB7a4HNLGyt4NdPUaojUaamelhkeYM5sXwAG6Q8uhRwpX9qEvt7+PBIfuGkpeVwc1m75jdGKAZ1FIUGYb4TXe6x6VVWqY0qlLnQjC3vMGzh+iChk8myq8/9XWoe5TLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706777897; c=relaxed/simple;
	bh=ZyBAZ74LEMnPrum89rrhidWUoPcNg27+dyvHRt1SMvY=;
	h=To:Subject:From:Message-Id:Date; b=S3VXIqR2gH5lEpjj5cGxQs6kWGDGb6WPexnTubuLIdk3dsP0D7JMpDLohG1+N8Y/Rg2JSmLND7Xm7MAJJHHraT2hYFyzRHHhyi2aegcN/ncAoUP0ht7dhG0CkPV3Td+RKTbPPgqIxGenseqH5l/NcHAgCgJIhCIlEnMgMlBjiFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khVxhXeI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khVxhXeI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74198C433C7
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706777896;
	bh=ZyBAZ74LEMnPrum89rrhidWUoPcNg27+dyvHRt1SMvY=;
	h=To:Subject:From:Date:From;
	b=khVxhXeIQSX1uCqVrEdoUKws7YJcfYwAtaQ7d4XHL26435ux1PLrR13vv6RebsfgZ
	 Mev4JMtVsKghyjyWuAJthVR8UOCNVK7TCuemDMIpYEq/ui65/qxp1QDcKviShveJwu
	 AhoROk5GZRChVt+udOGTJimOdY+BmZJrjj4Y/+LmITsucOfw9L4fYHYyf/cuU6W0RR
	 INE4Mgs1Zi0eVnTPFNoNkZQ9uLIo4Imk/5G3/cBN9UiDFyLXo3Cakjoj6CEsaQ6QQk
	 JoTaPoEzISuVr9aM3flZET88+ntThLI2vKIXOQgcLjlL1ojjq1iMZPTG0A8y+tbm22
	 xsPYXeVOrRGDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BEF0C47DDF
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170677789636.19551.10804813800149984505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb8e3c30579fe9accca82717e9d237cd73680c84fb1d3be4337a6d75abb6157
Date: Thu, 01 Feb 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706777896
