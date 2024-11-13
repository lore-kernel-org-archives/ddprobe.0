Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D0D1F94D
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731462354; cv=none; b=Yji2rWRcf3XKxR5KJd2fImejm6dxwcbSYJ8ALmE/Odl7+1Yc9IEFm8pqrK7nofFo7ituZU+BJfqbKe9RN1GgaRO8VoEQNb9RwrTqU1s3av+3Iy3QwyrBLrR9TQ8QuVntgWtA/XFzaa4MQ3lTqFz+3P14nM8mQhg5r5NNCnvXjhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731462354; c=relaxed/simple;
	bh=cMueDoRA7ECMZvc+Gvf7GqUoCPvH4SrRy9v6ad8GYfY=;
	h=To:Subject:From:Message-Id:Date; b=OiX5qwfdGh5/Xb7HrLrEzjHxFi6bLfCwcjcYj1axdOHPGSwVDPk5v9kASxyjYVnrVx2QHt1dTPkak3f1bUUPfl06B5WtUhek2+bNccNWKWfNzIxRccVdhtCojzuKc3uTFJ2xr2GXibtbrEYOWYl46/FIfU/5rEUA8558mdvB0t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7L+4kqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7L+4kqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E9CC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731462353;
	bh=cMueDoRA7ECMZvc+Gvf7GqUoCPvH4SrRy9v6ad8GYfY=;
	h=To:Subject:From:Date:From;
	b=j7L+4kqj9QMu3/NnUhZEHEuaFAmdrbycLdVAPyZI/X1sfMzDmljqWkIQN4nrcYJ1s
	 +Qc01LSwPlEs4k1t5oB3JhNO7DQSWLVEYNAE/RjtSq06XQlSG34Ufme0YT3/Jp2en+
	 4BQjMRzDkks/kOwV+hIJTM3ftCJTxNcIPBPvu8tVaUbjUE9BgaS+489d0Qh1EBfSzZ
	 tJvFV66I3ou1x0JPAwkxnFLMu8z9J9pcfb8HXHP3PyFARlSwZ14EOyADCvJ7bsghXn
	 CN7RiCO/7DXOHwEOgl3F3R/7sejw2SshqNVNnBUxtZLH4C/I4iUcIn3l655WduKaLX
	 fBpaFQw1E4d6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0267D597C1
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173146235370.27046.5393535169498366389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8a98857c9c3da442f9fbb81ec2e53e095e47e7b3889a5527754c088b98c9763
Date: Wed, 13 Nov 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731462353
