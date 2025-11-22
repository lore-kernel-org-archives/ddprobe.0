Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6AA81FF7BC
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 14:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763821314; cv=none; b=fS7aEUnaRzYsf6EuUTkvg2qltgQY7Sih1TZVl+40V6qcekrjvswciDiW88+jmrxvIUuSrXaO5G/3bD1HBlPPPziriP0GMcNQ5FUGrkHHoWO5E50XWIsxkfWVZXsR2J8JurQooTZV35Hz296SFgrReWk7E5nynbbEVvzilMWA7RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763821314; c=relaxed/simple;
	bh=HzTInVXK5Xlb+psZx4LbtBZRQ7LVqL5mg1cKHbYwsz4=;
	h=To:Subject:From:Message-Id:Date; b=sSJu72qYjNFb6q9LNnd7Yz4pXXTEnEiObjeVw5oWhYN2zya7Qww1PIEOdp0WLylV7/168Fm4wWnncMsFATFgKUpmpitw3+qgefvYVP5Btd4pHUxCnbEAKnGpSpjEDCKM7O59aXTmeDVc/yWilRGvGlPNrQTR6TzTdgggwhKvJf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhWD1kFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhWD1kFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64B7C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 14:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763821313;
	bh=HzTInVXK5Xlb+psZx4LbtBZRQ7LVqL5mg1cKHbYwsz4=;
	h=To:Subject:From:Date:From;
	b=qhWD1kFRGQb8vhorTs2Ym6QeDSkPFld1Q8pOuGTJr02+3GAOlPtg4lG6BUAiBGF35
	 XkBH2AZvCfQrubmGY0WAMl0UbLpCjBGVfyMCMFoRo9vEogscHREsCh4/DEAQ7Ev9n7
	 NegnHmBX76XE6zznzbW+8uiI/DWw7FXavwFnaT5u3d9S/kyyxMorD6QMlTX0lfQBuZ
	 Vf4BlaOoHZ/1AhOXBRGhLnEIpGYidee19tJzZO1R0ZpzMglIDXQYx9ZibhUtzeKabJ
	 GYe0JchfsdIcQscW9nynH7206EGn/BLXndCz/DjOi70xzareTBakldpJtfR/4YeFYx
	 8efq391Q1Ovsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951BECFC539
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 14:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176382131357.25721.11049702225595385703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fb57e9f651db209838022c7f3ee85c93cce4fbfef5c2ae9b2c5d1a37fa3150b
Date: Sat, 22 Nov 2025 14:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763821313
