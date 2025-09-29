Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19BD2D29C7
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 17:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759166994; cv=none; b=iKV4xBOpfgxysnziCufbrlFqfaiRWNudvAjlzJueF4AntzWKEfpP8uTH0z4Geu31FjrNigvWIbWgj3LNDF5DKm8id7pL0SadISIcSaspjQ08kfJ9+BcvdVSi2B/LD2iZoCeMgtV9yeWvoFwpecouryy/nc/tyU+Itov55cwA0vU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759166994; c=relaxed/simple;
	bh=cPRoU3bkgjLMl2xfNQs5howPeHqqxvA7+h+BKgmqxeI=;
	h=To:Subject:From:Message-Id:Date; b=ldgTcd4CA6jAU+7ogo5OaX59juHKuCyeMWSPU19kNwtyKnC5smO1vLZUWyyaXOCYpMU7NRakJJsB5hc4fQimrBTSlnwbBvoRQOz7jTEyjaq85NAGMfprjNKsaLsPAXzFklRYRKyWg8Rr8tCNdkIqr0b6GV28r9XthNMwtqvTavk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sihCL5iC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sihCL5iC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A920CC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759166994;
	bh=cPRoU3bkgjLMl2xfNQs5howPeHqqxvA7+h+BKgmqxeI=;
	h=To:Subject:From:Date:From;
	b=sihCL5iCSBv98Q50xNN2LPGPuyod4Knj3/qQ/Q1MyduIO0sxWHB7bUp/P63YOoHow
	 hyk0mmOa+Fl0ia40rOv3Z8IjjWKH1ApvlWXo8No0suL5g/7nPecThAXOVloo/5/IAZ
	 7IsoxRmM+T2meqv8nQpV+zFF0YvLRZiUBQwunFmOno6g0TJFp88dncBsuAog3uSB/O
	 ez4c10i54IHzUri+1CyOupFSbBJe66zDY/3UsHEeN1Dm+tQ9dXg2+DreBhv+reS6+t
	 O09utEbiY+IQ8RNDaUNlsRhhXmHgEdjr4AJrDX84Vgnt3b+WSYVGpfBbW2NLWRRy7e
	 wFTfOlAZu5kUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C19CAC5B9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175916699360.5831.11352212300060796812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73db9406191d504849703fe5a34415688c7ca2d9cc92e2fc8a2001c29bd6b425
Date: Mon, 29 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759166993
