Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C39F823AC
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727091954; cv=none; b=H50GTHm+LZuXVBn89taiTl/8KdV0AelznBLU25xE+hPg4+QeJXHGplZV3uVb8d1IiSiM6wIuvsk8533tKMplrfzDh0rU/xs+VRrlgoVVzLa2RM4FIx2yysVFq5frrceDNNT+6WRCVCYZ7fPp3YTIk+x4S+ksol+0DHGmFTyI5Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727091954; c=relaxed/simple;
	bh=42TAF4FozIo9O0XlZuOO/xRThQig6Yf5EzjLpGDNOBE=;
	h=To:Subject:From:Message-Id:Date; b=QVJb2FrcMK01UBBgrMCqELNMWRGsyauvaMgD2JKbJyYx4/VeV4suNr2YUFK1ge9vsX4W/VtKfmbOe4mJYctjnT2/SDK+1GIvAyviXWyv0FXNvDbJsmMknMXpPqUWgsplgIbJQykrRPHAxmeuJuuW8cvnbyA1mqBhFZU7EVgSdx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oENWv3WH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oENWv3WH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9897C4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727091953;
	bh=42TAF4FozIo9O0XlZuOO/xRThQig6Yf5EzjLpGDNOBE=;
	h=To:Subject:From:Date:From;
	b=oENWv3WH68R8JiSjILpThexTngIDY5az/tD+nNhnge5/kQ6RjW4cHyTPhLup7eh9J
	 wSMeaEoEgYKJg73hudvCPYpGCgyjZmVwuYD4GnJiXySEeO5LHWAeFkiGg9Dp3+nkC+
	 vLhSFLHAUyAgZtUZ2SUnBC7s5F9wbrq4ZbNfGZWHD7c7+m3xTV0IYAvSjXN0nGqlnr
	 xNl8vpByT5gMmzLXsTbKkfPTlV7/SaufDwJCwCHTG3I6LPS9HfaVi2ZcLjW5/K+L8f
	 2IXaHRplQl2W56tOnUf0zvU54QOdE5oWlFpcSAA4fRsm8pWFHpsKe6u5eX1anES2Nd
	 AY7FOmtmqfDPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95602CF9C6E
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172709195360.31440.2357285117177714467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bad1ce9c7ab3eb798a9f92fa1b07f801467c600e2bcfa24f9c9d4cabc8816e95
Date: Mon, 23 Sep 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727091953
