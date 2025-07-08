Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CCF21CA0E
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752003594; cv=none; b=jxwyLtM1Oj5QgzSmtybcE2cDv8ZxVyAwcM/liJmHWup6KNt6w+INwtvU0T00moU4FKGI38YenNhdki6mZDaBdoj3ljPc9ukpqhKKCrpda/FfYAYaeedQlaxu8hw84ZMCt396uwgieEZBO6gryTqMdSNq55hfID4obSEy/rlNJLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752003594; c=relaxed/simple;
	bh=MTbjSPFy0wC7P1pM4U7VIrM9MItaAJqwcHgKP7hX+Ws=;
	h=To:Subject:From:Message-Id:Date; b=g8y5CeDPRlsxOrNk7+tmIQdI427p/8oHf1e7+LlMctyv0MMtFY5/Xm7zeffdCLtx1UgqYnMs2ynAXDM+3baJvkYY/TNOKqRp/QEXv6BOJpf01E6a4LEI/I3xLppjIdoGRgkxSgCmcGQ05tMCBa3z5546GkyvxpS7fpC6VasGil0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQSy2nzf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQSy2nzf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9115C4CEF9
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752003593;
	bh=MTbjSPFy0wC7P1pM4U7VIrM9MItaAJqwcHgKP7hX+Ws=;
	h=To:Subject:From:Date:From;
	b=eQSy2nzf1zc4nYFHu2AjBo274RXhl5btC/9m9fDAW+jsOD6bLE2oUokC2r4oca2yG
	 t5EHwYzQEw1g/Dxf1LdgGbSLulJJhqiw/e3XNnevjvq7DAIWxdMYzZcgCDny/pjpMK
	 vvSbokzJGGWnxb+7MIG2gp1a4uN2MYQDfzuwvrk9K3/Z2rFJ/l6kKTJRUrdt9VEW3G
	 UAAqKr+oe7Z8r5GL/FqKwWxMd8MndEkHLa73qWhUZsILH9DqKLq+fXa7VFBsQbeFGQ
	 ZmhCXpQcBmORr5ZCk1QchCjy+1msFfnRROP2feEBO9Zo1KHFLcsIKvXQUPseNhF/Id
	 QBfgyc7f9ab6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB56C83F16
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175200359363.19164.1718097589319916300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d695b9637b8db6dc4ffdee86763cedcea181c9ced066c532976a1c490ced7f43
Date: Tue, 08 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752003593
