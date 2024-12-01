Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DEC382
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733019954; cv=none; b=YK8JUEeYGIt3LTrWC8jKdJj4qSqPmu5JVB37cOI5a5ItbIQLf95ILJfcmUTD32u2v/ud5OYvFUP/UGOv5ai/OlvRPQiQZYXmjl9MwXiQ7N2fkZw1B4B8Ple9qhTe3f0MDnNFgtlnGLzY8Z8dILD21GFMEI/hnOB+rtfaa39zBaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733019954; c=relaxed/simple;
	bh=HZ38XibcJHWfCrar7HbEF0pLZHVNTEDb1u191xLHscE=;
	h=To:Subject:From:Message-Id:Date; b=CRcEhHu/vcNq4//GlKNp5aGf0mzeOpOgmuuVCatIutFKmEva6TURmTFNQSG37kGEqj3i2zacZVk2i3MhSuWUl2d/8t3gszwA2ttvGJ6CPTol2+1XSmziIq9x5iQ2Lou7EKbNRIogLTo23nIjiCWge3k3qjNla/E8XCER7B77U4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVf4x9bP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVf4x9bP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2FACC4CECC
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733019953;
	bh=HZ38XibcJHWfCrar7HbEF0pLZHVNTEDb1u191xLHscE=;
	h=To:Subject:From:Date:From;
	b=YVf4x9bP68qooF5NnOJRMMON81Yo6kPZpe4i+w1xTgWBkMNxIMJHQK5TthH+uA/i1
	 QBE+BJOC1TK7PawlY39jhXQTT/+01L105ZHiQAVAI8wRjgTrkcgV6ZkeNysigEF88b
	 TOhUkt7EmgOzlFPduWOPSGoLUOrQemkBZA3zTfUY6j90zA2YsQ6W1HTzAhgPKX9pk5
	 vpcaFnfpv8o6dojR9OTwnaK1/3rZJfn/41gesasm6iY8OijNs4LmcmkjYSTBBe1tMZ
	 xy8l3kz7fMM6eTzPs8b/sXuVNf4pUXOe+77Chts693Ljn8lIShKwgK/PRq5LodgxU0
	 BNQ4q+iuligug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA722D73619
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173301995363.30355.17564384198333717311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f7b3bf980fc777c0778d058e3b04e9697cdaf02165b64cc436b555734925b5c
Date: Sun, 01 Dec 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733019953
