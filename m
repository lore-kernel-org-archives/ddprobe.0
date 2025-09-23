Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5916F27A10F
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758601194; cv=none; b=II4rsxMixjqipRmFhxS2ACY7q/JXedNtUhIKQFBun76dnr1psVUmZYAe3tnMbJdXZO/SQ44zqPJ8XTBqE3/w05K+1pEbMtz++KMc4BGZoKufJFWG8ptVsVcvng5UfjkhhhKQj/ETAdvqENZIGnUKvJRpoZSZqxkUROMcIvXRHZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758601194; c=relaxed/simple;
	bh=0Jbng/t/Q0lhlyY/nc0nJ6l+s1sh1HW5FnQpurgnfps=;
	h=To:Subject:From:Message-Id:Date; b=dTL22VLxb30UMFQqnvYYtZIw+cv41/9Zv/hu+RjaDLSH7p2aeJqzmL0g4mz/xHlnglJiXDaALjCj796nHz4opvKBG4aJgjafXIclfp0HwlMG7SmDh6Tp3RDjNXhqeIukW4e7siL8nkwBZhK0Ek0GZELxVzILw2ffTnU6l2soInk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otHwths0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otHwths0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE275C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758601193;
	bh=0Jbng/t/Q0lhlyY/nc0nJ6l+s1sh1HW5FnQpurgnfps=;
	h=To:Subject:From:Date:From;
	b=otHwths08/idLKWxp8qe00BGJ+XpPbin+3w+VPuA+enokF85utzt6x+SKAPkIsFoZ
	 qWJ9jBZSYXPZWSrJbA5U4yXDSCTWqqkKBUP8/67WH8FIyXW5vwZHTobLUZZrIl14P3
	 yjjwlQ20AC5a6mhiMbdjcSSpMh5CRuC1RxBqqTZcyyDFlL15aF1OBX8aI1k8lNCJ2l
	 fJpAGjVqFO88+91R42N5B2yOHxyemIjg1IZ7uOYWFCz0h24OMUNatsmPJ5CNTybdxM
	 ZrSi15c1nvylnuWQLuQ80o/8J9XK60ZIqW7eZxUwrrdBqF2sGaEgZKRx9F7fz6bzmv
	 U1rYNUqhVTo7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F60FCAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175860119361.12054.3615776743590498034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f7922d2eb8b108fe0fa264267faa16a148b976bdaefa24b05254223b03896d7
Date: Tue, 23 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758601193
