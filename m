Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261CFBA3F
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761887394; cv=none; b=bnzwobav1b8Q0kgrE9RT6SOySNlVGlCrYMh59eF3yQ8p65H9CKayQpuPDoGohG/VTiusbm2i+b5G9Ht+HYSit9KQgy7UNVz1fb9ZsGpxwzS2jmRTfR8O3OhOb4debZclV7o6/cK4KsYRJRXjggH1PhQDHJlAY4LcAN6dcWec5BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761887394; c=relaxed/simple;
	bh=uGIVQ/opz1pNZQBZlQtof9Me1Cz8ly4IlOQuwqfnZbE=;
	h=To:Subject:From:Message-Id:Date; b=SXWQ+mrBVxiTsgLFmETLU45DZmQViy4mWPYwL9ZlAnQy8EXaDcql1i+F+s0iKntMKXEp7M0c5Wom5U15BdOONaWV2hLFxlV/3bXRVh5OIZddco4CLRrrNOVRRcrJOh3oYEaoXyNue0fzYapN6Yn13DkIqzgCckeCYiGVyO1ihT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9vS7BiK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9vS7BiK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A765DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761887393;
	bh=uGIVQ/opz1pNZQBZlQtof9Me1Cz8ly4IlOQuwqfnZbE=;
	h=To:Subject:From:Date:From;
	b=D9vS7BiKpYtRHt3gA7yMmz6ne/WeJCAyl9FAEOuFmWJptqv7olOLnZSZ/6Xxm9sUE
	 362/T9j7l+JwTqW9g2C2HXRhmz/aTnlgfwvkEGOzuqkcqWrzt1ffjCP32C3EEOdClg
	 eE7RUqwBzI0tOH8ZYzZGJ71MJEcc3hIQG9TcEJ2wkc9VZuHnf2LpqTFdd+K0c+kzn3
	 eBGA/YXK5EFMJI7eQaqf/pCeAan1Krbf3WOhSoc7DNBY7s0KfANgt03Z9wEqqUn5yO
	 pRjo4XLSNPykxGctY65HALE1UMCswHQ4vk4q3hr/X+Twuxc1UQVrKoUXESIp/1COds
	 HBkuxxsz4CFiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942AECCF9EB
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176188739359.16148.11353321630874378364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e9aecb0aa38297b3e3ca62c63ce6f45de007cb6b6b6e24147850384ea9ff8ed
Date: Fri, 31 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761887393
