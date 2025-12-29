Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245142F5487
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766994834; cv=none; b=Bf8D4D+xsNnZ3JU45UQexGVwXgJJUtfRSzAxmhxKbUNnF4XIlSRCzFUTuNuiaSLd2yzphgWihKzbdQuv5112JTh6csWjRqRrU4ASn/jx3KHAV1jQivIgvaH3jdOUc/Vq61cHIVQbfI3UdjaUPVtfxd7Ez5Un7pq3Ec0y6OaI1vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766994834; c=relaxed/simple;
	bh=DlFl1XXmU9jQiq6tMnyIaV+o9uOFeSDpV4Z19rhGR3I=;
	h=To:Subject:From:Message-Id:Date; b=bDXZr9tLen4x//N4Y+I3CtoVX09xhJMjV3Y96TYBBDzHSlTsl0UtRRCNA41BGcHxdMZ9JMyw3qIJvA1P/TanBhKVsdE0bxnyTPw66d0mCgC5qo3sqrj7BOxADRdg6FpxkWfIt9U4ERjyZhr+pPRatwa6LcI8Z/mXRonz49l3jS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQV4yOil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQV4yOil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA73AC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766994833;
	bh=DlFl1XXmU9jQiq6tMnyIaV+o9uOFeSDpV4Z19rhGR3I=;
	h=To:Subject:From:Date:From;
	b=aQV4yOilPthKBpRRSVq8cx2eYCQy2Mj12drW5Qf1Adiv3UzqjoqfqwMSlk/TY7vlH
	 gK3nlcCJPeWS09vov85MNbT9QIKcM48YOJL2+WkkdlreRw/UUqirKLF2tLvCivC8An
	 kXD3AazZ+aTrnqxniOtk70XM+E6xwcmke5wKWY9ZBZcLw1CqF7ntjRpgH3HIOIUd+d
	 kLIznEbrJXD+LaFh8U5BTS8mbmePGXTwILgkXO1+0U2gLSXuuiMKVKd9QsuOmejENS
	 b4DrArIgKGPjK4IW7dq/iMG5RW8gIhy40yHkoYfYW7xPK0u0FJj/m4l7CMj7lL5Khs
	 KBs/HhX3Vw0LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96587E8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176699483358.32508.11342765450807249668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9332a081ec1761320e14855b232be910767e69cfcccdf9c83cbb3e55a0217bd
Date: Mon, 29 Dec 2025 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766994833
