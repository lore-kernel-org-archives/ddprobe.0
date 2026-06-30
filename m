Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7503939B4
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 06:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782802114; cv=none; b=jMt57pw5O4EDmyGi4EXMQEdsHT3xk8gHZaWgxIfpwaLcmjZ7VzJ2YX/ns7fMPS/N+R+15FdXw1q3xLggqIFpfn66yomqad0QKTIdB0GNlhXqGo4zMrw3p7mVdxDVZ6UZTm/kHeiHd0vbQnn6rjTvl20CUXdQjzyho+TaWUJh2LI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782802114; c=relaxed/simple;
	bh=lOHbdl0/EC8Gqc208Y4P+7dXiptSsor8Hrhqkmge4rg=;
	h=To:Subject:From:Message-Id:Date; b=aIeQG1X4A75zbZbXl+yIDBxJJ4ZlSwybph+nzi2rGKJcsVWQP5gvv7xV8DnSEk0VWoMsSyoK0YxW1DU3/zXxk9y2OaPGXBL79pX+ne8OeheLuPVzoCjLLED8J7BEzIHX1ik3TCU4+nrWsHXCxfl5AkmtBbaNAf/7sjGBsy0Z2lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h16MBwko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h16MBwko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6869C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 06:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782802113;
	bh=lOHbdl0/EC8Gqc208Y4P+7dXiptSsor8Hrhqkmge4rg=;
	h=To:Subject:From:Date:From;
	b=h16MBwkoVYIxQx/zzMvferVctfIbS1+aaghDuIFNxRBB732xeduoD3HPU0RfTUqT4
	 Gcd59S1K0s44r6ln1ejawJSOeLZZ24p6P/C7O0GPkVECg8EY0KiD6nileKH8DhQp+W
	 0ApgYkXSk5AaqbjRU4Bdum5rOsa29UHlesFyG0JV7qxJFMPXNiVbr69jMxwPSCfzFn
	 TQAyaYtjoLFmfFQ2ehfax5h1yjOWWsd/ubOMU1bTlT26BafneFJlRga79wY5Tv9vqQ
	 X91Fce47dCbRk1m5JMd3mQtCfmReU8Ap+9lVyx0nV42g8GkB8KoGxPHLMaGrg/EFWa
	 y6+IHVIQapmlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE83C43602
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178280211370.29180.16980675238199338278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0c892d98a567966f32d478c8a3ecb9d2154ff8df504e2343a78eddf77425284
Date: Tue, 30 Jun 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782802113
