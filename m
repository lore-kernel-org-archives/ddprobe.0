Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F461D555
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 05:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736834154; cv=none; b=cn3U7r+EDns1BNvgCFgoWpgFQJJRrjPHeQHs8XGyYTu2uK0CX2s9LoGmkg/n/siMw0oDc5FvRWIZEWbhESkMzZ2L6LBtOWIuXkqGIEPkjoqfZ1aAeSBFMXabpE2Uhv8LifLuVJj0Xkz1gqtLUdrLXcFf6sv6LBy9sR/ecxQqIBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736834154; c=relaxed/simple;
	bh=lVCaDf9W2Xh8PrtCx613xAHcu6dntb0T48rfc1mQyzY=;
	h=To:Subject:From:Message-Id:Date; b=QYvjPlzU8qxVAM1OTFXRVxZjWWt6j1Y13e/3xlH3XSQITS9d+MMULO9s9C3nyVXFY81a243avAF96onfyaYL3vX4pusblyCskYjPfoozHO3nGEYXPN+EdTo4jjSm3Y0oRHNh+/jV/upWDrPTSdX7tWgeupm9CopLRqQXYr5MRbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thjXB8Bm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thjXB8Bm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA73C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736834153;
	bh=lVCaDf9W2Xh8PrtCx613xAHcu6dntb0T48rfc1mQyzY=;
	h=To:Subject:From:Date:From;
	b=thjXB8BmufQIuTDtkIsCiodTwuqLQM1mJ1LLjQ3wOVuxV/S8JDJrRZ/RWqL3/Ln2y
	 /U8BZhlFbWs2y3C/XY9fjc8Ly3F6Zha2hxSEnqIITDRPLQI7UDUtlVSxP3XDOvrsFo
	 7qAcur1jnZeq8IoWuAsicOhmvTPav9JZYHigntKd3JnwcMz+e6KSv7fc6unopKq/kD
	 gHD/tAAnWokUexyhSjYKimHIT03Pj2Ffw+7ihBONFNo3xMiCMCY0q5UrBq7wYJBW9C
	 OmwRdPNrrviFNJNZb3k1/25vc2I50x+6OYwSj1thNr0D5ZrEhTsBnqskxtqpBUhuBe
	 UIUdzvpCHWfXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965C8E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173683415358.6367.2068124262680045348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc78162de28ba09a544c8cb819ba7820af27fda705048e35558535823f54c404
Date: Tue, 14 Jan 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736834153
