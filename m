Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367771E485
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748836794; cv=none; b=AvKR5i4aOoND5DDHDDj3CC/53Kdfvvg2imyUpqdTwjxmMtbTAASB8gi7KeVpYWQpaor78DH/h0rzp7hkAz6IuZtko9fnnX7R6xkEUPQuFsR8YbYIZVdILOfrNIUXB1d0tPNg/YuPvx1KM91soIbYn6dKnP+6qb5B2Lz/QS2i3QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748836794; c=relaxed/simple;
	bh=/F5V0ZiEiiLhUlvy00XNAfjmuzYQl9Hprw7LUExLLIY=;
	h=To:Subject:From:Message-Id:Date; b=em+qwgFp7tbCN0yqmPpKDVEGRjlhI5PqcNwzLNafCALSywGiFFqsF/DEKpkAwi6fkBt3gATd0KFO71RfoMDTQhdF5anQR3qaU/8zc5dTa+6re3JtAOvUugdkCNoTnVdsgZD0pl3VC5NNba9v5avywbKCL6jI/jVQ0acdspoIpts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uEjzVA+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uEjzVA+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F68C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748836793;
	bh=/F5V0ZiEiiLhUlvy00XNAfjmuzYQl9Hprw7LUExLLIY=;
	h=To:Subject:From:Date:From;
	b=uEjzVA+3WsuZvkZgL6Uxv3HPDh8izCeku9CMLpSj2kkUZxn21PY6jndB/ZjWd6bkf
	 jv1MQygzs6UWlFhF9NAj0rTkfERiXqwAZbYdRGH/LSj39sCI7TFpMOhf++qapQq4IT
	 lB06tGwAM6/4lVDw1dh9TvsV8HJ9T3XXAwAbnXhDJqUCOF0c/HMhGW0G0TvyJgS6Sl
	 h2aRxlOPniSQvJM1krStmjoF4iZerkAv1YbQJ5y3zSPtwZcBWg8agJHjxxOjxOV3Hm
	 k/SCsCy+L4/WiVJtpGlcDd2bmh9559ud6ob0H80Ehgg5iiOj5jhk5cW0UTSsaheXos
	 6bjZBMx3hPEZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF20C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174883679358.11481.1030097219018318120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17953278c0a93ab3d59470f40d1923fa976d6eb1871c0f327836cbd75fd4199d
Date: Mon, 02 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748836793
