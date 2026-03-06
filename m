Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF323346B4
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772813694; cv=none; b=VE1o36uJHGuK5K2q82QVVK365RtcJHmdJUmJryDJSV9Gbz8/4E7qGivv3dpgKN0wqznC81qaTVC+IHdnifkj4aX4VHtb5SujWL16FXoliduS6GPe0Os5wYBrVdobSapGFjBDzWReE7+3n2eZtrtRcxlsMNhZ/X7Lz7iFVU2wYS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772813694; c=relaxed/simple;
	bh=SF2Au8cng/oIh4110QjLYQjsYqHUoxIld9+Q6BtybHk=;
	h=To:Subject:From:Message-Id:Date; b=IM7Vrxt5texyytqmUPuSJncMTcfmNUsBSqde2O2jOfgbZpqyDyjwEz085tViylKHaXcnAjHnHUA/dCAeLd33frv7rNro6zPi5G/p6nadV7v2CBiCelkzXnrg4K7nXGe1HKveR3uPgUaBzCbe/8PG9Tn+7slsSq1KzRKIYn7R3Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8fE1BgA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8fE1BgA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27E0C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772813693;
	bh=SF2Au8cng/oIh4110QjLYQjsYqHUoxIld9+Q6BtybHk=;
	h=To:Subject:From:Date:From;
	b=I8fE1BgA74R4+ODx1JEeKANlhr6Olkjl1h5g+vI/sBq7kGCx+VVY35pUBUvbXyn3q
	 saoOmIUi80EwmMBVKzBBqNWZle1XtD61NaQzX6R7wdMx3vb0NjKqJoXo69i/H4MGUi
	 tBRna+qAGc+7Jxx/DxqAz1kqh03h5vZI+piDdMETmqWx87Qk8X3LJ4kgqt0M6FdmCG
	 94NSkDAktEaOzFbiNElVu2adzN8UCRiPtKfqK26sROkRoMnQORyNSv2R8ROwK6iCQE
	 z9g0rcbbaG/Fj305iciPR/AMMY1g6WorAmiH3OM+j7+ocMYVzUXaEOpOxQqXquz34t
	 qoSM+6kw2HqFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901A2FCB61D
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177281369358.17483.3410376922711045350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feea9072d33c0f70bd7517944ebac390d1be6bd157bad4e191e09ac84808ae96
Date: Fri, 06 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772813693
