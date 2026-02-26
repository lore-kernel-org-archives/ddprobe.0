Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E62C2395279
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772096094; cv=none; b=RVvWm8No1vpyqpy2y4WWH2NzaCoMRynmlPHTnjWw2aB+/ZyiDhdYqBeCrnRoBcAz9dzko8941n6lV5kN/6Q2Txurs6+eOeei1TqMJE8+4sV82t8Gy9jgtyq/qKRXi5d0jTCBnrZ6uCaldbB3N7PJKq4AYM84ebaQxdsKDktq3rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772096094; c=relaxed/simple;
	bh=HsW3iS2c2T5ZgzpUCMENOBp5RVBPNSKluOMCmcVaE8I=;
	h=To:Subject:From:Message-Id:Date; b=rWH8cSeXo3eSYflQ3zXwfImmwdAA0Vc6IgD3srbvHh1J8rWcZ1lC5nWH0JUheOQPcabj44LVaUXsvXypF/vSV+cIz7gs/XHHU3rp6xnHHXc2SjsOCi49ZZqRe2aypu2KhBF1K8si9cURV0jAtF9Tg3laPwxjTEVjOTA2TReG35U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/iyqKbh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/iyqKbh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F593C19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772096093;
	bh=HsW3iS2c2T5ZgzpUCMENOBp5RVBPNSKluOMCmcVaE8I=;
	h=To:Subject:From:Date:From;
	b=d/iyqKbhFpKeilIMB/RE9qzASbg4vbwWiyN3iDBn6s0e8004tSkKJO3o/5+6i88k2
	 vscymvGv7PWxsz8ULFBZhHnMCodJ3p4+P5FSXwlRbBW5pGkX+7bm3zeNilYZYKKZBn
	 mRmqOtCuFRyy/XyucTWglLPjWN0ejBhoiOqESokkdnxrej8aOTiaCZmFWvl4dqfk/l
	 0aX8qA1G5n6RBj0WtHgV7Z4/ZYqRJQ9j4Hy1fREfFGmONYiNyRnCmPl3RaCE5L4SXb
	 tesPXULKK2Sw+GMDqWe8B0Z1keaoRpD5TkD0XOMaZevU//K4tAbRGQao2Nicz29TX0
	 anqXxtgLE6+rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969CBFC5913
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177209609360.5410.7568267913845534563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2396d6b200bf51aa7a3eef350e2fe7ef3f55e0b85499266ad8f0d250a985c02
Date: Thu, 26 Feb 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772096093
