Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289BA1E231F
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 18:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739298054; cv=none; b=FUF28J935y9JI5pQx1vKSvlg4XTkUVmf/rxoLYUVaaAaCDrw4i+lyN9LWx+i7kYxVHkElDYAZ+Xrpj7lAdOUtBL0WRRz9oiyug1jnNtr3qH/DXpAL+CUE4BaZs+MGK7zoSPw7SymEvsl5f2GJfD2TzWTNjvD/SWzEvq6hLIHiss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739298054; c=relaxed/simple;
	bh=RrNpi/xjfRSO9vjui9ZezUNNotj9rBX4rBB0yIaPoK8=;
	h=To:Subject:From:Message-Id:Date; b=m0ZwnHS2rJxS0lTKb8cXw64u9njHehRtIZHdDhvoAtJ1DPikyHHMM6DPzML3DWQsjlN1KQ1smev8CETJuRT1F3gfUIsde70YdrDz/Rs9/Xg0JY7wxkQPtD6vi3851a2JHYbFP6if0KbJM1KPG4kFsg3BPzaByAwRIPxmrqa/lrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dy7Ft72M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dy7Ft72M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DB7C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739298053;
	bh=RrNpi/xjfRSO9vjui9ZezUNNotj9rBX4rBB0yIaPoK8=;
	h=To:Subject:From:Date:From;
	b=Dy7Ft72MWqtLYzFDd+HOD1Qjxt/rSQ8JT7cUyUg28XJ1XBdHY9+losD58sRT+FJgs
	 /WXJmVs9fc0BWw0MuPETRo4VWmh/OMGPhbuD0sVWSxDL07Nzk+vrmSkQBNgZloYqnJ
	 K/OG77hRGY+Gpkkyr9bv2VwMzjqfBpz58VUdTqmAKbE54nw+pWbRwr5697U/GKXHUD
	 uqKX5na1FnvfJ6FAWMGCXI0WXTNbtGZfv4ql8BfdAuNoRiIqByrpgGTXuz5zDWLNKy
	 1CMjAJ8p0Csw2I0wnZPHvsM7HAPzNhJ7qrW5CkM2so16vkQ0fEAgWJ1oDkY5cDTmM7
	 oqI5J0FYGFA3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9376DC0219B
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173929805359.21768.15362505115435343396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b528703d7e19f0cd2caf8fb24cbd6705314ddd8a85655c775365c3aa7aece9f
Date: Tue, 11 Feb 2025 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739298053
