Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0832F224F6
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725905154; cv=none; b=MPaDM9tAgL9aCgimRK3mNKXgNHLJ5NhEycNga5p0iYOqzanJlX4tiDpmFmzb5Jc8szolVs17hcTb70+tcXdV/pryrw5qKE/xYNbueMS5Vf4S2a3B+t+lMPtIjGzApr7YRVvDz1wbgoHv7TshyC0bzDIiAO91O4QN36+yZ5/b6mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725905154; c=relaxed/simple;
	bh=2iWXRt4vvVjZoVm2zk0WJUi/GP5l1AZGdjFh2bNcRwI=;
	h=To:Subject:From:Message-Id:Date; b=U2ora19kYz5eCGXxuY5TcksqFvNc/z2vQ+tUnpxCLHg17VrhLyaGEkMgv6ff2t+vyOSUKb4cSWKDmuGpAYuRmv16Iz3jsPc/YD7Azjfn7Kq0vtYz6bEIDMwu2ZXzTmRI9DEhGOm6NWJ2xtGx2Uuu9rt/76tMx0O1H/xy1gNGbxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eo0WicAg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eo0WicAg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AD9C4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725905153;
	bh=2iWXRt4vvVjZoVm2zk0WJUi/GP5l1AZGdjFh2bNcRwI=;
	h=To:Subject:From:Date:From;
	b=eo0WicAg8PAFKhSW0olWa9B3EdV/1uozUM84XGy+W56y37l8iUSJ5hCyTf0IQiVKz
	 erSc39I1KfMU/h77NcaZRK/FZlSVIjLF3gR5K/1qIJDiphvkk3Sqg9sZd/+W4IKfGR
	 1pcYzRIUsa7AqfbTQCCcniMKkp0nfU1s1UT5GRgiv63qeMAOukLR2M0Xpnh4ijbMBw
	 C9Kfjs0c7XeaBjxqbGo5eaLA/S8b/KM28dq68XcGyCItmJuPbIBxWne/Qvg7GrIgzI
	 EztwNP8hhNywGpl+G+BWUIMMWsO5dJmQ5jmuzSTxNPjZNp0uff41lBR5cVHnRsAa57
	 wGzpmhjBKnuXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950CDECE579
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172590515360.29810.8955235870050688122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 544f6ed80789abf80c0320ee3708f718ec954009e14ac675b5ce2105f49277b9
Date: Mon, 09 Sep 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725905153
