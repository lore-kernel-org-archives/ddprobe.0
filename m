Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B638C07
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737639954; cv=none; b=sznzd504CAFqr8d2vjZaG/a48rCRDtWbd9wfFD8hiT2fLUxX5bfEphTbDcRyKEnnQvwfIZVzlcZS/KQMTv3VC1JkNNU6JHrvkfqz0Ym1lvvo1G/lbPhVG2/dSd38MOjqZAr/ggoA0RpvYkMLr5UIwINqM0rWyNSYhnX0Sqs2SH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737639954; c=relaxed/simple;
	bh=mOoo1/PPqgyzTlmiTfm57MLnQJGoeV0lJYeFZrP4CWA=;
	h=To:Subject:From:Message-Id:Date; b=iYXzJ731Hd3GhpzKZFFfOduDbHayov9dfw2gIrHHDXbxFYSb8/7U65TqHKtWzpLvo6MbRaJrALSr2eXVqgGfI8UYRCoZj9SgRvFVTlXPWVpaxnCWChbKtvD6sbn/t6lIKGL5I9BI5dFMQOAkvNvS/YzmQEdUDrlvL1/CVu8F164=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzxpX286; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzxpX286"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95AB9C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737639953;
	bh=mOoo1/PPqgyzTlmiTfm57MLnQJGoeV0lJYeFZrP4CWA=;
	h=To:Subject:From:Date:From;
	b=dzxpX286O3Bog/OjJkWM27YeHm4eWAkRXlB/shdBO1wrGfjowSp+r8QkEhvVcLgwH
	 kVrp1BAo8KY0o5oQo28kyvA5h7kD42MpamFqMbq/nTyeCc52Cr7bwS78sjhK93bfPV
	 bo/pFTJRZT9uK5Q3ZHlJOFLImtYilCA+c17Z+90UY4DJP2FuPlcvgHQ+4KjojsXcLi
	 /1aXBYcOL8GFH/xE5WGgqsWpE5VoBXIrOpRpbSSCHFi0eCJMb3eei88UKuP2QfCsJk
	 BfbQmxVTw8Ctm9JG4B8HlGoBHFUOh5ktBjy1A0Jl/BguepEHdSDTu28uApqTK3Liz9
	 Dll/6ZQuFP8Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E15BC02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173763995357.2775.16941727737459185112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c2056faa3fe9d64e7b28ee37f66e6167427924d32cbbe8eab67d3fc5a5fc18f
Date: Thu, 23 Jan 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737639953
