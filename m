Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27022212578
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758552594; cv=none; b=Zx18eXk9g2vZkMuflwWvyQIm269i2VoopAv4n/m4xUBR3jpshmUkp1W0VzZwRctVAl2P+9QcgQuB2b+7xqG/UJW2X+twMksogbi3338tpEjM0WGGKMM+1Re7A3LK6ZIJEhCpcGYFyAk8+EZID7nndESegPqQYgobZBcmPEx2U7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758552594; c=relaxed/simple;
	bh=kUJ735mcxHxBzxZpP1+s2bzGyUeZwRiTFw6lOMVr6cM=;
	h=To:Subject:From:Message-Id:Date; b=BD+anHFhh98TbLLKybuVg9P6Xa5aPdPv3VF4x48HTrnM4jhqTIiG7QLJgYjtt/ZK6rvJY5A4t7hJPjdYaRmSLq6aONAkm7OJh/8RjWSJ+JInNCtQXHBKqJKR8hTQIrInco/okAJJt+YzUsutF/5R88ILGt0kRIe+4AONI0TLMz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJEbRsqD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJEbRsqD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A519DC113D0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758552593;
	bh=kUJ735mcxHxBzxZpP1+s2bzGyUeZwRiTFw6lOMVr6cM=;
	h=To:Subject:From:Date:From;
	b=NJEbRsqDQDSqD0x907qVIPtZfR4zmwwqGpLU1wUXpF+zHFLb5q+MVvLAOU+fGwGpN
	 xKWXXk9H3ExVy5kQLmJNfJTyGy1xGD8yNS674FbgHhaVWBnfvdv0hk2Hrzhn7beFlf
	 1lArNp7bnWdrWbR7wNtXzEQceJzMjrfZf271IzxErPcCmD72DivVsUAuG1GEcM1tUc
	 8g+8opzitepyjuJgntwNu4dlftGjT/KUn8ZOJi/SEq/2+5fTjy8t6MUAB38ZAUqb+P
	 g5H9P17NsggRklEyjQxKmwNf55YG/+BfsMbjWCPwM60JJmkj9/6GXThZ1hcifA9FnV
	 Fcq0Rybefh/RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EEACAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175855259359.32679.18110492265145216259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6283302a24930af990bd4b322f2d1fa57ea191196e0c610b997472b6b3ad4ed9
Date: Mon, 22 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758552593
