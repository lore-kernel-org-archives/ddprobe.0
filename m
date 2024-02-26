Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19B81DA53
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708945097; cv=none; b=I8mOK5AORYGPcj97wfnf+zzeiJoRqpvqZPH0r5XB9HN9edT7ZhGpVuCe85TFl/KbCR80LNtUb1q2JGs4JbMo3k4WSVpZdOKRdfUBa9HMNxnT2Q97YgPQXnx0ClYDq+Q/pajhJEZq7XF6FJp8A9ICKW/qXSSOob0AGgGKejeCb6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708945097; c=relaxed/simple;
	bh=NiVSAM00LFiDB5eTBA7gDGs+51pqiEPbRZgp6HOtmTI=;
	h=To:Subject:From:Message-Id:Date; b=QBGCoyP8zX/gsIdr4Z7/K5Com5y5GGjK9huf4Fn+2FkZwLXm9zX7oIz17A8Aaa6vggGoduYGCb4jjkNWNwzSeWLAXqf0iml0MvUUyuNoBJAOyoXfQh614m3PKH0eBfMEp4gMtl8w9J/7eReLuw+F7F8YBPSgh3lWpq8oZ8NdD8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHhpFOSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHhpFOSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77E13C433A6
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708945096;
	bh=NiVSAM00LFiDB5eTBA7gDGs+51pqiEPbRZgp6HOtmTI=;
	h=To:Subject:From:Date:From;
	b=oHhpFOSH4IPAmakEMP+ITVYZYos0llDsztdg9hSllqvsYlJTml3QBdIVNS92mqfBJ
	 YwjX/+TBpgSicom79dLzuYqF6iOTd/mG9tualcVZUAk+KD4hEQOJpfVEE6n0izwD93
	 mrExKwwDDP2qPL1GWDOP1HivYVuA6OqjdqN8cDqya9f70HXzGLf/oyuelujuCZ8IJs
	 GBjlR9XxPVcZ+bgZyUXqHU8MfE6e9LH8loXm7YBGJgSDIUy++rMqtkGKMhx4VCuk5t
	 RH1l2gLPQSJo1+B4v6WrCVRqgkSBFSZTG8cqZusKSjtnQ0su48xUYfPqOuj8JY+YaB
	 r/xf01U2SpkPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F417C54E49
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170894509638.9609.2131301660200138189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a1fc2a593e9871580de3f066ecb4cec9da37357f3d07e37857cb20264977b53
Date: Mon, 26 Feb 2024 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708945096
