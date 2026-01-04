Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367233A1CD
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767557034; cv=none; b=Nod7wYXRPXY9dTiNhahglHB8gf/7GU9WqVSkPsJTxFk9w04hXdoW5QQ61QzTJ9v5NhI8WldzB5VWVcGJtwVaJVcEQ+snNx8Ayu8Af6XvkeB9mvkdAoEbQ72VkMzfvtAdaqgsfkWCgBfBJn7JA/7n0Cl3r/5PUrG8e83fj42HNR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767557034; c=relaxed/simple;
	bh=e4MNgDJquIfgqWhC6VexHKUXu6GFE/a8AM7h4D0pEqc=;
	h=To:Subject:From:Message-Id:Date; b=qT6ydIFf2sOBlBqtc5BvPS+DZT2adB+Upkn8gaYVE+GEZTVWXr+5yh8ir+xalBgK8fPaPMTMRLooan4X+xlOfmHbtY88Ks03vM5+EU3sH+NgGhrOiHnvmAGXs1TSAp2qhW0I6izchFwgiqlFdAWn/zgeCgNIvKajoaagB63j6ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgBUiHPb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgBUiHPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69E1C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767557033;
	bh=e4MNgDJquIfgqWhC6VexHKUXu6GFE/a8AM7h4D0pEqc=;
	h=To:Subject:From:Date:From;
	b=bgBUiHPb2Fp2pOdcA+jIDUSVEOJs+yCy8N2dfbILkVlEzTbwUdvHG3o3TYOSnu5tY
	 5aYBCJyKtvqDNV4OcXC8wIq6VfezzBuzUG8amNUs0IUocK3Y77jT2CYOl+uxxVYF0d
	 EruPDqIEGhdEZwuh45s0hEhMYHNDODvwHX4oklsRkwq36D8YGHr9G4m2Fv2y7wZQWb
	 E7kS0FJqNB6CksHa+kJswuhGNdc9P9eVLJPhN8ykNKAec1m4Y8kMhDdZHL2h4Ge42t
	 /Ih/UPMCmsWVETKsObNK6L7/QsRds3WUsUpyYSUYzMhi5puzjeFsbqhq3T210peTG7
	 QZTQaYkAkGYuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9548EC2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176755703358.29541.7866011121146065805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632def765965111c1e2f7e41cd31a404a9bc147eecf02955783f66f956626713
Date: Sun, 04 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767557033
