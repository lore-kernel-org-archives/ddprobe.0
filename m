Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BC6137C37
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 08:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717664243; cv=none; b=dgnrb1zK93+7fmWhqxp3eQyar8Aa3l1rE3OZ5jDqhoOgj0ojkf7UU0im0iB4Rliyi2sTCWLiAFJXFyTObqMo0oOenD8tl0mHD4AOauvnt1xFu1xTmw07vX2QsINuyKBOEBzHBWvNLWYNzr6jtgjYiWDDXXrCPHP5sy0XspdwSKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717664243; c=relaxed/simple;
	bh=ROL7JB2n+iets/lsh2XnfWGjdFArZWC4Xlid7gYWG1s=;
	h=To:Subject:From:Message-Id:Date; b=fj61mLW1BEh394FGkPL9SZvcqXid134SRVjynLaYRl1RFc8PbvJWtw+4ACjq6N3X2j0bzbHUtCfjkbw5+wnVnWa79wHNQDEuNrbDayi+YuahcnlKDG+SEfD9LAWmgnOnWaZW9CO2NHD/o2aMALQVwIh2tN8iv+Zu/JYVkQPn20Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jorMGzwy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jorMGzwy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4385C4DDE9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 08:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717664242;
	bh=ROL7JB2n+iets/lsh2XnfWGjdFArZWC4Xlid7gYWG1s=;
	h=To:Subject:From:Date:From;
	b=jorMGzwyaZMUJ1RmCK8gp/eq76v2N9GUzniuLHxndjVVvprRK5uCI+MTNNgTyvY8w
	 gUmUue6YFVDrJ0CQ+VZ/KeMaN9uR0qHic/ZCnp2iu+N3bJpjGzu0I5M4qc+1yRfGB6
	 +q6m80uqAAByHfrJ9XN+hxpNImwK5QkmgoWJEQma83beKOC4cCk3/X92ApkciSerKh
	 K2F2DGU9S6zLhm2Houyw5u/OQP5P2yPdMWdYGcp49r4XWmLVT1Yo9MQm6upks+NCGB
	 CpjlvvZWfxGearjWMuo6+HTnHtoCOtdmbKy9jTuAKdygXM5HOOv25CUf6nrVceLGa5
	 R67ml0IF3aL0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC1E8C27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 08:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171766424275.18969.15687029744186091661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c58ee12a460151b5c2d7770c4c2d780148bbce8e6371d0484468c6de6906ba99
Date: Thu, 06 Jun 2024 08:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717664242
