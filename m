Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C6E4C8C4A
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790058034; cv=none; b=RCvYHEohJd8faH+wCWe7WnVrguPFU11TLGp3W8HxF3v3uqZytXB+pocn04mDZQeStuYwZtBm+3ivouYQ42v4GFaENFV4s8PQOn7xEN5nDrEg1sorYPDeOt11aIWBdqnXu7PNtsvRS8qD3F9XeDCH/sOfrSIxF8ICY7iP/ap+cTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790058034; c=relaxed/simple;
	bh=sKo6kKwUwQ+ZwLAGIxeymnpAYVHr6u4hHk+qng4rN0U=;
	h=To:Subject:From:Message-Id:Date; b=YkvPCHOtasw5doDLfnQq59DS7t/llYIcqkwb1TVsCcSo22OBrRFDSaztQG8gjqJbNT430M77FBdeF+CVdiuq+hJIk0ITDj2IUZoIv3v3pWJias9la2Y5XTAwcNPJgWH5Mq9jRojcyabt5yrZRa+TMeSw+pKON+tevPyGmzavITk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMChGrNq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMChGrNq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD74AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790058033;
	bh=sKo6kKwUwQ+ZwLAGIxeymnpAYVHr6u4hHk+qng4rN0U=;
	h=To:Subject:From:Date:From;
	b=FMChGrNqlKeTWq65m/G7ksjPnxux7rm1HC3B7hXzcPvNbKhqs5Y+rTsnlufVheRfG
	 NrRcEnXFqZHaYsHac7PTO7/Ek5FG79pEE1u3VhoGiz7TkW11RuQdhL5CmWflwTtEag
	 Ve0Ye1JitcAkvPjZnlKDO6LgVVFrqBJ8aWWtXm3qfmjnQyyMpf6j5YZwU5G17mJjJL
	 DkY/L4HsQjxCC6zEYwOAY0bWi6OzpIKnXJ9T/49w1K5ohUq8aLre7Dwu4KS/9gR+cn
	 D0XLTbj7KS6BCibN3ib0bqTFbvEgA+hTXJH2RqTcjE/1nf7MOwkoJ9wTvCRMBgqsVT
	 l0apbrjhWprYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7ED6C982F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179005803374.30944.15452128243385658498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a943e0132334e0f47720dbd16d75f871c5d35a6402fb9947453a5480cfdbac6a
Date: Tue, 22 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790058033
