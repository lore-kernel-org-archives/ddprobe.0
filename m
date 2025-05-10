Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1F8219E4
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746904194; cv=none; b=FuiyJODYn6OdQxQX/2wBqPV3MD6sU4Zm0dnTuOTilqn2P37610rDFr93K4aclCsLT+AyiULlHFJF4pNCyXetk3eUcltZWNGBjjLjdwR8Z5oLIJY+MCDGHJ3sSBGKQ0kRpNfm/Hdmc7aBAlZopQchMYmWKYOMKKYX4+qTRbzqieg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746904194; c=relaxed/simple;
	bh=YSlriV938OnUu8qfsKlP+vgs6szjk6JkSqIErYZ2LOM=;
	h=To:Subject:From:Message-Id:Date; b=IRDok2gZGTCddpTSmtCBeiNXZ66uINf2YPDukJuUvj1JW5ygKX57MB1/uppTKwJD5pLaq7vNo9+LhCIfFXgwopq/en9xnStzBn9BjOQ50XUH5f9qDrp4siIc97gRIT1ngoKr1kZ5z5TJy2hen9uQYiZC+2A6AVybE1c2CD3YC+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AyC6A/30; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AyC6A/30"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7E6C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746904193;
	bh=YSlriV938OnUu8qfsKlP+vgs6szjk6JkSqIErYZ2LOM=;
	h=To:Subject:From:Date:From;
	b=AyC6A/30wSA4nr3VZidGRnKpHNMVUmRkhIAjaAba9BlGH9cJ+T5kizxIgyWccEdS/
	 oxQmg+lZqJn3trRedAFzxyYIxH81comCL5M/PxCBRmTieJmnHyYWT2TPeTIolNxxAX
	 rtIcuJgtCarASLVnRNbL4BPcdw4YFXXhXszNrsq+X51SkgTiJRZDFF9zlp1ksQjr+I
	 KLt+NWIkGHq6fRXRXh3011AoKiR08dNPVaMag6XzqZ1wESBDHvY2v9PHOrAZTSdCa+
	 r8D82620Wz7ZljTt9PqrWLoScHKQ4MsCb8cSs7xPMuXt0e6E5WaNQKFkfnNOuPTPMO
	 06RH8yKvCqXpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A48CC3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174690419361.26058.6163012998656200786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ca1b2687c370097f9264202725ef8c9914e40b56e5c357a147170b708db17f0
Date: Sat, 10 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746904193
