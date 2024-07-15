Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60284175AE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 16:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721061923; cv=none; b=DfX9szjQtXrPuBQD54PicgB2ysMhg3ZK+uLPtZasTvi/I2ub+ojtm61VnyIfyV1T9hLieu1uWyGnL5XhhmubY8L68tugsRvXs8RlHmUokIkaeThVYxFG/+5mQwu8T33JkrNqfL3NrYGs6D0APaES/HWzELinELTY7m7562zttNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721061923; c=relaxed/simple;
	bh=l3zO+ZMUrby9YaKd4FkEK2L6UcP/HU+cJZCJG37yg0s=;
	h=To:Subject:From:Message-Id:Date; b=k0arLIE9Cy+n59woKVOhgqIg8u+Fn5ES7NTdifJKzJdB2eEB9JlRzi+YLKUWadKpOWsbdgCviqdApIaPgDRddGjpruI/6UMqszwURFQH0ZtYZIpAsXiL8sfVFlbKDmrzGE4cT9oTX59gGhQBIfBtfdghIbX3AxgdPhpQljAzuNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLZZWbe2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLZZWbe2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1B9FC32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 16:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721061922;
	bh=l3zO+ZMUrby9YaKd4FkEK2L6UcP/HU+cJZCJG37yg0s=;
	h=To:Subject:From:Date:From;
	b=oLZZWbe2AekZGj3WwMMAVDZZc3TwQrGmDs50honZLgX5NNeygmO2YxhAf08TRQt46
	 wbcHPUDiTVdobMVadv4JDoRpUbfr5vDLjdm9UwNYR0Ugw6+SWXwvDvO5AdniEm0S4g
	 tQwtrAFxCNsZYCzf98fdUXCxGTVfcxAQ4scIiCa+VSua+23Pd9C8AV2wEtUjG8al+W
	 7hHit66pivigGWKNXEHEK9dPKC6Ha2+hcJlqrnac7oO7KlMtceCAX0X4LkyLCQfJTB
	 ky56MwvRzwPl2nqxLsRXpeq4AM2IZJx9XGwtpYARyQLDrh4MOJTAwG5+90v2ubASbk
	 lLM3RvZhZ2QHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D116CC3DA4B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 16:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172106192284.24652.2216157203630942047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bdd6b55edaf3c7ccab490bbcca9a004570c0ea092eeaf30bfc7ba5c3997e898
Date: Mon, 15 Jul 2024 16:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721061922
