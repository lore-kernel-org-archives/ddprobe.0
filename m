Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1142D94A5
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769254434; cv=none; b=quSs7TK1P3Aupko33NC7cjuuf1cKnErUCdm/9inkoFndDlbai4rCaYCrrQxqO4ujODNolIZXBVxtXt32AbvJCnoNhfGmEksfQN9DNLptHYGX3j1pJZhlG7suvW8einOnnwNvsbglETsS48UpZ+GH9zQBXnMU3aRwMCR7Y0WoR9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769254434; c=relaxed/simple;
	bh=XPGv+Nj6MycN4K38fWMBxV2h61Of3T21IiMB/qKhyE8=;
	h=To:Subject:From:Message-Id:Date; b=sFWnUSqJGDvADvTAFO6cojtkBYj5vnkNVACRXq3NSLvRNoYX6kz+FjftNIWYXQp6C81wY8kb3LG0ABSnv26i/snLr9CzAIwTmi26N+JwCIupF53tlf6uSl2YjaoHQFnbwqVl3XbmJ0S2RiJzkzXVTFiiMZGAQu4hazZ6IcTF5f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2dGFOit; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2dGFOit"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ADAC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769254433;
	bh=XPGv+Nj6MycN4K38fWMBxV2h61Of3T21IiMB/qKhyE8=;
	h=To:Subject:From:Date:From;
	b=A2dGFOitAXFIiBqgs4QagmKdpUFajVghM83IwMAvYDmii+cWt8PWtZfAHpvOBxwf5
	 SZPRNil78H8eMU5sYo6DEofCmWL9qlzz9TdvrGsTOnPsS+8xNnn3CQ7JlOENR94I4c
	 u6KSCZpkvsB7/jAdN+nmsjX+PcX3GfjLtqAUpukhmsyolP9UsEYy2s2n57MdBwSJMk
	 dkhxnAi4N3oPpCVOsanJickDm6fsAvuZWItOzlauKWRzXzQk34eVI2A7R9qabznz4+
	 mZUKcFOrxNRfPCCQch9JYfvWN+n+b3mDinLLwFjm/VxsmG47KHSLl14angXKvYpLye
	 iX2bqYQeC4FOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936A3D715DE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176925443358.4133.13831171085865726878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d39fc2dc88e83dc5a5a2f02eb62f8ecded9aca6f22a614ee795a0720d0b25dbc
Date: Sat, 24 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769254433
