Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271C03A1CD
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723691154; cv=none; b=Ug2yCyvys3QXjiiMDoArTPPsGg0ke4LOaLH/wZ3wzF7ber1d5I+/f55uH3cUDyyvDAkxhU08VNmUiKIInC5dJ7wnx14iNtd0EYnYIhU44IyWsw6rCf4VlsKBXhXChwY4Jcd1s+8c05vzmRc6r6QnCJ0eyO2tTTmAMHr5Qq4Wbgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723691154; c=relaxed/simple;
	bh=YEEFjKxW5rtYDGcu6qsKGNHOXSj8bukB6uz6lyKibXA=;
	h=To:Subject:From:Message-Id:Date; b=Qtn/QDLHo9Wmj6KxOghDgwl6eDCpEP847RcRHgAB4R4UmeesLhxA10FKNG+CB1277eUk+qA+oLpaJ0umLY9KRqJXGxaQdMqWQXz8pSeiAgstHPB8lVSqVQyhmqNtwYfcLnC58XF1ev/wmxXRLnHO8jptUaW3SmC6vaqGq1tw40U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNN88g1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNN88g1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF0CC116B1
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723691153;
	bh=YEEFjKxW5rtYDGcu6qsKGNHOXSj8bukB6uz6lyKibXA=;
	h=To:Subject:From:Date:From;
	b=cNN88g1UDfH9NqZ3wbe3+hAeh/BdhVak646BFktjKXlAn90k43NeNyYePPQUfkMYa
	 jp7eLMFrDseTuXe+svoihPJl0X3+vwGF3H/k78SbGBhnsMquDCstc/t0vF9MQOG69T
	 iBVI0Mu9DvdkWIzkJDv/TOsxRq972INQLLq4/JqRWaNT64gDn//XwS5Hlf4zY8366v
	 B4DAlNz9efsijPvTK7R9n/VgM+Uf+41ljfydFw4X2v+VntykwBiK1kjtE996SxUasE
	 wgIhVvTFakT8ZxlIHKYXdZdVZhiUCpMl4OtDWMovYm6ca1QQjNi0J3GiImJRxaww5t
	 0oqD9Pq5vEF1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B69C3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172369115361.26840.7535097272547871198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0427dd4034c6ef82ac9bf6a8ccb0d1eb4a9a30ec8e4e3d6792206a34f4b4a856
Date: Thu, 15 Aug 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723691153
