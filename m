Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E8635F602
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779307834; cv=none; b=gzpwLYoTBxTSLmGaOXFUyHgXhr8offxj4c+6/uafCkK3t9kic21sXoRWhcEwH8rPTFi4xI04KPRxpaGhwvDVoXzoJlOesXO4JzyUFc0vQNE3hDTMjJ//4KkF2hIEnlhiLglSg8tQKNPy3vQ8NBeAFct8rp7Q+nYh0mEb9XM9or8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779307834; c=relaxed/simple;
	bh=42I6d4QZg21z72K5pg9Y7SmJhweg5Z8s9bYrawvohSY=;
	h=To:Subject:From:Message-Id:Date; b=aM7DjGUCre1ycu5pOU/nFjaPzH4wRpV6ZggvhCAySWKLKK8nqnkW8gbVS6DOLbrZp+Yl32pZb0BkahGHEMkhcd99NtuQ23dl++xDpOnMMUbacR31+F5DxJ4s00bycskqYRM+n7y9CirOe4FfU339GjIZHhC7w7llNaHFj0iu3JU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+NYqmYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+NYqmYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 57170C2BCC4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 20:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779307834;
	bh=42I6d4QZg21z72K5pg9Y7SmJhweg5Z8s9bYrawvohSY=;
	h=To:Subject:From:Date:From;
	b=u+NYqmYprrK7MeQurquxf+QjiuHM1pV+dQmBK3TbtG838VkumXb/c7aqafafQXwuk
	 Z9ke+gHgRg1VPLxY5AVMlEhKtPHlcbN9SIgpyv2KC1ELboQIsrrutV8l4azZcQ0k1c
	 0V+rmkpMkWo4pzGzJ8FC3sdAYeyjG0PTqwexa9IsU6ksJTwhB+ioQoD+8hkLuBkXj4
	 ONb6U0KCl1iBg38rMQ4U8KfpFiQz8XryV6goGE3yc4iKD9FyYGF77iyncQRLoaYnfg
	 X7m8uBH+dGH8WK5WbyAASwnGutTr+GiNE58psKOGw/QN/BlS9++3kZtyfhFXXWE5Jv
	 WkjTji4sxq+YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C3DECD4F5E
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 20:10:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177930783398.7810.13365306221782433512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 182cefff08b5bc3ac21e3c9abf6776a43e6f9827bd98f726968ccd7b2c158a1c
Date: Wed, 20 May 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779307833
