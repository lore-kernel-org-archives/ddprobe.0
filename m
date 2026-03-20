Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155BA31E829
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774044294; cv=none; b=j/G5okBMMaOLAVRdEwFDeJrrcU/fYH0HwtOZEZzhgBoZ3ar+1UmwyYRUWGywlTjnjB7AgYTAFAu0ufRFADzUkKjAJztMZhCSQQvuUrcvuignUeObCTT5XV/eTGb4yBL3f6XyPtCqoenJphAONvh9Ejnf55oHiorGh4BS/J7Y3ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774044294; c=relaxed/simple;
	bh=16aRveV7qIKUDiNM/f7n1LUud6VDpYnyT+6SUmtudJI=;
	h=To:Subject:From:Message-Id:Date; b=gKYFajnAi3E1Ipt1++OnLDVDZmFaKVGfKAWjZ5nzpIrRZEf+RIH6oIQbrTPDZvyLXsmh4taC8yK5csgtvlYBOSiX2UoZyz6wMHsB9mMxoK3nQ/mQ/rNYnyKAQixPiAkgAMOILxdFVd0vfo9/FeIC0IJanAZaiJkizqopQrNO0P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0VviCLA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0VviCLA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E17C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774044293;
	bh=16aRveV7qIKUDiNM/f7n1LUud6VDpYnyT+6SUmtudJI=;
	h=To:Subject:From:Date:From;
	b=o0VviCLA/Yi1b6O/kzpia1YDXHy0DjhZLu8MJE4lYf9mAwnJXNSDlhDXgoMjsJOHR
	 n5b24YSCuzAo+NwadjRxXCRXiM6Xc7nNIvSRuph1l9IfNE/EWQQrymEjyyXtMmr4Gb
	 34CGG8RJ3InipMP7wgfE79z3qsvsLg4rAdg95cVUimG+J8t+mnvwX76zHjGumf5J7g
	 ezLBlHr0jiaTfys/nDoEsSJAHMt/OzPyHYxoNvUjgyek6SYrZqGF4P/8oDX7B8UNFY
	 WUF+xxxEffv0jNlVRe5OSNU+JapynwqS8TIljyyraXMqiaL/oj2sqeigijc51AB4Yg
	 VyxFciOFCEGgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9672E1099B40
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177404429360.8778.10275634724153559418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb730590a63367ebebee35323928ec3206ae3a5d291e3c5fe309646e72048a76
Date: Fri, 20 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774044293
