Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213A3399CED
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786350034; cv=none; b=u4omi4ZTB5VW/FvBbzca2X+1Ze0duSXhRKSh+Z5hGJ+7pck+sPpnYoHXEhpbT3Cz7ULn5e8lSOJvW0X2Hyc68rGelt+wUB2GXIVwGZfeC3dm7o6LemGbG7CAg3BS7AMD5cg1QwRFJV+StgDSYZSmF87L+VRRAaydXcNxib6ktkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786350034; c=relaxed/simple;
	bh=MTUvebCvJUySkHVJyfC4TbkulDUTHuLJtoQMHyQdupk=;
	h=To:Subject:From:Message-Id:Date; b=NJgwcISfOi7waMQFsLk4HW7G96f/p0bIOEVglJO069NHosyugnYiIhexXU0cLalVq7/f4i9M7X6A9TcWZsrjVttKlLSvr8fxVpz8pFF+CvIbHC0iR8GvtftDH8Fhh51Qkn01lhpWymNU6eRIum/OGP6pNIoJPUKCzyme8eaNTaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isW/cAJc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isW/cAJc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34D5C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786350033;
	bh=MTUvebCvJUySkHVJyfC4TbkulDUTHuLJtoQMHyQdupk=;
	h=To:Subject:From:Date:From;
	b=isW/cAJcYXgo2i/Rb9ZAP+v6xKNFfvhZnDhKurWcUNLJ6lGBfaPtFr1jQOJXZcKVF
	 SmyXq0vh3wTyv27kv9vJQdNyn8Jy66k6aTjLsgNTTU4GHfg6Xxzv9BBvg7AXwL+ArJ
	 VX1kmfS7aiRt17p5W1HKCPiJXzrK89RsX8AHxvzabueqih6BaGZH8g/j7/sHznjBr/
	 GLoIHxq+ApuQoaOJ77MvQbBAcYFNQgf/33oKYaQbWmLN82qaBPlpHywkxoOXATe3+Y
	 1tvWun0UAqVPlYmAxR35Uq5PzGysjK17tSUmL+8sQqPkuxVWDSK9n+223y5NIPTcXA
	 +menK+5IMJjig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B271DC5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178635003371.19174.7548049997371895395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc03af8aadea632e7183fd40030dc57162d9e1624169349ca8b15d7a8e476696
Date: Mon, 10 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786350033
