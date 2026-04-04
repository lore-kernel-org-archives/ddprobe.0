Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3FF820DE3
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 17:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775324133; cv=none; b=nIlUWyFSSvN4lWcBkPOV27l+X+bim4MZMPMMt0k2JeNjlVlVKXRx8ZahyBC0JJbAKw6qRAwtJ26rhLJznmvtmkCewix4Zi6uPhdcMMWihhaZGmSvPTzgIzsSo4CLnlcPrtX13+xHnJCnVK0oL6OR3j6VRmXjZfSzTv8G6/pWR9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775324133; c=relaxed/simple;
	bh=tbNNymsmnnKHRSDgE8KAdc01ZKtjg1TxtVSkQ/M28Zg=;
	h=To:Subject:From:Message-Id:Date; b=hI03N5Ul/amzX05HVBDjUlks6gslPLZqorXt7r/ihYyeaQg5RUrFibKMQ9ss3ysTQZoCp5r9q/M3nwgXLrlPX47Jjvy6Z7tOVhvzwFoSZpm8OCFmLebdYhmTVoz3jmjCC4+2bmIrGrvmQwBhllP6j5j/ZCAUxe9tx5qxu8dmFwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5OcfNnl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5OcfNnl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6BDFC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 17:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775324133;
	bh=tbNNymsmnnKHRSDgE8KAdc01ZKtjg1TxtVSkQ/M28Zg=;
	h=To:Subject:From:Date:From;
	b=O5OcfNnlibRBRujLi6RAYNz4gYQCB+7HiZLKmEL/cOa2mHgE0PVqivaepS02/K9HF
	 uITksOMtXip8QNAad8kxoxQ3/EwiUnKm5Uel7okIzep5Ixy/QVenoGaBg9qVtd/AVR
	 vB2QpgqKiUH1TyER8iiJwgky+EFpgJjWGjZl+lKF2k0mXzXucJ48TB9QvVE7Xc3rrv
	 VX5i590hZADgSfrLd1bF9mGCx/mLVlKWI7g1jbvhmpXrZwtwjnRXUHG1NqTMjftZD5
	 6iy+UBsM0SKkeIUf+z76n8U6nLBT4WJwkbg54Xoq2F9uzCqzZoq2UHTW1qp7mMahN6
	 reag/wvb77Mgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9717E63FEA
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 17:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177532413368.23899.3229992759374132997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c6b24acd20b2e3509ac6ba3578a478bf3df944c76654cc51785f2920d07d45e
Date: Sat, 04 Apr 2026 17:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775324133
