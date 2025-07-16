Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F36F274B41
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752646794; cv=none; b=uD9UmhfNJ05x/KKYSlvyxPsX0SuxTDstVlN1tdvNgia1hMYlI1ZToeePBEoXGzE9KdnC6glWhZE26fK7155ZeXWLqVJkFvIEEMTuMOw6pwaEPZN+ErRX2Ae67RasjuRvgqHTrwnb4vSYsUXzS+DHZZ35Rze1xr/YMG6llTJ6XYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752646794; c=relaxed/simple;
	bh=yV0V943Oltv3dNlcdn5NeOklm92bsJLRtaLVD+SHMC8=;
	h=To:Subject:From:Message-Id:Date; b=qPeK/OaOjuyWajGXmMXeEh+nevoHiNmCsf1mmrdBqhhcseEVxq3Fpl4RcQgTmRzzO0e+2ACS6i0kzkP812ToZc/RsmeJutZfJOeO0XO73z5u3h+inqVhxoxvUKcgyYhoTjLsqfOQXHKKhooFWm8v1hsMWCOeZ7JcS0cAOGVJF88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSnYpIyA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSnYpIyA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21BDC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752646793;
	bh=yV0V943Oltv3dNlcdn5NeOklm92bsJLRtaLVD+SHMC8=;
	h=To:Subject:From:Date:From;
	b=NSnYpIyAbNih1494Da3HQMJnZatanbwDqAcdS1ePnQ5J2JUDCn5H7k7H1VHYYeDrW
	 NcrbMen33Q0XI6G+6e7gqMYyf5agHCjnJVRThuqKjDnPO0a5iEv7URq+7Ua4KSgfK6
	 OJQ6wKAwzAKUsd/68QUFQvNye9EfE5fT3fH+q/kswSLqE+G1KoZtbepdr5ofSV6gAF
	 ++p677EEkkwvAE7YuMx1TpZybe7mTviy48UDdrokEk35a9jsZwGdQz0dp+rt2SHVfH
	 S26nqSbyLqVNBuP7JO9VrRMQujJb0nEK/ZSRj4NHIDiKzEmyTgi+T0tsls/0eEikQM
	 GrUNxj6gYm0NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921BFC83F27
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175264679357.11263.12483520303666542605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c028b48b9b747757b1f0384d7e827711e5ccc870e79ee1ab1c2619cfa6a81720
Date: Wed, 16 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752646793
