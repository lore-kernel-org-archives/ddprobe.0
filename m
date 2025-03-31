Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34195FC0B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743458394; cv=none; b=h1aQsy/yuF8YCJ3wwUKPme1CCraRSk7SQ/LfssfZdJqEGuCgHc0DVuurgu0Iogzfh8l/xZPt+LoEE73Ulkfr4mqyYc3VrE5GwL9iBJQkqaYu7lUPkZ9cREDIsqwhkDMuH9vy8BmI3A0SdeBxDIbtpRon+NtwPrHG+0n40+5b0NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743458394; c=relaxed/simple;
	bh=//wnuJZp38if+RvScOjXHIXORsRAy1flj1vMcQ53SI8=;
	h=To:Subject:From:Message-Id:Date; b=aC0mcUyKZbjR7PupxbocFeX26cEHJKHVBmR8LtM1teQ/jGpPMxoeMcGS4jJmi8WVkqMMj3noM/queIKMd9oKHo70aPwUo7duxI5BVORVsU9BovoVNKZZQPCEywZJQdVc8L+ltq00/Ex6Ak0AzA8ieDBWteBXfnOKTG3Mwo2XaCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fq3CdrOS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fq3CdrOS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DE4C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743458393;
	bh=//wnuJZp38if+RvScOjXHIXORsRAy1flj1vMcQ53SI8=;
	h=To:Subject:From:Date:From;
	b=fq3CdrOSOkPXaM5Bio5uQmQgsWpSqLzt6uDSZtwvq8mlUtEdrGWsLpbKKLsGA6DOP
	 IYuFGmITp3sCfIcWSJlQbzOCbL80pB/OMC5iMD3A6cz1tp+/RwXAt48SNxcfod4Fo6
	 ozocrbhepURTIwzqw8rd9/A39KlA+WJVVYuIxl2A6gstqE+K4pAvA3LSAM1/cmM9Ii
	 LWJ5W11aeG/DaVPN2oxUbAqBiNcMUqE5GazDb0MB6VI137iwlJ6832Km4GqVYIVUp8
	 MIpD0lgUKhYjPjOyKoD1TFUO4/hHWETC50S0JS4YUDGnDpbJduD3BaxbGxvJMWDg+Z
	 ZHxtoanHWYmUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC1BC3600C
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174345839357.30097.3502287190711597463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd26ad43049d79b3332fd92e14d34b2d53c3749ebcfcb56984acb585bb643672
Date: Mon, 31 Mar 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743458393
