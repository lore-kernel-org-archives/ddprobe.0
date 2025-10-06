Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3819F265CCD
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759748994; cv=none; b=IClaZcrjzijDylIJJHS2ikBpOGiAqLtI82nhidHdiGrHCKXiIqEpz/u+QMVEFpEfXfw+TaqQ9U8z5LQHu86soLJe5D7KcrtlosM67vMzwnLhD8XG9Cai1iQLhS8qYykAV1g2DG7Qa6xoYi3r1srNvef+WUhCrFyYWSvR8zimx6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759748994; c=relaxed/simple;
	bh=HLOGVkTxXoK+v0RUGvSCsvWDjRQOhHIJbF3JtkZJlHM=;
	h=To:Subject:From:Message-Id:Date; b=eSwiDozeOzogeUIO3oHbqlWOckhU7r5XAPyMMKABQN6mfbJv5F5JjWFaal62HJ2ACHzzdl8CkRHiX6Wo4xn7oKnlbgM7M1/IimvRllq/MuKBGCo4L9rbhjKtrI7lsdFfpisFhWt1/Ch+qYGn1L5hPdzw4FcF0iMwhRouDCKQ7qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dO+OGdFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dO+OGdFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A219BC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759748993;
	bh=HLOGVkTxXoK+v0RUGvSCsvWDjRQOhHIJbF3JtkZJlHM=;
	h=To:Subject:From:Date:From;
	b=dO+OGdFSz/WZOs7BOAqTxVeeW37Hvvbh+90XPZrZteL5IGLlqpDLwDfcS32gxt/qu
	 2/JI1TQ4QGKWJITcjSBXsU50o1X+GwvDv2+HL44t0kztECtN+mZWUSJIxf9PiYPUAZ
	 xf3GbDuYhLRUAwGLP8IUNFpRNYVCVElnUdq21azMLzEP8Eo4fMpb/LTtMxO5uRc37S
	 G8iJNLORFVrGRsyn7KEI4IkT72glLePyO6U7eR+28ZxinCZBZwmRMlzCw1s71Fwuyy
	 OaBPZv7tWb5BY+LbNy+HvMtL0yLtB5hdgctVOZm2T39v5B92KSdAtmsIXPt2V6GKup
	 cU9NXOoDEVYJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93574CAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175974899359.31397.14051574477879201346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 097f9de3a2e019abde0829dcfa24b05cf4ed5381351b6a3858b985f9830de632
Date: Mon, 06 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759748993
