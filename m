Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF3741C77
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727076354; cv=none; b=s1dH0S5huVA0B3TLXev0GCOUrSDsMiND9eVzA5RIQSXtGzC382BwNO56jTVKNKf/0Xcc8wF6jVjb/ZC8CTO5qdSx4WTE+tpyezvlj7MmyeohFU5IFC31165MxJEEgtNfWPSMZf0Rk7FwT7XwrH8AmazSxCWc17SKuNbXANvlVgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727076354; c=relaxed/simple;
	bh=mNwM83NnZOcJyV5GOzCZuDaWlQwd6oYykOF4eFwhgqo=;
	h=To:Subject:From:Message-Id:Date; b=NDwadKXXzhgtsHH4xIITzapES0VRQUpKkmn8RoxahKX23bwa1FQPxs7hYu6eJTU+Ig76bfJA+eFxEQTB+1MNJ/TtggKSVwrk5JlLI0SssKnQGKaeEdtD7m4SUirtXZl+usJ3JK/L2JgNvrL1FAIByL1f7TJAQ8ovpBJg2iMUvDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HXtSfoNf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HXtSfoNf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98F7C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727076353;
	bh=mNwM83NnZOcJyV5GOzCZuDaWlQwd6oYykOF4eFwhgqo=;
	h=To:Subject:From:Date:From;
	b=HXtSfoNftW0ntik1TqGHTn0pg1CrcaDcSCN7LUo+CSEsHjhtTjHDxIEbkTWINKGkq
	 52YWJSNvfOy+6nsSF7rojdtRpiadLsibCkJhTw0K42SUHowdbfTuYfwwS+Ui4whMVF
	 azCWtyC5xdeNkkZByZgb9vC7dxQaC8Wn/XQudlzNjOO3WS/0uOd3O2cM/0M3fj5Qnc
	 MA2JdB/UQgyjOUHT8pVh8nHVBpd90QF6t19Qb9KcKcSr2i+9RYofZI+42CzRWUMd0a
	 HuTixH3ZKYCXp74/kItowhk3OFgB/hCJdvD6s4NzEzz+okFcaFg19X43VLNk62Wa8Q
	 ADzM3XTUsXxiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B11CF9C6F
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172707635360.6506.10825574706389236471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ed4f88c4ac11ca308c3c9c0b303dc37a1a9338a81232533519b44ad70dcc46
Date: Mon, 23 Sep 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727076353
