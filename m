Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2341413E04C
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721762754; cv=none; b=q2QMjHFFD1GyjNKfUze9gXObMIv5eCsHHmTKhdZhRp/YpdNdI/9cetl22IgaG2aLzwGviThfw1Q4GV5jZoIWF7C9oD/TNu2qhpddghICC25ar24qXxsGzl3J3Is0NCcrcksc6q+/GTtpiNe3qZ1kGsJADGO1uJEPCg+VQd1Fw/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721762754; c=relaxed/simple;
	bh=5y387f3rOr10t7eohHi5QBCIOhAQSHufmINUr0Fk2H4=;
	h=To:Subject:From:Message-Id:Date; b=Nsbc4li72I1iabSi0HgxJrJwc340QrB1PF6P1BeDwTD7X7Bd1DfJnRoYd5FLN6NA6BpAK7RLQiBcFXR4zuwWmTQ/jBIVpZPtZvUjANghFILdWtHXjXM05FjIuRf0/xaDZY6KMJKZxza42Te4dAToiwJItKiDfAtitIrBPCdSjLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCLn2ver; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCLn2ver"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B095DC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721762753;
	bh=5y387f3rOr10t7eohHi5QBCIOhAQSHufmINUr0Fk2H4=;
	h=To:Subject:From:Date:From;
	b=aCLn2verbRNzgqjTSEouQwRbnqwZALJzz/4lWhSRaipKDvRs4sV23w1TlcDXxIDPc
	 Z8GUz8iSOEt6OXrhCIH05gM/CprorMOMKeWUpsCosVfPi+XYJFpdx/gG76xpmytarC
	 v+9qih0jyiNID3nlEP++rf4kwcbtbW7IWPN4kjGCm7RAT7U++2exQ3ISlUqEG42nf4
	 utg8Og1zlr5CZD3ikUqoF1VKY9MaH5wq4Qm6klZVjjYJYslR8lKGmHqW13QI/4vLEh
	 gESVRuDunPLuTA1zni8KIr1YB6JUnOPXwdnoZXlNjuOBhBDcIV+FuYepcrwcOPADaY
	 ChjDkMnbq+duA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ECE5C3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172176275363.6511.15137613111280616536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 845acc46a7532e7da9dc1a4f28849626e9c87da4545a802f1205a5132d40d924
Date: Tue, 23 Jul 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721762753
