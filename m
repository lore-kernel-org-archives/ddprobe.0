Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D86142A94
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745135394; cv=none; b=HvnY9c3KzK2RzM3fjp20Xgf6Wc3RC2I2Jj0FwdRQmk2O3NhkacmKfKbKEcs/GnrIm8zaOLQbe8mq+BaJpAQxIAlf2YHoLdtX5HDcXZqSu41wcPMD4qksSFxX5aOVECR/g6KvNF5V2vwILi2BLoX1cnc7AcwCQIRXmS3fGOkeA+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745135394; c=relaxed/simple;
	bh=YduUHHoIMgQlGNS9wCDFjcDlt5oEja7ZbEYxmPBn2Zk=;
	h=To:Subject:From:Message-Id:Date; b=XfYogQ9+kTO2zdB01/2JPGRAOC+fWfVNmOLTjRKho9CLnwa8o/RPxCp7YDRCO0eqZZBBre4yDoFC0h7h9Hxu2lMSyHhvslyO1uf1K5xhja+i0NQq+zU2SM/TdpcGkw8eB/hRPqK2tEW4vPmtp8RGW6N3wky8nolQ3TGusc/jJB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAdd2lS8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAdd2lS8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC575C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745135393;
	bh=YduUHHoIMgQlGNS9wCDFjcDlt5oEja7ZbEYxmPBn2Zk=;
	h=To:Subject:From:Date:From;
	b=sAdd2lS8zvrNPwdhATnCMk0TkSPMMH4/VuSbLbNxbIwncddIuf9CsHU9brL/66LBw
	 PAAseC/biorWigTf53IYSmsxhYzcTN+d8CQKjOY92gRQcZhRELptq+cVjgxg2ikVpB
	 BQgO1hn2ZyILhG8Ic875VHtqkGAHTT8BM8Pa7LpwGHrS35m8cr+JqbMjoCPexkgd2u
	 zQan9ztUWOHm2lsAC24CgQDwVAs6kT0eAujernaw08W8KvfY0wnHX1ywP3t6msNDL1
	 C2QLW8de1UgbMO6RJOAcxVyDuU/JZcYJjkZKdOdpAJ/BkzO6JnVuSn/EwLLV+Gt9DV
	 5e8VHf1W3tObQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A70C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174513539358.18972.2752958588765452418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 304c613f8aae5a951d6d479190c87d0771a7f9c5d7ae5ecfaedb43504b418f73
Date: Sun, 20 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745135393
