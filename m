Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8151BC4E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 10:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720088723; cv=none; b=siQjz01txiejLsmIIEXnFNyreVqd9HksEK7lc1Fdj3FAgyQua02TLrpi6oB+Ru+a+a3nLVdqVAesXcd/KtkSuTY/ThD6IifeXzlbi9LPpYUj26poY5c1Rq9FBSORycYW9jzqSZwJuUKRgqFrRpMdl5tfmMBGlFwY7LXYGqjiyHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720088723; c=relaxed/simple;
	bh=NfuprWBJAyDUEH25gFxpSEeaMdNKH8yTWpt3W64qR0g=;
	h=To:Subject:From:Message-Id:Date; b=NddF2wfH/eX/Kd8snZ7aD7G0tbuWH7+IW4uMISmeF9xZ3h6NMkBLK6ufCqEX/4Htiv2tA337QZXJYcYpX4H9fIvLepQUbEwTdTLd43g6CROnp+R36Bk0CIui/OVmUXpCSyk6PwHx3icQ+ZEaK6Ge84ihym/NI9NbqfW6cCcm6fE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGjXG657; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGjXG657"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E542BC3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 10:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720088722;
	bh=NfuprWBJAyDUEH25gFxpSEeaMdNKH8yTWpt3W64qR0g=;
	h=To:Subject:From:Date:From;
	b=OGjXG657+kw/oCYCLKQwYyQAG4LLBEStJe8qukV/YhV3ZI64gnFsYrVMlvhLAJkEp
	 8iNpqnLOBIknrGVUQr0j8YQq896aKcaEZqMMwQexJvWZ18Cj5W6lFevOU+w0yR7PiV
	 gSN5RVdZRMJ00DkMppWZ/fGr9ttu/Yzt6/8WSOZFv1UScD7HtChWSL9v4pP5i8Zkbs
	 B62wIXnruG9ZtA6U9pk+Of2Df2gac6Z1vm+64tirXtqYU0wUb8fbtvcdgWyg4GczIK
	 YqVYkB/sWOJkL0xFxEJCDgLh8HH/geOqIGseaebNi/i2KPeD4BMxZ9NO+RaFP02Pig
	 PO6sRdMPHYMzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31B3C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 10:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172008872277.1512.2704695833388695635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f51f7d2b3ac8cc1f18ab658419b7ebbf6e6a1194bd68ef43729d6c8b7c8d9b1
Date: Thu, 04 Jul 2024 10:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720088722
