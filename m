Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36147217F56
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760211594; cv=none; b=BOB5/UonazJQ27lyDNukIlA9xvueDArYZ3/8sGAw6ebu/AmHlnwxkZblgatvnq8KJwATwydJ6mAqUwkBLm66PP289QAAQBbswEdtEIKbXg3u73/WASA/aCFiuV/exfZYRNVyZHniY6uqmzYSgFI6OgkfYwMBQ+mPhYbnomNjfoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760211594; c=relaxed/simple;
	bh=fhiiOgFf0IaS+44gAojFV/ZQUgt3NyIQ+HTj3cRRmQs=;
	h=To:Subject:From:Message-Id:Date; b=uSsEtrAXLY0h/wsvQA48Yv8l4uzTs4Rw1Rvs0rn2JPppRSWKNXZMR9aTKQqFxR9M7ZTfzGCToaXltr3H5MMxZ+7jN5+6/4jncnn/7TESAfLNfwG3lBQuDak25W+gPCgBwwoyFMAkbPbfHGuNmRxPMgK24c+6HJhjT2DxXE8uT5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWtG6jcE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWtG6jcE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D11C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760211593;
	bh=fhiiOgFf0IaS+44gAojFV/ZQUgt3NyIQ+HTj3cRRmQs=;
	h=To:Subject:From:Date:From;
	b=rWtG6jcECeZ3M1M/P7LwmqHJBazjgasSOtDVXV2FVpWWXc3vRWBrIBd0PaxWivmmT
	 ARtBJvxYS5dIvRRGsbo9c4OCxDh9FEzqqDczAEP5u7kY16uJuj7ceDI68axPqf4Er8
	 NGAzGtrfrpUyo4oMVwG1VRMcEP6X9DnIYIVGT2me9mi/clzPlNumnxuF4XrAxLzBSh
	 /bpfKaf2Ix8DYsr4tMhiNGH6OMkKfUycWBZd6jN7POGFEbkj5cZmDEa0QmOgqdxLpy
	 HybhD3lqtWtwLUcQZMqUm0TOQL9nnk4JR2WwlJlWx/7IjEK6iEy/ryhu63XB9fORU4
	 Md8WpGetytp8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FADCCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176021159357.11357.12597629456176964630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d037bab1c5ed279d91127fdba058a6d52af6bca0abc114bf39c6ed94c332cd3
Date: Sat, 11 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760211593
