Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2240C2E36F0
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752458394; cv=none; b=d7Vb5EdDBigDgoHmYnGY+Wlx3QHA6VQ3CKP6tt41CGrV7Wt5jPkyIu2gqJjzpNNVnYk6u/xLKVjlclWPkoccrQg9856N6biIssrbXqQ2+sgYEi0howAjN8UXgKh/qZRMJrKZEGAE3AGnCGIIt2doXzbPTVkQ07bqlHSnvt36ggg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752458394; c=relaxed/simple;
	bh=kcb4hE5GdtixoyuPdIN8HA8piCro6bVD1++ohztI2hc=;
	h=To:Subject:From:Message-Id:Date; b=ltqCPlI6lEnwVPhruIBQMJqNtZIEVS+0D3686KqYleUDcsJLfygr3EzjKDG2sN1c6aogZmbuRfWPtURNgPLVqHxzPMnwW0nra98BZsdnzgzfSLE9Rgo+rGvr7IT/FZp+iqOn+GAXzO1iqOxMOPNPpbvoSXOhtq6zFNul6dW0OWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/kjmlTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/kjmlTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB76C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752458393;
	bh=kcb4hE5GdtixoyuPdIN8HA8piCro6bVD1++ohztI2hc=;
	h=To:Subject:From:Date:From;
	b=I/kjmlTCc46YqSh5RCnflm2V7eyIQPvzszgmi6MX0ZZra0UJsNT0dyq++Hxoj+KXb
	 sJXL/QjUlM6M0SwX7yJQycmN4Or4Nm24LECzYMAmbsOZ0Qp1PrItGU6BY6Pl1gd5cj
	 NJQKHyc49PHu3vfL4X5SsfMlDpPy4IBp/Jnb01id9D6NHGUCPokVS8OLH7AMJYGIaL
	 eTNwqbnsbJpGA/tJyik1DAfNygtKKlBo/YCZ3AG1r9ZmHINT/3yHoIGT3q6y2zJv0Z
	 UNFIhDjuz4FFyd03XKEJyVxmnYgxRSFwiuOjDGkCLBVa3rcK1Deg9rLAM+Nm/5vI4K
	 xJGh77IlXIr9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7ADC83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175245839357.25682.11167096027644724383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64045ad86f4a1562a65e5cb45aa1ce76ea28b48bad2a9adc1c3a68e741e41613
Date: Mon, 14 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752458393
