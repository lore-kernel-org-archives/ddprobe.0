Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B03E3C276E
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786955434; cv=none; b=PcA2wrVk8pSe8CCfxzKY7sMrPU9joeZrB0jdfdfqvhSpzz1hCuYLacOm2IHfONB6kzTlc+Si1VoOTzyr5qEK39yUd5F1x3HYPE/EskiphrFUKyzPCHoeB9NM35y0nLnca5BexzkYTt5LUbtvvwruCNp7s4LQLc62At+Fzf7ucrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786955434; c=relaxed/simple;
	bh=gV+7TCkVih8xzQ0vIazgl9qH+T94BHXfdmS1iDwFb88=;
	h=To:Subject:From:Message-Id:Date; b=svm+SFWtZdo4AFZ1LvbEGFqtwNaLPqYgrzQjjYm2tz3R8QrD9LnIYeJSv05kuintjlnncY2yMa6/RqFIKVVMCp0rv0RjHiXd34BsnAonD1xmWaemaN/Eypkfavu6SZfPOf8VFRo4CxVh3a38Pqz16gw/CBtWm565zeFAIrn45PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdsAKzQ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdsAKzQ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A46C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786955433;
	bh=gV+7TCkVih8xzQ0vIazgl9qH+T94BHXfdmS1iDwFb88=;
	h=To:Subject:From:Date:From;
	b=UdsAKzQ1g+d7i7IpCJuvdMz42zjvuDe327nUmHIlTQ8UlvSV+rksw1bQASHoY3oMm
	 7ljHYXVFlKvZz8FsUyBafC8D02Y27h8sqvketoOoqUMw3kExua6st53rdONGCLowoO
	 ldQRg1dz5+p3E13n59b9SAHIu+sE5viYZqMpTJiNWbQFi5JIIM77mJa3+rQm7gulPP
	 iqHISI/oBKqeOmIPu1ZlroLCGeIe6bIWm1IUxr1RtrbA8O20MI4uvcFlr0vLCbjaoF
	 ZEUkzyUOaOPejGOOLDe+9XDMdjLjVSccwnwmvHb4naLiAJgRhOn7qlqZkEGrtMZU11
	 K+eAA1mSEGkgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE62C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178695543369.18612.15695847598059983412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 550f6f4cbea4317cb52ce9f2b27eb1228e3a6012f4c83529c61b65bdacfa4777
Date: Mon, 17 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786955433
