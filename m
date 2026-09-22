Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7A0554092
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790097034; cv=none; b=WPXOVsD1bL9b7x2/Lagb4q8kir+7x8rFiMPKbgzKgNOGjy5jpE3DbAInuJ/QWlSBQjkUKZJ879jP8N50pNUb0VY0AoFjLZSwc/y6h/Iw9quipGKdItjGYK81n/RihQwhOqYrsR5gfo5bfJOi8/1gONRv5fnTwNIspjdQS1igZWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790097034; c=relaxed/simple;
	bh=9Dm1j1aluEEhcoMrP24Fll3HCIfOaW3znkycv9kkMDg=;
	h=To:Subject:From:Message-Id:Date; b=LSOcktBjpuGxW3yFToWgj8gj/YeNonro9tqM4GrRx54FOx1o3SrsXi/FSeMBIaFEaKIKhc0wh7WHX0kHQm5EzwQ2b+kmXSMLy47OmyBFW6kglvQPP6B1kDeO86wm2Yt6rvcnfVH1xzU/CIpmB5XDMzLuYDBdD5MV/bnMfwtl2ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYeLl2yS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYeLl2yS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D3FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790097033;
	bh=9Dm1j1aluEEhcoMrP24Fll3HCIfOaW3znkycv9kkMDg=;
	h=To:Subject:From:Date:From;
	b=EYeLl2ySgjSJ/UZ8N1xnsBho10uzG5iBv4TuBjHA0x/GU4oZ9zvSgAkuZEECowhUX
	 PJJgu9IICaMI1cmynYXzVz6rT0ujL/nhafOZulD5jM6CwjgNYJIlp8EJU2C0p1aSWX
	 oACb4t7meL3k8lux7hM9Ekxe/e7MDtnEGbN3xYlUdqog20NsLoJMFnZmttEFnAFqW1
	 cYFvd8z6H2l+urx874po66L9chrJyDTx4LfqCExByWvG4kKSdsLfSo/Yqnm3njJTrS
	 YXMs1qwyCKMSegDJQpUgIshawbK7HihIWhFUkiGrWCc+3/lJCtP2TtP7TFtAT+l70U
	 uIVdD7nCm6P7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF01AC98302
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179009703370.18574.16430118166976372176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a906d511d4bddb5b29d0d71be06fb4cd8196c75065af96981c2f25e69b67b14
Date: Tue, 22 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790097033
