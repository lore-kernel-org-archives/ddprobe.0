Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329C51401C
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749591594; cv=none; b=DiTRCIuhAc+Cj+yeDY/8L4k16R1QqXBSrdTOSBF5x3+hejIMw3HmlB+fEbfyBHZn4PR5aGk6CDLRrtXFzvPjbcw0eEHGG3gK0FzyMS3aOFy74kYk8bkFvAUKAJk8ttkDsLavRfc07IkcoBdZXzfGs28g+cxyhpqoEZp3zDlXBkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749591594; c=relaxed/simple;
	bh=a64GFr0dvmUSf6NExVQErbTYk+fp+NKFlpQaA8Vnkng=;
	h=To:Subject:From:Message-Id:Date; b=sQU2oeEsv4x0B51BFkkAcxl00wksHeD37IW/IATfI7fEgHc8DQg0kRBamEgJyBvsXiTUlLvELR+5dOJ8fLvz8ZggTsrpv/+E4V1HWJO4CXrmAmNihdm60SIUc76D9utB4DaOSGQhD5NeuCf72birLotcXlHM2fLapoWZ9l0uGDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUd1YKI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUd1YKI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D21C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749591593;
	bh=a64GFr0dvmUSf6NExVQErbTYk+fp+NKFlpQaA8Vnkng=;
	h=To:Subject:From:Date:From;
	b=uUd1YKI1ItOixcAscd2EHePgFTAo0QSpB+C9IezTe7ISckQTld5HeN8jP4dJypTBX
	 s9V1Mge0tx5/kxpuUGtHc1ht6e+F3SqIWrb4OKakLstpqt1b4mvnH+gbIuNIDN7iMr
	 XUOjm7gCjXD93hQN+iNQa4oORoQQhMZekjNNdm7RonRs0/YWNIpg8/MLn7fUIYzmu9
	 NHmdekpj30FTZ6Rj2pedWMZNiu7+7e1wEZ59FnFOn7c5/eZz8hLiXGvA/7rChX+8iH
	 JxT+ABieQ14lfs17P//tTjvkw3VqV3Q1+0C2VGxKh1t7C7RTCtDofDYv4ys9RvhNA3
	 fyR1RUJRvsj8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9302AC677C4
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174959159358.6348.10570277071078423499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fcaa11b23754efcd7fb75e267ae3f58ead1ca0632628385dbd84405f0c2235c
Date: Tue, 10 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749591593
