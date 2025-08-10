Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDC1F9D9
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754831994; cv=none; b=a3Yh32SXBoS0+XxoJYg4XqGvnxVuo3wWOd0bsj2n7Je7po7tnFU56iGMpENfDGXHgCSivLNUYKWJL3edNpraU1/WAssatUjwByjVYn0RYySjJu+uvrIBREqikwpSiMEfDA+dosQ4+/RVF9GQEXKHgTJK0KYdAu/JrXMRSrXI88Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754831994; c=relaxed/simple;
	bh=BO4G6Td8WxseDYYLgwnmjMVvjl4H5SenbR/YsHo1vsw=;
	h=To:Subject:From:Message-Id:Date; b=jrvaIY+7w4Rux1b+z3lRyTb3q1xfEUXCT5f1hgpcZfZ+pDzN6RPpSyBRxIM0EX3A6IJTru2ZnKiN0YEfatwBTqEiheG9EclWt17i8IMbtyS1o4PlwP7BZwy7oizfFfiDSUf2QcPbfAYOYNmoSJOzWj2F5OVJp96+i+iWalTLS5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gl7LTks7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gl7LTks7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C4FC4CEF6
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754831993;
	bh=BO4G6Td8WxseDYYLgwnmjMVvjl4H5SenbR/YsHo1vsw=;
	h=To:Subject:From:Date:From;
	b=gl7LTks7bzD7vjX7ldyD4IZOYV64niPYXj5+snfhW8KB96I+8JjM6fEkEWdtNslCi
	 pK9GEHKBHoKSqy5HMXrQ+2lybZm8Ms45YGmisszeDuqJVw+NbwBzwUKCDaJIYAkiis
	 OdIJkPGmXg5UQw77HNsqFpJp1oFGi2q00S2Us5RzT0QaP7GGlWZF0mhylVD9enw4Xq
	 9bUQ2Ku9I8E5o8u8u7+D71kyvf7PS38PCAQPmcWzFSggf/o3MRdGfL3ONAKI1sZaT+
	 kGclBETY1kVf9ocMeTQaJQPuuD+68iVu/3UzuWPgyOGD0EpUU0BQun4SEmzOAngYzL
	 jlPxcYKJtvXQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944C2C87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175483199357.2893.4269508505955108035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b8b12255acb79c6655ee021cdd6348fdcb418e510c17eb38ae4fc39dacc907b
Date: Sun, 10 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754831993
