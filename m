Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8E227713
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751931594; cv=none; b=ulDU/VRhv+Y2QPuNQKkjhkCbnIVQglUqWT0xCD1rsN2UYMDpjTGaW3GpebN0TDalm09ZDgtAhRGkkEIr0L6jN+VBuvNVEGmXcvQGm3jNngExGNmk0RtfmonJm/4PuXLodqUavAONEq6MPMCKvlhypX3SIQkrrrqn/VuZskohOyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751931594; c=relaxed/simple;
	bh=NovKCBT97P210S+laYY9GiYcdgFpcxPkEVkpzx4S1us=;
	h=To:Subject:From:Message-Id:Date; b=PegOh6HXAYU5C0CVQ3VhWvetioE0HK8jWjpe9se0inK+AjE/d3qEwrrL7NAQ368EWNqfsMOcxf62AUbcEFwPF0fX0NapWmlNNYnxfH+QXbg5B4YMCtKpr6j9um13rh54chwS506/Ep3pdPqsM40u9M/BscI/vZsBZsGmYGEsgX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcTtBnI2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcTtBnI2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1715C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751931593;
	bh=NovKCBT97P210S+laYY9GiYcdgFpcxPkEVkpzx4S1us=;
	h=To:Subject:From:Date:From;
	b=FcTtBnI2ZRPFYpn2TYs2Av4uPLSKxnNg4uyQclq7fI7WNMdt3wuMmwp1+VGPq8PDw
	 NNzMUz+aAB3kZckreBlTHmbfyCCp9LJuJeUPHfz4v4oJ7GWnpUOK2haVg8J57wqIkL
	 7soKYIjJDcJRGZ2MEPRQVoWAd3FA94moDz0XatLwME4qM5WWjp3gyhGvMvAT/iFiZr
	 Dmlt6x/8rYR/YU8QPiH3zS+xMpDIUHep1UV5985I9XOMQiLmFElvZRMfwD1rYuEV5S
	 s/1J3MsD9BuqPtx7Q674k8HV5XMV5XlwjaT6G0TpgTT/P0BpZbIz00CD3B0UivlOfY
	 3JtF8pOyMjz8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9281AC83030
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175193159357.15157.17519170855387183858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1ae8c2bd3dcae06889fc534eb334b4542987875ff6cf22ec55c533ac450d5d2
Date: Mon, 07 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751931593
