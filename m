Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05CA02868A9
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766695434; cv=none; b=UwXQMJtRLD4HVTEVqcR9EJZyatbvI7apzNnST7I13eluxGaL+b6cw0Qc18z4W7WjFmCYo+66SLeVIsAJGzO25JGkEROJYPyyv3eq4B10bzfVZR8ZLKiF3355wbot3UAVNHD88wUKBhh8hYl/jyOCapXIxwCwN6WMbSEbpPOT3+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766695434; c=relaxed/simple;
	bh=1R99wP4DMfB0jGbbRQHFir087LA5qlTXyq45SBTfnMw=;
	h=To:Subject:From:Message-Id:Date; b=c1Uw4KkHoX7EebWq1oGr/EiZRXK1gD/RmVpJPVg+X5gESLMeHMKCqNVL61kZXrrUcJ5b/Meoao+ruR6k3asCIsmKIxvMd8XXIgOzwOb6Da1LHRk14BHaIqQUP9HhAzi1svKYzFeOHruHwDy6aJclyJV2f1/oxSf1xLS5shWerkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJyb5jmn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJyb5jmn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9925C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766695433;
	bh=1R99wP4DMfB0jGbbRQHFir087LA5qlTXyq45SBTfnMw=;
	h=To:Subject:From:Date:From;
	b=IJyb5jmnZkWy5ojCTVdw5SSGxcq+lzYg1isl88Tgq9OlZdf4+xIDQDQY4tVjNqW9U
	 csD3f8tkFIT/5IvX+1N3NUMPSZSKNrFIVMRitpkktdU1uDIL8ON6/CC9TbxSyzaFik
	 3EWX1E9168HAKCCWb2f1X5rv7o+pFPFf+8uSy/BXPR8cLdCzi8vMZAv+ZW6pgNZxs0
	 y4ihTa3dcoEkV5ph+/+gU/llJrPF24/4yUAJYRXbCxVzTuvryrNlc4VKy3t2oZkGD3
	 tH11q3WLduI8EpgSzQw8kJIRKUJFCVNpvLLiKaYO/fUrD6ycBRm2UOwIq33o6Ge+41
	 zqUdEXHFCc6eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5AEE7AD67
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176669543359.26280.11842043494465751628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e700e23fdab3684517f3c2a15b901909e0e8559302e791c7efeb3b895ce7790
Date: Thu, 25 Dec 2025 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766695433
