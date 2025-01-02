Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C0F4C83
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735788354; cv=none; b=Xw+ThbgLxyzSBH+MLo0dTOUxLS1jk5fwHaqax23MyaCKu4yoXXNYXDMkWesWP1tyNVBJmqe6Vz/a47WRke8nYe2aVOWzXFw9bHjx673J8enVAYhRfj9PkzfjMaeEDrE6UFm+a8D8ydN+AIcLK/WhONYpAi+e3qZjWjvtMYjhbUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735788354; c=relaxed/simple;
	bh=tDrJ5Qezs6JqzwgVO8Dk1cOQXOsgVA/yDbzLfclkhO0=;
	h=To:Subject:From:Message-Id:Date; b=Kzs9JVTp1q1swHohoJrX7D2HDlIQbNsKObRDC2mSjr/B9u4LqKXBstP60xuC4R80S6wnxYAaBS3H/6SnhXZ8ThTq24/vNfeZ6tHqEHHwW+9eS9ttjnyeaHU7ZvOjfzz1wQMecdQ1JMLNXksEtv3mIxsD+hMR0uR8xz06hCd1QNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=geC9PV4t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="geC9PV4t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91F0C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735788353;
	bh=tDrJ5Qezs6JqzwgVO8Dk1cOQXOsgVA/yDbzLfclkhO0=;
	h=To:Subject:From:Date:From;
	b=geC9PV4tsIFucHxa0CHcRoPeJ6jGNdyd4p9+G4AHKJ3R4LWlUKun/oIZhYqoSmLQ2
	 /kX79L2I71g4Rt/DKxmZCcfXvL+SJreo8uU2MD8cL0W1kBQo/st5mjecoBj9KJ+u9B
	 opiB3nLHSjcyniwvMQL/heNlrto5ITgpXVpratrgAMeYVUORwOUk+vImdhTPTRJ48L
	 YmmsXyqK/cVMaOm9gzDXTZUVdZGrCe2vgqQdngHaHhiqbVokCyWTWOSgCi+GeD1YkR
	 Lu0iL+HuHgMU0UHJTfTcUA/otELywuVUFt41SBV71avhr/0MbctcAhyJYlwXCWja/W
	 Eplfn2cxNs0ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E28E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173578835358.20209.15080474837804446727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b3dcb158135276761683a641a1dd17c97c3b3db43d37193e3524ac431e08249
Date: Thu, 02 Jan 2025 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735788353
