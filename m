Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A25E48799
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707177497; cv=none; b=NDaDBbG5c3aYT0PFW6/N/33ZowWxC+a+BWu4184bU0eSlq8yIrM6RrxVLYOMD2CSleWbqiA11mwW7lN3uUXGnORkWxkaDOFgw/b3kwXTuBg9MlUqB/t7W4457rQY/MSEMtnYTwHM3kAA3YLxY5SL70o20E6Izqx0tgFOBFYm3s4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707177497; c=relaxed/simple;
	bh=N/t9fc9fB7xyFHND7GoPugfF3O5kCFOplgLYikWCzq0=;
	h=To:Subject:From:Message-Id:Date; b=a3B2XNaikSSOgkLEQ5kldoQy4yu/urih8oi/g9Q85ixKs30I4hXSKa3qNwYznyv7sUMGwg8iBEXOk4iLi78TfslJGNij3iHheOj690hUcLwldYT0t/OHkN+wZn5Mmj/Cf1Yst5GscUeyqgXC5L/VI1Bjmd9bR4WWB9Tzite+O+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXAa8juf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXAa8juf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D23C433C7
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707177496;
	bh=N/t9fc9fB7xyFHND7GoPugfF3O5kCFOplgLYikWCzq0=;
	h=To:Subject:From:Date:From;
	b=LXAa8jufKlMb1E2rck6m6/5w2WEHfmvAv0O9U1l1kzq1eXKB/S5DcM551lvjEQfoh
	 j48c6CkgzQtA9EM+fFBJhi4zl/32tcZlX+wjV918V70drzgHZDCK5+UtAgBL4Z2Sz2
	 IQs6vdRdde/GvF8BRMNxeT1zRFRQYUZqxlSv/Gt/DaUqdlfcEB5Z42tPkUXKE/07q5
	 RadrUgJSv6kSyqLQTpBN760+2ixFzi9g/Y9Efydtm/05vMMY97PrSu9ZjsfDDXH+C6
	 ctaSsIbwbGb+jGaKeaFHT0HlM4gsWQKAo7wl1rTECHzvA+pw+kd36guhsbW0mGNIuY
	 en0TvEynA6y3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F22AC48260
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170717749638.18137.17968550369182779429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a9e41bcf20e1d7cfaebb3b681dfa11fe359cd64687287cae5ea02124969732a
Date: Mon, 05 Feb 2024 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707177496
