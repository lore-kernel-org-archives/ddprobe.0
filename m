Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7588E2CA8
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 04:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717044863; cv=none; b=qfszHRH/+W+vvjw/PKSRSsmzPkoZ6JN03kr8WaRQCO3AW0QAXb4Qj5fNvse0NryBqY4DwEean+tEYk5488U+OqmuxFkWZ9i5hzoPUmAmrW8e77sOAMQrE1F6oLA1ALS7VNMRqSZQw1b42zg03k7SvBHdN3qmUeg035XRcdfi5CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717044863; c=relaxed/simple;
	bh=yMHs4//g7yoDmzaNCOZP1da+YVwNrK5XCexzA+G0rWM=;
	h=To:Subject:From:Message-Id:Date; b=cvjSPZGtNfe1/nTqBDrKcPfFUzuk6rLv3t9r888nZ37lyb8DadRvl+EaQO9yKigGKJLG31OKf6kX+c8CjLetVM+9QW+MpIZytmGHWuhZRxgXMCGxnA50jMBGtynVBNR1Ju+muv7/cQzXkN0X2sZLeV9ZuXxkK75Xu950mGmrHMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARYgBgui; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARYgBgui"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1CF1C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 04:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717044863;
	bh=yMHs4//g7yoDmzaNCOZP1da+YVwNrK5XCexzA+G0rWM=;
	h=To:Subject:From:Date:From;
	b=ARYgBguity61IIWlbZ6MLSikjBIvOuojBY189hliXh3r4GXAVGniLxv92rwzv2Hxl
	 j9pyQsfWdogt1JvOi5m+B08FluEype2f2pjNlbc9/VdDayOhrjeXwwanJu2pxWS+3m
	 zHs0H3i9iXFyvP8ZKH/c0arBawCNtm9VGf230cJOAKJ95uCGTIGbb9d3lfgHgoWbR3
	 mK1e7WcQEoRPyMDqiLsK1xfJ0vJfMMFpH0AXBAQu49boGuik2kelDzOyI8/NUqbz0c
	 6wrg/eEWVqCryKAqtbJcfaa9DBUR6GXscJVRObFAl6j8SV1uk8PPYAFZRMnc3b0aDL
	 W50nPcYkVOV5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5C6EC25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 04:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171704486283.5150.1340150412233918872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e036550f042a3e42d6ab6d00c00967e43079b06a2c6cd995522f4734ab43396a
Date: Thu, 30 May 2024 04:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717044862
