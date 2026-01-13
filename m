Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7CC2772D
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768337034; cv=none; b=qem72ryE8ug0g7lNIumnLPtMhP8KUqjTuUrzBUlypRPXog4DlsWO9JJCilOcWSLXj7qq4K7EHAtYrV9V5BTn5WvArbUDrLqDfbbcxmDlB5hu3rBHAQhgdMm851TVNbpON3qitbFbHiyQhmdBt8G2r92IRA3H6gLnjPqY77RF1KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768337034; c=relaxed/simple;
	bh=P+EVOGfvPZJPB1G19MWafY5KhtpWZHIxVxTQzkSyuGA=;
	h=To:Subject:From:Message-Id:Date; b=PRPPyIsuWt+amMeRaas57EP5z0l7d3TU/Uelfeah9CCFnF5kBpl3J+/sM1mC4ZPMAqePXqvrtZNDp6CUezXxdB/m/wtW9QB4HA0LvMZ/1pvKGvN3cQLuYjuPynSGRC1eS4gasLK2JQnWtfe966T4ea0diHeb0ZucFatkdqeNkfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JkFaKqAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JkFaKqAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20FCC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768337033;
	bh=P+EVOGfvPZJPB1G19MWafY5KhtpWZHIxVxTQzkSyuGA=;
	h=To:Subject:From:Date:From;
	b=JkFaKqAvhbuE/iI8pWOrzc+EMo0ZohHtQEoFi7UkVunbf1OiFpzFeX4CSgNyvhRk4
	 iO/q5OHGVmAjRZUare7p4Z31gTitprZLgKiuWwhTEFWH2p52GaTT4rQ0WVW3Y9FoA8
	 U1sPw8pO+ZDcTU2BYsWGHP2F3p/mVs1i3fz7ZzuqgoQ7E6RxaigUaIzpLZc6i7nS8X
	 EfM+aa4ALthdDZn9owgPVZ2SirF0f63dr85TSwUEijqDk9y+bLbz/l5dWVqYv4Cn/j
	 XGGWbnRhXFw4LV0TSVO2dR0Xn1/QRc0koar4vBuGZPMMTfj/MtIlI/PwxmYEiZUbJL
	 5LNRivE61FTFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90499D30CC0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176833703358.21454.10785263153296537759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5141731d8127e2582394684da252ab1aad6f26a23f9fe13ec61c7347141ee51
Date: Tue, 13 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768337033
