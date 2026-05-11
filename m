Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E8743DA48
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 16:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778517634; cv=none; b=WSlHybtdKaYmQVGML5JquH1YgYWdtVTGVSSliT3HrteBgktPBMGU3K6twO5Y6NijUnEnD+U21yalkpr5yKL4trKMVC03xoCqtKN+87LUWlWSOHf/YNvoiEGiZER9r2ScbuUmVd2LqrhpC9wfzuDe7akDePKpBiZA6+HN7fY1XfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778517634; c=relaxed/simple;
	bh=Grjsa0iGcft/tBH91Krk5lyrIniNnaPEIjQBELqjh0Q=;
	h=To:Subject:From:Message-Id:Date; b=Wrc+GZdIs+HCFXg2OGlDfjYz8p4qKIS28lpZhxt95g57anni52K6DAiRa/yox+ub1bFi5XkA4b+HL++1MqnQdNCjcu8rHs0mS/18BDnbH4YGOWy4OyId2WxfSNZyXibQ7ar7Dg+H6qJIWVNaWYrwszd8NPZM8IF6vxSdKGa7C/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C++KWacm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C++KWacm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B94AEC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778517633;
	bh=Grjsa0iGcft/tBH91Krk5lyrIniNnaPEIjQBELqjh0Q=;
	h=To:Subject:From:Date:From;
	b=C++KWacmCGM0rlpQXgWaiih7/8Z8rx57mIfHALATB0VH4y+a8JpH2QtCDRxhcLAW8
	 VZyf7X1SQ6iD5K/NWaAS/inEMwJ2IGzvxMrtNG6YhPHHlSXGWgO+aAKTHNHm3Ow74Y
	 EHIh4Eyj6ZiVZFd61KWo15BbYNTX3z831MR9PxB8LDzhXreZNriMpdqpOdmQWWBcHf
	 Eh5GnLDs60Ghti1sLTkG2bcWriPy3RKWd/+Sox2PiWNXStFQ8PgIMUTEwNLhD9LW3Y
	 k4iNUO1yi0wvJEyEhxFdlnUjV9IGZVx30aiKpt09QBHWxSoMASMqaEKUcRvc1j9Mtb
	 myDacbecHAtIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3DFCD4840
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177851763369.12299.7337392110142067801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c79d71a4acec4de0a3998cef46b6132858d0fe48da0ebacc1cd06d9d8ccdb05
Date: Mon, 11 May 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778517633
