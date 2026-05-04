Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 894E238D6A4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 10:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777889254; cv=none; b=mnFYSgv0D5/vzX4b6nLlrzK1TSKFOPGtPexRXQ/PSqcODXD8P8c/H8z/JvIV3AurpniVk5OVd+eDcGu1Syu4pFdwvyw/b58Hu+EYToUhXW1qol5a0G8PAMPcmbukwlRSjCsCmIdif7LHVyENVK64hLJEnnLibaQIo6RTCo35Dro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777889254; c=relaxed/simple;
	bh=7IFUEZcJzNjRgzzoUW3nBDiAmXHOHBSVsxKFdH+oSgY=;
	h=To:Subject:From:Message-Id:Date; b=C/Lk9OJNm/P2/uYHF5kBIrXEZkpBM8sJPxXQkRqNG9KSeOk0gdqbR0TfQBuArs9JvTS6/RkChpgLYAyqLcFp3b0JjMxVZQ+1jnFJIYhT4IaRssokC77I5DR4hjt3aTAl/yyNT6V7upCRUKqCpZ1XEHFIyBeWFs4LME9OQcONdok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQNm116t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQNm116t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9505C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777889253;
	bh=7IFUEZcJzNjRgzzoUW3nBDiAmXHOHBSVsxKFdH+oSgY=;
	h=To:Subject:From:Date:From;
	b=BQNm116tXkXIRnbtTvlKRQt0OZmhKVfkU4PMX4WcW7QivSLQhS6NQAFlbBLVJ67rN
	 dVH9/My24E7DJpKFqWU3Cup4rb9WQ9ZluGdX+v+3GfN4K33n9NsRIeXlBqxQiVq/l8
	 nis2cdZTwlZCJWAlNaJRY2QNbSkZTEUaCZAbBQnNN0SPrG/2mUf0CB9oSZ2ICePTuJ
	 r4V7zvzMo1lzusFbNqq2dNxL6j7mF7SjGtb6fCpSuu2CfhMKGvWoIdyee15rg9b4B1
	 CDiM18OjRm//1jpdaFUG16pHLSVRJEYbtzJKICSKsXx0F7F3cSUqEijKLyULjdWKL8
	 Mv1sCuOyACsuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEA7CD342C
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177788925369.8726.15125325759712384518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4fbaa51849774a4ef50de885b957c0dbd7ba3b7189ff492c092883d0cf3764a
Date: Mon, 04 May 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777889253
