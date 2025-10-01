Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FDEB1547CC
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759300194; cv=none; b=hb/Pj2hjgENYCfcl7qeEAP6pCKqxN51f86/sjycNnuROVLYLdYYcaaQ5Hyji7H82Khz66FmlWcmhol+N6bbTYN9sg0ahki216sidZo/dlNmkWC8AuQiOthrPkT/h8EVifdkUq6X77oKyb3pDpXlRWamYdc9EdCAEdSSLCAzDm2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759300194; c=relaxed/simple;
	bh=7PEnXLNbjbOFzqOsNhUanUP0Px4Ceyl8WFFG5y+sTnQ=;
	h=To:Subject:From:Message-Id:Date; b=ugd2TmmKMsl8jMglrp2a6KRqz1XngpP8NuycLBrndtFNgLATtZsynO0fH49q3OGAcWJJiMOUvSaAujQA3CC9omFzyu+33gB9GY+Ed52d/4HTuPmK9bbxfHIFEvKCowHri8rWRNoj6zWYham44Ip1VMKH3RqG8p8vP6HEFcBOHt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGyPXUkS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGyPXUkS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A42C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759300193;
	bh=7PEnXLNbjbOFzqOsNhUanUP0Px4Ceyl8WFFG5y+sTnQ=;
	h=To:Subject:From:Date:From;
	b=qGyPXUkSSE2KTeS/+5RT/0/rWMH/MEHNc6Dk0wZsRg5bGDfiUk2Bb6c8uEqLcjnA6
	 ol7I/VokDJlyOniBjFMuQaVa2nS/7iwwS+Xuve3a2It5fYDl17e2+moRGn/10KUU1B
	 5Rr0+pW60SCWgO0PVY9M7W97xw7TIOMorfh6J8bVA+3QT8yhlv+2L55CRbLYAe0YJ8
	 ZBzg+WkP6gH4BxmpKFULmG1D35GEvjQ1haqZNLJSLeypJ9bixZpIafrTwjbTH9t012
	 jRVDM8GhApbpgobO1zOGRGKXMyGjGCP3Ts4IvxdAMWlPExlYM9702YW1LZaaDa8whF
	 s5ypPT2Z9U2Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDE0CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175930019358.2117.2599171890678685575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62b1c644630f82004465749305e973cbe46ca600f63d2ab5e02788e49683fab6
Date: Wed, 01 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759300193
