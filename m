Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3631A22097
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 10:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718449103; cv=none; b=qlbdRyrEK7Oft3eUkPo4Mzvr/9J8sFuPu57zNg9KLU8qSROR8S9q/kqDx023DqHikVVjEit58BR1lrYuel+jdgG6g3tAvvyHHMnjcQ8qG6Q5nMt6wTkaf6CVs2lfmk61CQf4GetZZn3IUR2M27eI3csG2C1G4rsvVRc9gY2gnos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718449103; c=relaxed/simple;
	bh=w6o3UcQAG/MRIOqsqGX3ioqcyB5t5dtLRBGvgzW364M=;
	h=To:Subject:From:Message-Id:Date; b=Cyw9cjKS8YrHfwluKpIyGj3YfyuqpXcCbfDRyJPct5bswnYLNqoy/ZgJk1kShGoLNJ5F6FETtL16ER8YwQLuwfJ2h5XkF8DmGrlWtSLf2E/j0Du/iItCMKZJBVtDpuINaQDakg0pcuN30T5js9Q5qy6wa+kt7ux7Eazvb6BhicI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DB+/FNA3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DB+/FNA3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E512DC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 10:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718449102;
	bh=w6o3UcQAG/MRIOqsqGX3ioqcyB5t5dtLRBGvgzW364M=;
	h=To:Subject:From:Date:From;
	b=DB+/FNA3jTWN4RVKvUqw4zxSVNgRGz9Iz2e+x6BwcHTkhWeRKACvyJNosygfdu6F8
	 cGQfMHywcZ/MUA3SQVz0P5aMjviByiDn6+aWtByYUTDC4DslsZ+TzlrI94n2bsTPNS
	 KVBgecYHLryOjGiAW6jJtXIKhdwOOkDTFGjXIkKIA4mguMUXDdmiFkRSXqmpK51VN8
	 ROMxl7UP06GS4xJhvQd8Rp2guPF+INWYjvCs9yp/060QRObSaydRY+74TP20xhOXw3
	 jzmtVygv8IXii2UNRMujSg3MfUhQBfGsirewUCVVf93ss/zOn1AXHbzjf8AZzL3+ur
	 RJ+BlcFSaXbWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4D24C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 10:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171844910283.14772.11670358626485316701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fb8a8796848be2494ef3618f0cc04f599b9c811a5f8faae2fb18001d86e8836
Date: Sat, 15 Jun 2024 10:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718449102
