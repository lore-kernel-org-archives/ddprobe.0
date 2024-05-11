Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8756322EF5
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 22:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715466743; cv=none; b=Qju5NDpZllVA0BeKmMXsvHoldrAYznVKxTcNYbbMt+0IPXwAgn2jotlATsRrazrRowC0iVUIWUJ5vOhqhkgaEKwLg80qUvAFx4u15cSeQWyxuOWVFrXAoYFZ1Vc9p7An3CKFDxRdBPQ5SzmDt9ZXp8jZOQOC8A2A5u13zi0QnOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715466743; c=relaxed/simple;
	bh=UjZdoROcUaj2aKJ32hUNZNl/+LjqIAlJ2tYs9FYXheE=;
	h=To:Subject:From:Message-Id:Date; b=t5KZdiA+VWvNZEUQvm+n2CMn2RK7FjAIdE6R/3ad3QaxJPPHwlHgdnzkIUnogoxS2SuX6fjxHNQlU8LD9KeKCvgpRvns7o6V8nFAFws2HFHqCcAgQnU28YzdKCCyb85J2g5hpJRoMDQkjQpler9TVg6+HmkJFOaTZxTtAzJHdzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0D1wJrE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0D1wJrE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D27CC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 22:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715466743;
	bh=UjZdoROcUaj2aKJ32hUNZNl/+LjqIAlJ2tYs9FYXheE=;
	h=To:Subject:From:Date:From;
	b=A0D1wJrE8sD1BDg9yXIwu433Jqx2pEPxQYLGZ8RxAi7bTPIHu61NJXjEEs/HTqvPL
	 KrabHVRTXhA92JSz0Wf9NhhnXPNCK7o5kxI7ICTnZEMh1VUBVWybbAfYOt0sdjl6qI
	 erF6x+DRawWY3Rtuthz4tohauNEG0VU4Gr3IDE3DzihSsw79lrt/G1jUkTDdPy4/PP
	 aH85+lcUb/r24Q3kZxMSpUwrrxnbSysU3pctV/O5Y6J9d25WQgqz6Rx/vTVGPKhyvi
	 LK497lCzAea9rkyVVJuYKa1c27af0dhyph6UyEd+d0icwzLuURf/5p6XJnssUh67eV
	 uLNCH4fTyah5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D905BC04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 22:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171546674281.12334.2011187400467357472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c98eb46112420f3294707cf832047e29bf290f5aeb71a2beef9574d6098d29d8
Date: Sat, 11 May 2024 22:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715466742
