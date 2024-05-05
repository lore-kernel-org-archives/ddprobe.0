Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E43013FD67
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 23:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714953143; cv=none; b=Q/unPMRGnIumpdKEXpDQ1gyJN/rxCoH/5bnsMItkSuUCFs+zY/tD4HLCCW1VtiJa08KaAPb1EDTDqIMay5vriUi+sLYdS9DGWJMbJ+sL6/iQt3sDvrW2jGBqd6tkrZzjdtLYhva+FQ08Bqd80ILXBbfA+tyCWS9VT3PzRsyKRFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714953143; c=relaxed/simple;
	bh=RJ5VVhysug+XYuT33z7BT7Yoy4BasWgw8JbIlsPwTn8=;
	h=To:Subject:From:Message-Id:Date; b=RO8Y2ARcUBgia4ilBYd/YRXRP0OhsDjIVrxUKrTZHEW1EcO6lNroTAK9Hb3VvRsnqOJkk03U4YNSbF+qDoSDWBzc5KdiuzrH/3WGkn6VkZYtyU7W8n48mb8FCcMkAaL/gbES57+PUyHUiI7cWL6Oghk44PK5LKe0nH+MVTKUNZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIRvZtfv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIRvZtfv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA299C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 23:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714953142;
	bh=RJ5VVhysug+XYuT33z7BT7Yoy4BasWgw8JbIlsPwTn8=;
	h=To:Subject:From:Date:From;
	b=bIRvZtfvIGpaCN7mZx2KVyv3PPmGBkfImqgsX/gWAsh+2dcP8iFCRSukAGnFSwr5/
	 zfDRxuPQax9Sr9KdVWQU9olyesFuohaduSn01uXAkwz3HZBkHoNpXrFLSNX5a2suz6
	 QwtxFhTIyAH52qMDTN8kd+xlTXGswi7tMJoxJ0+m8d3O5GxBztWhUXrekGTlmnMKVX
	 t1H8tCBG9tJjfClQdOu76f8s2FwlqhnQwCZFJniUkXNPCXr3W6SCBNtIwgnrldqVU0
	 uEoaDyqPgczTSFnxEUmCdZPS8x537KqXI6R6c/mIXAS6CkqufqGE7Zh7DvOIVADdLW
	 7H2NzOBWVzPtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D19C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 23:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171495314277.12328.12089902502746484865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8008030c4e7dc175a749dedfe81a7db9b249483a5370f9bd601fad2d7001105b
Date: Sun, 05 May 2024 23:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714953142
