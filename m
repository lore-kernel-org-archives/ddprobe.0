Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20487235C12
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736763954; cv=none; b=QfhMWYDMirzq8Db909/J/JgeXFD8/PjGi+hZSRiD8CmMhQ8hmBKvUsUJZJdH/0uzL088xPbj81CGY3U2p7mh1Ymf2uO/ddfzjGc0dKnajjLErt1IeMoVL7DyrVtx3+WaipehU+dReuffsBprseq+Ev04NWtvApDxw4vKt8bH/Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736763954; c=relaxed/simple;
	bh=kEEZM6AVwMQqb1Q2Hhy8cTmgu4ntxGemzJ4uACVWAn0=;
	h=To:Subject:From:Message-Id:Date; b=ONW4iS6O9IaAFcBueO6I8VJjIEU+K8Vund/IJXZyAQQC9rGd5BmMpSiNfqlmEDF6CM18MfHmKo/kNQ9s5N7fmQpKCiTGJ8r+6TSEXcryKuN5Ri8rkBqIBJ9UU2A3eH77/xXdTIAIY1Ta3ToLxLLsvVPXVn5HMQm9DXs7GI85RtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDIo956E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDIo956E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3694C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736763953;
	bh=kEEZM6AVwMQqb1Q2Hhy8cTmgu4ntxGemzJ4uACVWAn0=;
	h=To:Subject:From:Date:From;
	b=sDIo956EmIL6+dEz0D68dYpuOq4bhUiRdNJtYxUWmLWaWrb5GAeNOZj73Rh9faknp
	 Ew643nBueO5d49SXFwoneeEOOTN1FDAXc6nL6H7erCcU7gm4Y6qSHGPMklwJe2f6Hv
	 8eC6guCDOC7yjCgng4zZifZlHFeTO7eUkxGXTSwPpYTgA0YoOXjPKR47dnrBspeElu
	 3+oYKfTfoN4krICa24Ih0Lfpt72YId67EXmKCUGg/tzP+FTYiW8zVLzl05WX3PJ9kI
	 royTR64GCxQFLdcHHj6GWBPfRNB69LvhaBHfX5GBJVGEuN54CtUsrzym2e0UhwRaaV
	 0Y6U4nONIHjkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9205EE7719E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173676395358.4830.14046680186064776525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6d1a81b454a87e520aa9e89d078632c81a5019122d6056cff0a2f3d1891efc0
Date: Mon, 13 Jan 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736763953
