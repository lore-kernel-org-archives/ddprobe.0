Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6E213C3CE
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 09:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713779423; cv=none; b=ePs5JhN+zuUgHpvO61lfU9+t9SzbAYyiSTpPBA+yy4Bw9+yHkl/ge7Q/0JXrW6rh/fjfnj8nlvxi9Kxg1q6kXgcvrpgssXXSQoXpAvQz/gOZUnr9GMk6s0N2k5SVZ9SKDKYUyRVt9TcuQz1ymH7nwgvxSrDA+wFoOGGjO6JgXv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713779423; c=relaxed/simple;
	bh=ABCmWwD2Domi+ijZx4zG/RNdHstsdPEqyw4CjTv9y0Y=;
	h=To:Subject:From:Message-Id:Date; b=SBCpjKU6dKaU3HIz86mEJPYhgiZ4nJzfpki51X4/Ha5PphVcDQ/sjw/W81QmRcymCXm9TRLY3g04XUkOeMxQTN1m42aPGnnaR5Yn+nB6xnkxEY28L1f/EZjBYkEY63OhWOADpZ62EqPQTz0djX2i7SEHZbt6ph9RI2V1fy7U3GE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QA7RZwVq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QA7RZwVq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3F96C3277B
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 09:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713779423;
	bh=ABCmWwD2Domi+ijZx4zG/RNdHstsdPEqyw4CjTv9y0Y=;
	h=To:Subject:From:Date:From;
	b=QA7RZwVqu1Gp0frpUV0AJDEJ7e4SZxr5uSvvgRLgnAVmU036ioyZmB8FCvZPG1kvq
	 2QvfxQ/Ch1TUDOoWHKJOz8NcCNcEkWMCM5QUK0qXyw+R2Ze6EWoXZpK4ZT6iqkutfJ
	 S1fUIXN3/ivswHPxB+gkTunnNx1s7cxbpPEsRMJhH2TVtkywh981vx1jjygL0xi4Qo
	 ODLgycegcdpO6ro+amDlPACqdU9F5CvOxXxVBy69z81UnsMxIveJHahoxkvClzcLXR
	 ed0rvf5uQstONh4Ovk3+vl5WvuXyq2J4MnkSZRr8GfnZkNOz60EVZD6i3RdD78j0eK
	 1uTkmVrWSS8JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DADF6C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 09:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171377942288.21666.14911155910313603331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62da92f0b332b7a70139cfe0bb8530f9115b8be68056db7ef81ef08b78b103b1
Date: Mon, 22 Apr 2024 09:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713779422
