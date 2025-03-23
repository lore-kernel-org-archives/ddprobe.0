Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 597C077102
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742704795; cv=none; b=M7DVTksaEKDo8koOLEu/CF1FYJBZLM5Y/NJ5FBCSLDYULC3nvb9eIrshYLUstYHtKNjMlnx20Q4gzxyjQ1W+IhRqFIAEudneRk5AFPIUmNd+36Z7aXal5rv3imRwWLkqGhwjpnDdf+8ARI1K6Lm2VPnvZc8VZUPZywympjvOkVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742704795; c=relaxed/simple;
	bh=lndyTzIOqUkhStDvqwOhG4ShCrP5bFznNVxItZ/1Uzs=;
	h=To:Subject:From:Message-Id:Date; b=uQjV0dDj560Buv8AXmoRv9NdE2BsaWkch602PQJMnKNFZ8kS+W+UBN049YVtKlLprYY5HM04NYNxSZ7FH4t4p+m6OxAPfN8KKWfNYc96e2prI+r+hTZFvfZNSvopZpqbkgru7UufKvJjP+5yluv5EXj3n3CUyNtzSr7fGfmFUlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihX9HAns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihX9HAns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C51D9C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742704793;
	bh=lndyTzIOqUkhStDvqwOhG4ShCrP5bFznNVxItZ/1Uzs=;
	h=To:Subject:From:Date:From;
	b=ihX9HAnsu5f6BECB7WUypp1YYYe2FnfcIrqoPrd9+sUxtkPlX2EN6DT1ORMUHXY+i
	 lvgO9Gv/4MGy5mW8ZHdD6GdY60WTNs1m0b3SBWb2SgkaGSNngcNBN8vZR7eW/O/j+1
	 aKSruT8b7QiVh9EFYeq50tDddQUEgqslUt+wQw+MPSBLOs1rhW3gQIG6BPRglgRFzB
	 5FY3LzlGorX5t+luJGHN+AdCX4rLzFAzphuEUHt8fVVCoxUk853WT6r5O2TAiO9AdA
	 jm0JT7AVavK9/Pot2NGsbheSMUiXJz+DIpOkAUCldmQeYh+RCOIiDkF7ShQHYUDbTq
	 gqGybQqGcOm/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB32C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174270479365.25474.18260612448115926161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f870101a56e213174cb3a15c5410aa595f7a33af1c7a8803b9da2773c46fbccb
Date: Sun, 23 Mar 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742704793
