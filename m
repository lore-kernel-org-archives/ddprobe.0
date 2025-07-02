Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1338E2DE700
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751490594; cv=none; b=ZT75H+4q1A2gx97NyI4VyHAjRjDggvolHQWz9piFu3sXXlLLscvIdOvxdJfobaS1bwTLQjTIsCGXO4K32dG0kH6zxLBKRDP8pFxtzkouKYUOwzSxZSdhhihr5JAIslWzzFnOfasHz95ooyqd/VnzNU8Huak6Heq/yiUBqfKiOb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751490594; c=relaxed/simple;
	bh=RE+dw6P58rfDlAlL/9NejiEUVWHR+OsEFyqVkmIUde0=;
	h=To:Subject:From:Message-Id:Date; b=gXvnTEWTuXFNZyTYrsy+gTnR6Qxw6Y68hzK4zVcNw/ARpXw9VcDN8y0PHNIT5ET8EeEgO0wvg5P8S3cnsnZZwBn6u3tia8SPw6y8TqEgoXKeC7VxHIth8C0yjsYiP7HJBxsRE+XeEt2tay8YBSSGeHv/1/D75ENgnSiPvf1Kzh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHZVdFVm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHZVdFVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A94C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751490593;
	bh=RE+dw6P58rfDlAlL/9NejiEUVWHR+OsEFyqVkmIUde0=;
	h=To:Subject:From:Date:From;
	b=nHZVdFVmMDXG5w81Ww0zpUgzYbfznuMfGoclKwt1qgXbrmei9x09cJACpJ/WFLhD0
	 9jA+v395tJWOhh7ObVYWLCwws+a9AN15UHCcqmwaNlFq23xzPabrkBXkpCGhKvNTPo
	 AOrp5r6X3436GBhABCzHZoaOcAjScVIXlLrvK8S7S5UCDsNQGLhdrvoPnjNnsgcYiO
	 e3ShEjGZ33+sdsHBqJVvemXipP+XfPx9WQsQuMYNI/Tda7+jrE7m4lNhRszPBAfhex
	 3dRb5dEv+/09no5xaBGo8KppB/3HgO/Fra8qccro+lLQi2nlHAdd6pO0oWY+RauVl9
	 M4dzFdRBRaJQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9210DC83F03
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175149059357.5526.6038401678280194869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c1f8f11ef405bdd1d2a6752e2e42e42b4673e84b8709551dcac6f335363b3d6
Date: Wed, 02 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751490593
