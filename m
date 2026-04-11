Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214982773FF
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775869654; cv=none; b=EACfVxCxp+OIBhefA2vQ6jg/LvpvG32VLfAxGL+ecJ5rF6zDygTKxWQyGJdNyhsUyBeEYFFILV1RfyNyQl7NhcOyXVOFoN3kK2gxWOHMQV2Rfzvth49aXPQ2fnQtLVwhy4X36VMUHZs+RQ+T0fj/mzzJDo8qUNKNEaAWWHn8RBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775869654; c=relaxed/simple;
	bh=B7AxMKiB88PW1kPySVsDNfYMe+omxVuQPGSvzoQRphM=;
	h=To:Subject:From:Message-Id:Date; b=X6yJETSe4fuTN0XvkQFkfatppxCpWnNzdHF/qT/40z/djp1cmoRDuAf7fTi+qLQQ07K5lcvW+PQq8sdmYElLvbfnJOx2XgvQ+KrV65qStGtd3/ZT0PQN/Oprh8xB79FRutijFnlmgQKMaQ8/AxUBrJQ0YNCTmOWGGCLZhOba/Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gko6jher; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gko6jher"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0162C19421
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775869653;
	bh=B7AxMKiB88PW1kPySVsDNfYMe+omxVuQPGSvzoQRphM=;
	h=To:Subject:From:Date:From;
	b=gko6jherUKX952T0yikzv+NsOZUy3sOxNikJaq6vkmWNa8/SdB8sEEbnpSSrET0hw
	 L1Je47nCxgtO/LwffSDg5Cc+lPAPSTzZLWJ73aCG4TUnGzaXTdLVBxBnsPoXdEH2ZM
	 2qT3Dt1PSB7qYEtKa5MaqS9qW2V9Ij8jPPppDn+qkkAgSB/RpUK/k96zqKLjmRU5wM
	 rwNndU5qMlwnY6+rX/3YLtN9omz3JFQ3f5DnHo7hR4LUt1jLMbdEfUTcjp+dcl8vik
	 c7a7WShEUdXi9IIJJXadDRgIdZoWXXNGJL7Hx66+p7cqcWD7AJXNUsdah7lGzzpxOs
	 DyjeRRS3tgExA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C5CF45A12
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177586965369.10623.13296140072380461302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfd34e2d9efcd79dc497cf48cbbc3c10e79b9f220e7e872f4c495a18d887b2e1
Date: Sat, 11 Apr 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775869653
