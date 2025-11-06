Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152BB2F49E3
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762471794; cv=none; b=bNaUp8Ms2vAM2Vf9rrWqG6rPpJLB8sg+dbJsgbvFW/N6la4dKFmobcCzCbXyqLWXvo+8G7+MXi6AZmEX4CUvaAHRd3OCvYomnJWeaJXImEeb7CRPp/j5BdBAmSeunSbc0KOJQpPF8aknXya0caBjZ6ARSTo7ZkuiPYzptPWrbTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762471794; c=relaxed/simple;
	bh=nc6Hkxrhw51+czBmtvgkDYUyx2g0rxB2ZQL1SVpAyvQ=;
	h=To:Subject:From:Message-Id:Date; b=VeAMy+qb/N8VRHNnYRaOPY5a6Zm82sLoYMZ56nPFdTgH14JIaHe8WrOELjNaazJHkHL0DLPZvrb9GGca8l31Qw/w8h0GfKwLTK7hX7G5l3CzqXy0H3mMZoJ9vEnVyxrc36vYuUqBnZHfcmYt91bh/7x3R7dCDm2hwaZQXAWMDOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dd04z5Wx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dd04z5Wx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B10C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762471793;
	bh=nc6Hkxrhw51+czBmtvgkDYUyx2g0rxB2ZQL1SVpAyvQ=;
	h=To:Subject:From:Date:From;
	b=dd04z5WxomuCMK/EU7eejFMQnI+ChXDCmTaNf1Fe3DCIsEA2YH7ATbOE5eQ58nezi
	 Egabzc5NJ5oqiPMt39+7DcV0VJ0wu3nBSE8pdMIL0af+pTitcQBtK17AY/Zc4t+6VF
	 PW6I/JUgW29XYM0/jbHOoGsKhpAoswhNMppaL6tl9ddIvRMxsEgF2JxjitoJa+ecwF
	 62JgxMNoQdTBsXcaMXm16pOg08ToRXTfTqvZqDLrsjv4tuNFyb78grz/sIhiY99Jq0
	 Wk1nzWDuQHVNrijxVqAWMlV6III+XG2nyI5SbZmr8bAVcAYx5r1gAixtcXGVPlamcB
	 wQgUqkz1odypA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9501DCCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176247179360.18876.11620157242077340624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a85d7d655d517833c4f846abc8a4f4924bec9b6aed05b55245f1125163e9330
Date: Thu, 06 Nov 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762471793
