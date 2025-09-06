Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2A623BD13
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757136594; cv=none; b=HIuYRUA3Fpg7MFpTokSar7shLfwh4tBrCohi/XYATojoqaQMcuf6qVCJ2hymNtenCyxn76NyMwv1+8QLxyCu8pAmPXIq3uk01ppXZi2v2MRT9f4oC5fpK8Rc9NNue2KZjiDN4bsAgRe6D/aJ83y47u1eWMItTrz+l1YN5Jf45Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757136594; c=relaxed/simple;
	bh=DlDKXzpHkbDGbgdI6gE/dNKzvcei8puPdVRxSpOfjMg=;
	h=To:Subject:From:Message-Id:Date; b=QGeXMkyJieuBg1rHw+WMftgNRB19p5ZL1b20Nu4Tm2TQ91mDbyfsBX9wIQEpkwJYbr4rbjQLc+IIuENK1voeM84AI44x31KEf9mQTDeExg0LTtRpSkZy+DJDJQ0lRvnhmETcc1tfC1vd3WkPPrkE6bd7Wi4+ezhMMnAGGL0euPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPjcCOPb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPjcCOPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AABC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757136593;
	bh=DlDKXzpHkbDGbgdI6gE/dNKzvcei8puPdVRxSpOfjMg=;
	h=To:Subject:From:Date:From;
	b=LPjcCOPbPH/nFwILVrU1UALgfqelh0lVrbjvJmOwsi9g2W7THgtQ3RLdTnKJdQmxU
	 QhdV5QGvISJedk5ohRnTGzVKuOOWbQmw2kGbPurMWi7XKAPPtZdttkE6JUaP4M1wMw
	 vzCtX5h+rQJDjI7oEoiRJe1C5b2ek5xesXW4X630OdG7E7MKNdnAwIoV2VnCrmAUJ0
	 2ShdcbnFzSMJ0tGcUvqSWpWrSOMedNmyLr8spgac5+i3BI3YUs0C0PSKdQ1ZROuQod
	 2Qca3ls5lr2donJ/uJitYK3sv27S4tu/qU0SUpNmbjh09kek88bj4sLpWAoPvNrgS+
	 KUT4kdRUGVmOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C40CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175713659357.24612.16258714182858950059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5027736ae090a2e7ab68ef2d8d8917a9c5e2d703f520062aa9e76b12a20f09c0
Date: Sat, 06 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757136593
