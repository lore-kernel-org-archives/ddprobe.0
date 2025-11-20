Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29720277CA4
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 10:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763635914; cv=none; b=VCzqSEkj2hG0ERaERvosmK05aTgxQwJBtDAqu4d0GlE2iG3hEJOt8QAkyoHOeVr0gAqWt++QEMieO0/mVHAXcTi5b7iXa7dpKaiiLRiMxlW+dlGjhSSimJSbdC+rd9Eq1RZ79TG2do7WtQlXteFjEzBHpVqWnkIJBTJQsA1669A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763635914; c=relaxed/simple;
	bh=HMrTh5cKwq1H7xyVS3DoHjzjQhjDSH/u73BeZli8u1U=;
	h=To:Subject:From:Message-Id:Date; b=lQgjndFStqYfRCL/gxed/SRF+mUXSXvnyjyy56ZvtQKLdfGqp9SSiue9OxNekDwDKEz7nGojb6bKu9mOcxKN4u2uJm6B516gzqv613UcQ4LiLbElFVxGLjT/0X7QRGJ5NiZN7bbL91T+pQrV72qtuu/VFtAy44amtIgbTJ0vqfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NS3h/WHx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NS3h/WHx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E33C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 10:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763635913;
	bh=HMrTh5cKwq1H7xyVS3DoHjzjQhjDSH/u73BeZli8u1U=;
	h=To:Subject:From:Date:From;
	b=NS3h/WHxbfn+qJhhd4t/E6xCyIvfqj6QNANibPU0jsCbB/CshrBeqGp31t9GBEmvL
	 5NT3/APxBNmHdlmR+c/Hth6OeUghdgZK+F0cwjfwGn/taJ+qVvpaUbZa99DnvRsAZC
	 ycTjh6VVVlLP0zGyTAakVkn65btUph6sXQkZaWIbtlquGs16g9pMR+oEIzwxwDXprS
	 1xGTBv7Z8kx7HLPnCa2ZQnRVabxf/amHI2Rrxm/VW3Bn7AqMsAXC2RR3ff1UcZ7imY
	 whBlgssG3aXfyNgpCNbCWxONDCB0+hjyVVDCGkxUaM4N8ryO90jO5HxeYVT5JEh4eF
	 pYzGXU8Wy/BwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94482CF857F
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 10:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176363591359.15336.6172910834931083261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e3ef8a07ffece4b8e5fcba7df8bfc0d516383f1aac9e9e946e9972efc100a97
Date: Thu, 20 Nov 2025 10:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763635913
