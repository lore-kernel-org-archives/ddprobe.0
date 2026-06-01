Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481D8389443
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 10:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780309474; cv=none; b=MK04TMUCORoNkDTlBqBa6r4/rizeLszakKj2gdjs8qwfcBxRxWD317aZLF0TahB5KG/AbnokldXhxU2QRTLt0KTI676g0aFTYNYtSxsBqu++LaSYg8gLa2bOnPqFG3kp/hcbiwrKSnjGsvcJDBlMhh6ft3eB4SffFowq3rYjyWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780309474; c=relaxed/simple;
	bh=kItUD1LwWwnH1T/sZvAerowEYvbHdw/r2VQ3cSlo7rU=;
	h=To:Subject:From:Message-Id:Date; b=dH1VgILNg9nmipceBHOxkWP1vdwwYGLwAtutTIerzfRAFM/qzdcWG77XSgYQg5k2HBIfeZgyG8xv6nmeqUcxmFnpCTSSxawRb1XnA6A9xlCXLh/fDJHbHmPG6He5A8vbZSn0wqv6ALtrIYuTgN5GkIAHl4QKVPNgZE/AzyX/M20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHHGfri3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHHGfri3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC6FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 10:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780309473;
	bh=kItUD1LwWwnH1T/sZvAerowEYvbHdw/r2VQ3cSlo7rU=;
	h=To:Subject:From:Date:From;
	b=mHHGfri3h7BU3Gg3SQi807IreuUrqP1tvwQgOP3JRzw2eiYl6R+WOzA/MEGWz9MCX
	 rXzYe0/3CTn0a1nexxuoUoOp23+pKlja+Es37qQI/BbXrMtVplRVJiSfwNh340+hhj
	 Wb46CeT/l4YsEm5GArJbtnv1CjF4aPJzYyOlVHBnnxZis1EqAea+4yRseExdm20QyQ
	 2zTlGB0fhXzPZsMX53UQTXT3zQ7Y4KRDSkqo2uLUBZEtgJCMlxY+lcf0AmpFrExiyA
	 zPBr4JNAo8TJL7EGW7enA/4b+7yZC2IzYa9t3y7xDMjh6gJ3HwyB/Y46M/J/1d8GCS
	 /ieyGKd5KjEiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC149CD6E56
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 10:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178030947369.8045.3222723119322231830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5874ff059010b0c7fbd6bd85256bd16931e90211f919c13e9db2a409a3cfbde0
Date: Mon, 01 Jun 2026 10:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780309473
