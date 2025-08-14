Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C542749D9
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755159594; cv=none; b=qu6M32IH1ososnMewJCW2lYmHNrbzhCtZFMGrH+YwIxCMsP2CPJ1cxVCJHxOOhvFTl9ri3Cv4IfZqiCndu5Za7SrGjhTw7r73CCa8bsgKsKutyB4gwYmVU8DX3gMECIef8QksCI2ACRYvo8ZFcEqZD0lwI92FkVo0hkkAlcFY/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755159594; c=relaxed/simple;
	bh=d1w1n5HVBhwL0chcmkgWN0IB5s6ikUOjk+ETHyp0aaQ=;
	h=To:Subject:From:Message-Id:Date; b=aLNgY1PD0wKeY7IjU38MR8ik9h7yoNirAl+ABbMNxujE4UgXK+57eBD1p7MMIJsGu8tRuNaiD6lQANKfWR/E3HVzfkxc/rY87u0OuqQC0tbxs/8N6MZ5eoh6sWYGvqykiFLgu8jBLdO2W0IXSZKQCX8dPesmY/gksWRJy6jN1RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWElM/ec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWElM/ec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5197C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755159593;
	bh=d1w1n5HVBhwL0chcmkgWN0IB5s6ikUOjk+ETHyp0aaQ=;
	h=To:Subject:From:Date:From;
	b=eWElM/ecvArKldM8w5YeSUISf3NX2IhMNFA2rjTd4D5cV5U+qsFiB11R4vhaD7BxS
	 L7AdzqIsETY6skjQ7ERFzYJOALloksoCr0KHiy4WeXt28ML3UK4U6UnH6fCjpxQg+o
	 NN7i+o1NKH4ztELsiONmo9i5rWcx/n4hNssNqSCKkg/ltBnI0//NV/ymuhbB3HzPlX
	 gVdZ1aPKYjKYt1GlSA58h5J6FDK4+9i0d1BSLrVcyNFTKkj9p7AUmYDnO5uoVvo9lO
	 +zEDqBdH9HhqskFPzbo+yJl9skvBaKT6I13RzA2k7I0vCCxyY4sfzBcvflIkZfJRlc
	 E5ULdBqleiy5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917F0CA0EE3
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175515959358.23351.6870211102893972808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095e7853029630d5c487429a3ce1051a740da8698a6f0fc614f999484decd811
Date: Thu, 14 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755159593
