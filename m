Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2357F258CD0
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762357794; cv=none; b=ONGEUy/mJVBcCEvgx3Fyjn8Bst6wh2W9rtc3EDh1AwiIMsE+sek3bATqxQ1CPmIdTF9BqdVmLkxxMCLXraXELK9eMtODlkYXbO2VIqNKMuVQPP15JDKqst7EbbdnCsAtkDFPzFjcTZNBy+Y97f4RhWEKmFglCo/zJmmvIOVJTuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762357794; c=relaxed/simple;
	bh=iVau4nwHX8C7r00+9Q/YX9aIEOdxACnG2r30jG2Wv0Y=;
	h=To:Subject:From:Message-Id:Date; b=u/JNyFNfC+2etKlTPFV6yu4V0+yIxemrVShos1XCx9mLFuISZWsZphbLyey5EgAsTBGh0uTMQjM22bqeGVjQuSSlukiTJoshYDgr0PW22SErNicJW9jGyqUI0zszBvUySSsbWv/NE40ZHk99V54ZR9R5vjP1HRW8PQSMfeqKNOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNum2Hd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNum2Hd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A7B0C4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762357793;
	bh=iVau4nwHX8C7r00+9Q/YX9aIEOdxACnG2r30jG2Wv0Y=;
	h=To:Subject:From:Date:From;
	b=hNum2Hd6IPc07mS020N257yn/qHkhtJ0nZsFlw+lub1pXqqk6ejc6rLvD+soj5jTl
	 2F1bBXz8VKWGwa2XquBqS2+wFBK6yzMGweHHH9LUdf4j5aMWlZtexDBYmhap3myUiQ
	 jMXMBzJLhH4kGc7Yqfsgk72L9ovw4sNgzDARZnTyfuSMddoGoEx4infLX2T9BcekzI
	 Zm48/9caVfv5EqXaBfTeEBsSTHfjPPOGcWfJS8SW+RPliw9Rb5y2zv45YRtwnH3IQQ
	 vKa9ME9KD8CiXR8DD9M6zAb3Q24SU0u2PfmB4ZErfHYu8YjENhyF+V+EcIHK5yyXCg
	 mBJnqCrjrTtFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F99DCCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176235779357.16303.8902255530322561050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 175097aded71db1a518b0c55fc08def8460849d65e0946bff5f64462154d8687
Date: Wed, 05 Nov 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762357793
