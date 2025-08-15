Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7B421D3E2
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755269994; cv=none; b=tqalknT6i3A+9evYzic6Z2JIT96yrdVfV0sJ9wx6XOu1wk7kk8Z6ehAgvow7VYB9PSte7mRz+H0gL7Uj0DCmPPWFYbPKPMcqDc4zMNV6HygA8K/cZqswtalmC282Qd4w800VGG5Vj0YBNv/8aLsoa/seh8MaDMo3nYsCewDxuwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755269994; c=relaxed/simple;
	bh=DRo0fBkVosjY4J7xU6X4DFOR6KJ1F5EeLem4NUPotb8=;
	h=To:Subject:From:Message-Id:Date; b=I46iiz+jRM0r8fnrIMx3n5QaT+nI6a0v7ATpQK/Y+fYksfi/jWFgCbkAc0qV7V/BrvIz8oTXbYr8fjRq/a+V0exQ9iEoOqlYsBlA1iDZPYtMAVohC5c08prh6BEmC3nzUTA2GU8dfdOnT/9Ufwsn1+EzNQ3hHQPT0um0BCp8I+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSHtPnOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSHtPnOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F863C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755269993;
	bh=DRo0fBkVosjY4J7xU6X4DFOR6KJ1F5EeLem4NUPotb8=;
	h=To:Subject:From:Date:From;
	b=nSHtPnOh8aJaZ7EmKIE4ceBsppuc3URhJeZ84+1ziVnScehP/3rOujyP6GMAv/5Gx
	 GX1S7rdYpPuFi2m7OPY8R6LiLL6AKkC+1o7QWXOqJhIS4vVzke+iYpp17OYwmwuxkr
	 +FXI9uF2gsgnBHgv5vcuhOMCnSvsYFcpi5KpheZNwsnG05XAeIxpcu5GxrDGsrYCrV
	 ynh/U2bX67MW6aZjmkELMy4Zdk/oiCBEndpxqUSGNjtLpLr1zbzSt3mM96B4WLRno0
	 CiyKNgVDyhwFLw3oo3LLoGfRuUijQ9E9JhaFZFjxjLZs8aBFeCPzUXSkJtyl9xYOia
	 k+YEdQJJpYWBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917CBCA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175526999358.17991.1901104051361286441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6ffd7d981427bd037bbe131aba031384224e7d0827fffd27b44b00b7e16b706
Date: Fri, 15 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755269993
