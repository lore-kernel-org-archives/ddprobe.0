Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B702E3707
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752460194; cv=none; b=nMH9Tl9reH6v0YfqS0yhXp2IKtFztjdWgU9/A0eRykTN00TAiHYPaeaJu4wZRRSK7y4KocdI/eU73rKPvECSJpRDnKYpHKyBx2gXDmuGDESeceHuUX4u+gATInmZbV2A9e63eBpds7e09IU+nYcN4Ikv/MRdHJ3QKl03hHnzxcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752460194; c=relaxed/simple;
	bh=cYdMGxfsXozyrclAsTv+UVbE7ZjNbt7FDEoXx8OsvXQ=;
	h=To:Subject:From:Message-Id:Date; b=TYACrYDF+zRUefHdwH5GLy+Ks599JqCzKp1pDEedV70ATCO3CCoa4VZ4qi34o0l48ePb5iEYT2y8cWFHfrLCiAMyA3+ND52dwCoIIMF3E5wnic3vCqlvMgzIaXZJLiSR2Djrdv1YN2BP/lCtSmveqYAG0VQ3KlsaD1NLVLI+sFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R0ZX9ZnC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R0ZX9ZnC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30D4C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752460193;
	bh=cYdMGxfsXozyrclAsTv+UVbE7ZjNbt7FDEoXx8OsvXQ=;
	h=To:Subject:From:Date:From;
	b=R0ZX9ZnC0oijUo2f0U7krw8hkvaQ3HDjG9Rtrd/7aVT01waytapAGDjR8CwwpIFvR
	 0BQqN5zDCsimKe5UOPLIuVur4yICVU+2QIueKcIO7HxcD8CAhNjxxTUF6hvLW4rUiK
	 mFeGQfF8RC6ZaWNdoLXbftbj6LTALgpDz/Vai9EUQm135oKT75ADsLn4ZUOxUEYcoZ
	 +0HmWOObmMdiuApFPHgAY9v9PftugHfyxyCmvZUnd2Ru6x6iNTF4FE7twf/j4UQbpq
	 6PDWtBaOVi8z/FPd4AYe+46ZGUxCUQyvlu+QoEluHf4xFqeijesBGJTOwJJSnZqVh6
	 VQvJ/r4pUzjKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E27C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175246019357.12797.9527093583225192547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a28ffa4854b2278451e8d059310dd12f3c180c3a9ef447de090a41c3f88177a
Date: Mon, 14 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752460193
