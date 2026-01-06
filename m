Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27ABA178372
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767690234; cv=none; b=JH+BdcvKNtsHdpshK816OiNY/qxqzNcO2rOHK4ALQU7o46yxTVE16wL3d49iL3MwEgKfwGg0DWnrjN0wwOV993XIRkBLQEF2jK6Vsm/28uyc0isOhtbwR3xi8zU5/25fQUuJgIiX13LAeRZbhqoSVTtsk3/pe94rzHcmW1IhWrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767690234; c=relaxed/simple;
	bh=hUfZWk6LcolxWHTWc26Q6gAGfEhLrljPpfVNe6E7GNQ=;
	h=To:Subject:From:Message-Id:Date; b=Fqc/QpP9yEjU/XRstTzNTKB8ezcLOQA7hRMieEUGaAqamciZnsWlbJ8XWgWX9Fg9BKA4k/wHC4aR1OFwH5/aQhpmfN0nj/r/3BM8rRq5l8dLXztwxK2VX7lpHo5TThM4gc1xM8SyfstFPqMDmBLWb9iznxJA+mLbxlqa4hKbg2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmT3imsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmT3imsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0FFC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767690233;
	bh=hUfZWk6LcolxWHTWc26Q6gAGfEhLrljPpfVNe6E7GNQ=;
	h=To:Subject:From:Date:From;
	b=gmT3imsA/lJaluQbN2fARPB57hgvasXyvvE3MwIEugrUeg+wxO3kOgzrBi9Db3lFO
	 qcIidHGAA76ZTF1QOk7NtEzgKj2ZVfZ+gWkV3PCfbqn96heDvEXzCDdBp/k8FKyumz
	 j4sWASHuBBfLiQYTfdGQUtpBNQPR7idCq8sb8jQIIV0s9kES7hA2LZIy6Th/aAapoI
	 h2wC+UVenVT+mV4ZvxkpJhE1vW++d1VA/rWVMG7c2dc+AUiE0RNR1gAgk/RjNbCl9L
	 9S7VZ/cGtv+7xRigCdloAJnR6PhReIy4c20gpSIA8CsdJFcpIUt4wdLw7SKzQRmyKy
	 fFo8Lv6KlCCVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B5D9C47BC4
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176769023362.19219.216656854586218546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14a3cc4d33f94586587638b36d962fd21038df85145eaf5fbcbb1ea97d82f410
Date: Tue, 06 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767690233
