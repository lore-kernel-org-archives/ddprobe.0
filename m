Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D602D7DD7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788998434; cv=none; b=eXrkm7mpkymOLNcHQf539gTfXP+wppUvfx7VKFFZmxOiz2WpwqpXVDLX6xNno85ShiyS3bhKKVMjceV+kCM9nXkLFfTejzoPnwPVSLfUEoYSTXpPYcqrID/PGc/Ih7ctMqE3ZA8t3kZaiek4bM6GR6LN4S9DZ3iz8ZZbYuiMGE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788998434; c=relaxed/simple;
	bh=IApf52AVmWJ6nDvXp9zX+HdYaNVDxQHzweQa/4JcsPY=;
	h=To:Subject:From:Message-Id:Date; b=OOgSYZal2kRGca/ChuOTOLLz7llFZ815VwvWdPsx7RoueYPRZVdx9OxSF/qFSgM6h8W+RVw6ho9QzYkCerLqtMndIXrRS0jo5HAkDXdVLy1QXoWiA9E/3IDqM5Q0zP+dx+af9q00ke6CzD5HgVSNN8QYy6MO3/FhIA+v+sWmjoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEbbCzvq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEbbCzvq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDEDFC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788998434;
	bh=IApf52AVmWJ6nDvXp9zX+HdYaNVDxQHzweQa/4JcsPY=;
	h=To:Subject:From:Date:From;
	b=kEbbCzvqoq7mbOOZjf5dh17RkGQJ8VdfLn+E0MaI1wHUsIBGDGcJPegjMAE2yrlTY
	 fJk9MpC20jd38WYAJaEedqcTrSD7hik2nVaYHtXWEBrOkVA6sJ0DzxUx7qdMe2aY6G
	 7pxR63MxzE1FmqJwLlgQwjJBMSyq/t411mDTV5m+AxqCJIwHT8lRdOL1eTBhrJmtiA
	 KHyEY9VNpnwrxXCyPES9YBWev44UGzZa0/Agld5ORAef/N521ZY44KjCHmxXgBHyf6
	 AMtCgzscukjYh9zEiC6iGevJuS8Aat6JyyugNfwOB6jaiWD4vuhLQEYTKS28iPf1lg
	 tTEjVGfVBWoRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5CEBC79FB7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178899843371.21834.9654652401592103078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fddbf82221c2eb208b867cdc6a6d5ae4182805ed4206bf275ee14029fdca72db
Date: Thu, 10 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788998433
