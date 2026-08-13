Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DDD3B5318
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786615834; cv=none; b=F6NpXzj7RdRph08H0Q9rZRq5ICCxJVUiKKVaUkheNp+HGD4SoFJ8oRtYePTFiX8cjFeVD7DNHXAYzfR8SdetdJit65ZHWOPRDAa9S/LuEfE+TABQhKTpSsR3B+xBPbd4kg6ObqPhCAWI4viDgNkHdqUH8yhMrtD1KGFVLeC4ulc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786615834; c=relaxed/simple;
	bh=Wfju5/Yzatves7IBDTzYpCtUgwT5fbSkFGTVYPXnUQM=;
	h=To:Subject:From:Message-Id:Date; b=tiJDDy3AO9U5kO++dLR+r22/qGJC6bL2M3A0betD8QhUquj34N70Y7MqVkqHkiQQWFoDHf9Dr+UnsTLPb4eaP/6vbl+xMd5dRVvg0f5r81B1Juobk0fNbzjnrah7vtbPRx3aRxEzD/j1AqZztDiT3nqj9pOdiYeyUMWZrVDUtzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VLq++G73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VLq++G73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4EEC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786615833;
	bh=Wfju5/Yzatves7IBDTzYpCtUgwT5fbSkFGTVYPXnUQM=;
	h=To:Subject:From:Date:From;
	b=VLq++G73PUP8Il0HF6y7IfetKB4saHzAdGaeiNd+1T/X95L+6rhwxvVfqEoTDCxsS
	 5BQqWRQ9JlGORTCAQsgfJij0VXD3UxZvAWRFiiUqycU/GI2TkMcYwqUdgthhhP7D9T
	 3+z4ixS0oH1Rs79s4ZY5JB3y5H69GBkcpZkGfpO7P39W+C72H9udN+qZsHvBa4ma1U
	 Km4ymCvpJ+Un1s+HUrXqO3xMqEe84EymqLDptLEQC23pYJOR3ieiWSy6G7RgJcNl2l
	 DPvoCusc0xx9jKk5RsyzoMEkD32Sw2ORU2C0ug1rycf17tY1lGk9i0WwWDnFGgUVm/
	 rmdatkgDdT2aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAEDC5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178661583369.12989.11260952589536441394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a7b9ab45ab83f70e81336f63025209654bc30144b7d2496c9d5eec3a1c31b28
Date: Thu, 13 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786615833
