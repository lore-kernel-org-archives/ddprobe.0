Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547D9149C6F
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744445994; cv=none; b=oxbv+D7hqpU2x1lQ1eWQVBE4FBkefw8R1V23lxsSuwFd5e5a5uOURFVu/kpQWmteriAcw41N2HmhVdcCbLvPWvE9yJOu6d05GodxruuyXJkgpfum0d8vH7c3Rd9ipepVtWDDTNxjlivk8kDYpSDaSKK6AeTo4WZ/NNgLkYCJVLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744445994; c=relaxed/simple;
	bh=dmjddYsmdF22OUem/2mGGWkaa48eD6JeyHm2rZtD38A=;
	h=To:Subject:From:Message-Id:Date; b=ioGqZCYTbqgzTuQ8icy1P9TVDvFqFgTTn9pkis0GW628GzphhOkpxEXY+zQcdAByNIZI7p8O7ccgH38VBs1T+iVxw4KGwgRj5vZoSWbiP4uxJLmovo3R8PH8IJdpAmLnXHpwAZGLQ5PbduZFUpBnnsTEKQRrpxuBpNKwa7QsnmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErkDFgZj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErkDFgZj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE643C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744445993;
	bh=dmjddYsmdF22OUem/2mGGWkaa48eD6JeyHm2rZtD38A=;
	h=To:Subject:From:Date:From;
	b=ErkDFgZjuNXZuZ3KxQr5xB5pxydqDO3TlU9347hmOdgX76jWL4kQOBiE2rYEukxlZ
	 zh3ihHDRE+IcdChagA8u29y7uQBtaWu8xOUYUH74SxIlH5E47GYXfw3LibaJu41fmX
	 P/yGc+6ejVn5DtOU2+YoDbOndEPi+5j8Wznx3BqOadeTMsCaGOREjV8p3mkZ9OOnvw
	 jX6QzNdjpSNGZA6e5mqs5TBfd+4Z6/I1CXedXDhszVcfuUew6s7OvqoYCVV+5C00ap
	 K/VAPg+INNsBuqLZGUahp2F21+tqKj7ZR1xf593n820w0+wopXf9OXkfek/7LZ8HMn
	 4weSjDTpWtxLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A186C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174444599361.17655.17970141045533320868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b25b7471d4cd2c47d46662bdf1a430c974e2a95e0b030e82aa60b975d0daf07f
Date: Sat, 12 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744445993
