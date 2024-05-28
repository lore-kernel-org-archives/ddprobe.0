Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3F416C6A2
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 11:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716894863; cv=none; b=IM4jfLhlk4+R0pZFnWCIA5OfVzwpEtV+K4aCYZxCq5JNF+92CY211vnCd3Z5YjvZ2ghpd/CYosxCkWOpVFC/EdQwiGhNlJwP44eS+Ay3bvmrlz5QCoUXY8VCpvfzl9fpWJP7AZv1T/uuGgLv//dH47Uc1m+tapRGYxWJaue+KPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716894863; c=relaxed/simple;
	bh=00MLlKoLV5QV1zE8hcUoMfYk5cwtoxmJnooXsLECHhQ=;
	h=To:Subject:From:Message-Id:Date; b=C8xEBEqMeBojtRLHkgj4to7Ghy+fWZHV4T0cBg+lyC6rFADrqbPmtJQdciIvxWkeJn0R2nqvwSsMe87UkdQTv9GwQt7c5hn2+XeJ7YXG8MaDrlacvr5MO0CglSSG6XpxJY9wzhR7OuYJ8D1wBma0z/98reXnmd3d+OymEzH/aNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBhIwxFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBhIwxFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3A2C4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 11:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716894862;
	bh=00MLlKoLV5QV1zE8hcUoMfYk5cwtoxmJnooXsLECHhQ=;
	h=To:Subject:From:Date:From;
	b=PBhIwxFtBsZzYzNO7ED7LL14uAbKJg17NV+iNw6nW0vLZ1k5dAt0oYda9juKI4hJl
	 nXHKXkYMwELkg9dl2p+p//J4IIVLvIsG1oVu1J+5I4q8FiQ9K4NbdUrVEKmuX2xNKm
	 EKoAVexqDoBcbomim8McmUt3kr1XpZCCWgr2Hed8V7U+W7gMbOCz2eDU21/VcLbP4E
	 UwTikz4qX6AMHVOCyN+ewmrRTTXe6Wr4U9OrG28V0udSv91cSSY80T1FbG+CL2GOhf
	 4mML60PoG1eSEo9aS6UqRQd433e1XP7IppA2zFww2pCGPE1B8l07gIpKWUyUcXsJD3
	 G0ri/I2Lu0Psg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD65C25B7C
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 11:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171689486276.20405.8014791334747220412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd84ae03e650cf23caaf74860b29304629cc65cdc8ac756b04d9e2c979075996
Date: Tue, 28 May 2024 11:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716894862
