Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2939A1370
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723332354; cv=none; b=NDpkHNZQwgVmZtekDkHQr/N1QQXKh9OM+onOrmwB0896okKHnjJ3JpMwSnXKblEHinb1jLSrt7NKA0V4oxhVhYURySxsEXLVQ1h072ZS6uuBbzm9eyN6qBUG1SCNH7s0zX//wRv368jEBVlbraSpmVebHPVB6/FGC+Pn4QM/da8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723332354; c=relaxed/simple;
	bh=Vmy+drK+8dq339gmVA1bZdbSHlLZ9SiXe9sT2ashawI=;
	h=To:Subject:From:Message-Id:Date; b=FRwUBmZMw/e4qnMUrkUCNP7UQtnrFJGptX3FWdoLh3FKHiG8WaRc/4f/sus9XnEHecwn/9QZS1PJKbwaBufifHV0ZTTziHSpd4Lp2OOdbFSKr0Sl8Ggk56glVMxwlMeTjnpQ+lAbfX2+g/NHqExyk4JpdybDzPTkw6Ruedlj598=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVvBaVwE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVvBaVwE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A203CC32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723332353;
	bh=Vmy+drK+8dq339gmVA1bZdbSHlLZ9SiXe9sT2ashawI=;
	h=To:Subject:From:Date:From;
	b=RVvBaVwE27yDukcDkFsQKvddSSx0yKbOy56wTms5hNB+faN0xONP9iOM4M2FMebEC
	 m3zn6scllRlM3BZu8Uf4aBPkfk1vvc8t9tfk2Iebe00eXV17ndmA8MsN/vusTaGbhT
	 U3y/z5N7J7xR8yLlbpBn87UI384ML3euiyBhCRIKFSJvc9IJR9YuIWF66dsoFzDvPW
	 ZcZj02RnOuNLk72YiZOOjRAASyo10r9pbd0gjrlfF2e1HbDMtu9AkaEMo0aiQJ+GKw
	 lyr+ms1sHrgxr6E6wzy+TipPBfXABJXtcjf/E4DXdKXjIKaVEywMBfrSXVjSKVdFUM
	 MNah01C0qbQug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9F8C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172333235358.17156.15386811240435666404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04d2cc8bae7eeb0db39c15ba028769c174e894eaacdd649efca466b1544bf122
Date: Sat, 10 Aug 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723332353
