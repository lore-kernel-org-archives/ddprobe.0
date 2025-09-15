Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA46D2F0C6B
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757926793; cv=none; b=iom55rRGdmF4GcyqysM6NbtgKvdzujzMJzJCG7Z6mAmgvmcC5wvDUOdMmN1r+7HdmB6jqy4B6XIoPvu97XaitfB+0vsP43M4A6vFaN8rS4v6FVazwe2M3pGAw/z0VZDgwjHshJf188L4HmJmdWZT/V7tRlzY6x34traXISqODBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757926793; c=relaxed/simple;
	bh=bXGECkLipjEEGc6fuzL09t/tq6arQotrqQpi8+baGhg=;
	h=To:Subject:From:Message-Id:Date; b=h30cvfbt2NkFkm0/JqPrrePpAzsbjWoPWntGBKhk5Id8CjW/+akinVr8Q5yPB5+ibDCkRiTP1pQyCC3daUehU4z4G3k7yhNtxS4Xm2w+nprVthEep0jhcsG4GjPISzwricJqXYzsbMTp4086AHev8PgF7xK7agEQM/7T5PHcZOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2UI7ETg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2UI7ETg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29B5C19425
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757926793;
	bh=bXGECkLipjEEGc6fuzL09t/tq6arQotrqQpi8+baGhg=;
	h=To:Subject:From:Date:From;
	b=N2UI7ETgmjDsYXTOzh1PUQ8Hgk8wXMuEooq9e3WU/0tR/pSOgKwPg53Y0HjMrbj4l
	 neaErvPlyIQWUPPDej6OfZs/JhO40YNkT5ppCFSyMPbYN9Zl+hWfuGHgArdk0+LT3J
	 iIjxvVDOjNyun8PH7gWSC0CPXf1vR+M+IHJYDonnNmZ6iRUmLHc1FksuNt/vr4sSed
	 TNHpwtQe1kqhCiDNQ/nDtfGZHRKvwbf4+yN3sMQaI3Za6TaX5KQiMhgDFPeoFrtbV+
	 0NV0Xh86vYCaE4Cv9zSllbcaLk/WcTPS1RXJSHLq4G3ZU+HDV39BBBVk6xNwC0BquM
	 fO9LQGLW+fJhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905CDCAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175792679358.1222.973153856543658559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b82f4759fb0878c656d924a697354521ebb288ec36a120cb5bf43a89e3f5e813
Date: Mon, 15 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757926793
