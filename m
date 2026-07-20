Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393E83DB334
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 23:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784588914; cv=none; b=RB1LWHR7gdEQIOAU1lcDajqoYPy75GUfvvT0CKAc7+osoeMsSGDblfmZEtRTCeQFAAd6LifKKCP+3KEKY4511LuhQl3gA7OXIEUxKq6Lr049KON2HX/jRfG1vatfPTc65m3fjNoAaV8cXpiqUd3zNHx4MiUMTYmLf9cEgKHkrZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784588914; c=relaxed/simple;
	bh=dfxvs8cGtY8x/buw4ef8TOyTDQ/62Cfu5wcpdDgRPRA=;
	h=To:Subject:From:Message-Id:Date; b=ZFVOW3Ehz8VlNsNNRqcW5G0P/bYYhB2ZEvld+ZEBnqwcqEwAJThhMKSnebwnXLU8LdKoRhqCC+4bBoJ4VHF3kZyY1oWA+Cg76jyqEHl5hd72J98HrTRAxRofGkLuhoSUTLC8AvdqByLkmoLC9XeAH7fxqZqKyRfuly7tm5QqJkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoTYsGhv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoTYsGhv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7EFDC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784588913;
	bh=dfxvs8cGtY8x/buw4ef8TOyTDQ/62Cfu5wcpdDgRPRA=;
	h=To:Subject:From:Date:From;
	b=hoTYsGhvr/46Bnegi0YNHzbON9Ga1x5stE61OCxUK7T/u1ZmvKyixVGPR5WC4Xwbt
	 3/1rGVqktzMQCpEr/1eY1kkuZAVQp7VtihbV8NeZcs1SFWGEa3pi0578PTZmXi5nhA
	 JNpk888K7G+wTDgCNy+Hc/8npJ9YeOvCYz+rA4NMge/inAEirOCU4vuutwsefgTE65
	 QPK/LnSxYlkAH9r7dj41FYFYXZYIMfIbD9h53aFkqJ4YoTJLuAvsg6MgOhuf0hA6O/
	 0w8RHcy2hB7v6krctyjmxavoS+VAherZT0bufvwoLz0rVFOIGoRHkftxW7+/nWSThB
	 krT/OvEZVguvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEFDBC44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178458891377.27709.8670315632438010518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc2fd8e4de712e23f2b831e78dc8858dda9eb579fbf5b0eaf45a90184a8e7cb8
Date: Mon, 20 Jul 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784588913
