Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF3A225397
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 16:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775146534; cv=none; b=O2W6P1425zwbx3pYGmRNwlaGNQYafb9CQ3I7TsoA9knUl1Oc+AsI4JZMNHUO6PDaDdbnKfAOEWBn3V2RfELdYIa4MQuO3q+mUf+Toushw8wBQ/kvxJLcLSGYN3hSSUH48T6zNngBRYMBvoULXVKO/bQQ4Dzb/JRot9jzKklAxsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775146534; c=relaxed/simple;
	bh=c9gJhuCLqsn0D678bNIV1NimsGLKfe0UTr51+OQ/IP8=;
	h=To:Subject:From:Message-Id:Date; b=Dey8Yq1YBNGy42V28C0zQlMmODovRJLyG90zPKyotcAu1KjkzgP68mz62//hMVsyt/v0bDyZftrdaAvjmP3Z2Vr9M4lzCHRJVPDPTAC+ucXHuJxeNvBBZ+Ji8raGa0rprQ58LzlaTq2xyUwy9AomtfayOV0ClBC9JjCwqtXJhcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSNRJxr+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSNRJxr+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE0EBC116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 16:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775146533;
	bh=c9gJhuCLqsn0D678bNIV1NimsGLKfe0UTr51+OQ/IP8=;
	h=To:Subject:From:Date:From;
	b=VSNRJxr+F/44j6A08PdEpGui4o8aw6gLUAL4hSw90vfMEPivAm2rDD9y3K3iYtFu7
	 Z/z+VNN5aLXX+VVUj+W4mjFGqoID1/J4xWu/fhg04soUPFRsjkJx6TATAk/Li1Loiw
	 979K0Afe71bE8larbvY3xYjddkCBSKI6+5WPGfvVctjwYbC98jvIkh6+k5geOeZnPy
	 AO6wd4MClBZACS/zWkhCKUpuEo4lr1LY6Ev4bplTk76LJMiFNINswLB6q7vMbos7or
	 rJ61yqZ3zPzPPanakLZxJb+/IQOxBDtFmUtlJIA9KUKrXQMFGQ1ILQ4D8nCEYRrT94
	 XdLQi/CDtHjIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB71D6AAE6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 16:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177514653368.15515.15496533989784410796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d4b1785a24777f5b414995a15af15a607c0140c9cc78b90e67386bbefe0c6f
Date: Thu, 02 Apr 2026 16:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775146533
