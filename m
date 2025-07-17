Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1689C20ED
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752777594; cv=none; b=BllCq+M7moBnfu497w5f7mQ+SREBquZ8u3hLRByWWkyTLdzU580SOyQZnKxFPX9Z07hzJ39OeRh+3tgT+cI1H90VT4voo65sz59B0+yuFNWtCaQMmt+8nyLDUCPhLKwW/FNowN5qz+IVI78XULK05M9uweFc/PT6IMXPJ3bv9wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752777594; c=relaxed/simple;
	bh=gAdbh9L01TbUWQz9iR5NbflNlEiRr9+ehFtUqnXwIGQ=;
	h=To:Subject:From:Message-Id:Date; b=TzgOOjfzy1mDjwBlGS9iMxeNJcVmhcaVMi6EltyLx52Vsb/1lAp0+Dpq58NIN22p/HOEgX7G2JfhEBjhAizxAqABT4bbV3pqM7HAKPax3QvrIyS0mjMiYbYxYLFeY2zU/1qXx/SslTkrpYpUdUXeKAPiVlVZtwud4ar/en2CKsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oIHMAyPR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oIHMAyPR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F30FC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752777593;
	bh=gAdbh9L01TbUWQz9iR5NbflNlEiRr9+ehFtUqnXwIGQ=;
	h=To:Subject:From:Date:From;
	b=oIHMAyPRceylYPVYGhCe2XsjMQXx73ljT5wDi50AXbuUhu80iQe4qTmEsHe41jnYn
	 j6nnNtMZPE2aJiLIBSo2Cv4gwmBLYmvqs0NS4KDM8z6EpDwGOeofj+Qiy1GbOQZA3R
	 Xmpy2S5jtS41fGpR7r4+BaVgYbgBaIvzKVgUlJEdDGYWv3D5JzGLG1I7t4APr+rOsB
	 N/SEkGn6I3AQQV2Hf3olfz+4nC8HyUrn+EpkokY6UKH4OU38zjEksFYGMlM734cxzd
	 DRQ923MdLIbqc2WHxWgZd78t0h/sFPp3EJFWaoyKXLGtsTpGtW1DR0xBJpcYqhl2vD
	 f/Ym0UILQRzaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF17C83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175277759357.11716.13208974315161741671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c791139b590be5e5d604be075f8e0ee6aa11acd10ca2f896aeeb9d0c7a8a0358
Date: Thu, 17 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752777593
