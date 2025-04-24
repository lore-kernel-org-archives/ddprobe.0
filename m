Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168EA21858E
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745527194; cv=none; b=h6O2PWVt8GWNK9iuXrGjbxmYSURzTFLnlCpNRwltrV4WkYsQTeWZ9BfV/DD3P5xdvHjxoZNUwK+OSFZYjPmu3XH94cWnu5XOu4YqaoxPuxm9QalOngXJs56rnkH6MSjipgyU66vMMaLYZ6ZTKIYCdNEYcxMKUwbwHpdA+lbtQic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745527194; c=relaxed/simple;
	bh=0VNduzqnthEbS7aTX28a7BgqbbBjm4Sfth95yNLyauA=;
	h=To:Subject:From:Message-Id:Date; b=PKqtfajsIEs2Jti58yVqRubjZT3K3Y646HW9qdynWC/FK5ku3SMyiMWxcmAVYjdy2lXLL9ebR7iyeomPjUT+ykHojTDKxDnfUPyebs19llJy62degj+v94pBSxicU9jLeeClK6qr33DTNe7PtSNifXQ/Jtw6+XKqA4fNAbu81mU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZ6+S4Kp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZ6+S4Kp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD0FC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745527193;
	bh=0VNduzqnthEbS7aTX28a7BgqbbBjm4Sfth95yNLyauA=;
	h=To:Subject:From:Date:From;
	b=sZ6+S4Kp91QONgcRbAs9JTMDQPZds2GUHxGAovqDcuoRje2rnA96vuEs2KiQmDpQk
	 bwNUGMPjURUeV0UAZCpJgK3fhJnwSYescN1l5sm2mLiDjJimn12CDjonKJjG6sQEdU
	 VANyw1jenoc4jdiPfItwMj35oFvTW4lF6lanO8Xp7Af1kRExufAZye74CAzSHcUNoo
	 CLsjGweLDbzXplCySKF8ieHs4vX69pMDHzKHlYIfQihe5+vaKOFlvgUcqqPnQBAoHg
	 WSjVLHicaAyK2cGhwS18wEi9fS4puwqhlLGtfWRqQKhCjm9FlOnslyIflKS8nQZEEj
	 G+nZaaULDS38Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E823C369D5
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174552719357.8526.2255790808222770163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d91983b2815d1674617870623022a3d9d18a8dcbeffd9b61875774b8ac92cf7e
Date: Thu, 24 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745527193
