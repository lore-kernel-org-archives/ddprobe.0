Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1148D1C6892
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727811954; cv=none; b=QY5Twtl4cljKFimghslIcTKEYKKYPBSkQHZGYuLucZCbJC1AhonJ4tIez3oEKIkoLfD4/NQouZjHVlWTC7suyND5hpKT6rNNEnsCGbd+YgkEBakK5jwpbWplNZUCFH0IwizrZeL6gwvUmV8Yg2ijfqht7qHi7IHL5dHn7mb08/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727811954; c=relaxed/simple;
	bh=/8U5rd9NmTit4rp1vhJ4Se6/lkicQBmeJFdoJzjD54E=;
	h=To:Subject:From:Message-Id:Date; b=UYbqLII8KtRb6jJhdN2GFTG4w3mpWg6pX4omh2Py+SDh5rLBEjKVqbXoP98KUFQsoLGp2YWYjrGphtFRm+C/6hslR4EVS/3CdiqY6HPzFoOgz8Qf9AGybvJDyb0nkzWQ7gbVkDCS/7m5tvba1QwCaotku7lHckytl0KBU57L/vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=satLoihk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="satLoihk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB89BC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727811953;
	bh=/8U5rd9NmTit4rp1vhJ4Se6/lkicQBmeJFdoJzjD54E=;
	h=To:Subject:From:Date:From;
	b=satLoihkIckweWmvJwha/qvmEe2cV3MXv/LRo4w5XZheYY/b1qnwOPCJwV8sxTznI
	 VXOeej4j7mraTPtzk0WnwtpVO21ShiRpxdBpVL9ErKD7ESWjFJWOoh8bt1d3P0coJN
	 EXj0ExI/c/E9YujUyHJqb0jrDt17bVuwbvHWdXN3iVuPWdPJsWxRbPoew+Dx5+xIyV
	 s5hoQWPpKLDK1YL8mhxdiUH6Q/bDD6CIyYOwajIgK7JHJJHbTUQftfLrHeg37vq5zb
	 //MgtjpJmod6d//sap4HQoheSiTyjHNl5SgvrLwry1RhcC8OsuqFjQI1EkUn8vpgEO
	 eJ0gM72udtTSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9956ACEACFE
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172781195361.15207.7812487070228454371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a82a4ee45e8b2b4ab39c6896839b24db730e5aa040d08c4c2220f31df79c363b
Date: Tue, 01 Oct 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727811953
