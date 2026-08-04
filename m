Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27ED8477980
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785859835; cv=none; b=dbn3jnjjwiSe5z+P0OJgWh6z2M7/ZnN0ITIWaD+u3+49zX2TPf5SWS596A6yC5pEYHYrs41oDYOzJfo5yz1VXWo9VuHhXMStVCQLwM/PsIXchNjU04ViYQIgafXb6Vmh82JSf6iAfR8u59zEwQ14Iz/LWwGFM9tyDiRJ51qR/1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785859835; c=relaxed/simple;
	bh=pLD0qikxfW4lSRx/3nkM4y4gP4UDTqJ4X4Wze2fiVHw=;
	h=To:Subject:From:Message-Id:Date; b=ryT+pb6mzniy3WIvKbQGPqY33cIU8VkSMLuLd69dCUo62zKxjOFOUIB79TaSPhsm7MRQ81yuMR1/R6CGbO4cucoi+t0KPDENlTllDy5WgB96/cVzZQpH2EZx1MJrjdbWmMTDQFLxoqEom3axKka14MlaUPR3Tz5l/T5SxDlG+hA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKmqyAI0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKmqyAI0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42AFC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785859833;
	bh=pLD0qikxfW4lSRx/3nkM4y4gP4UDTqJ4X4Wze2fiVHw=;
	h=To:Subject:From:Date:From;
	b=NKmqyAI0rrUCqXwKKURLflsiSYvVr7mUfwuungOMzRbSubv2mCp1CDB/mv39i5PV1
	 xzmPk2MCAkLt5N+7qa/xva3hehBlN7Tus0ADksnOfi4ilCyj3mFetszHS97M/4nz3n
	 qXtJtVhAroj7gfm24TyLVr9pJBJ+b2LMnSwhVyYBRz8KC6xH2j4cqlFN2XLtY3L5VT
	 xuEQNzv6DkTI0iHRa9WHuZ9ZLkeeIXWRZO6+kj9nFAaWtOWb6Ald8EHEQBujy5bte0
	 dtXmNQPcBgUrXe/kAT+en3l2i0V+7NIv9u/xOolm8OcwjhKdz0JBHQ/SVQ40ruj9oj
	 bTSslUK4YLRoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF025C55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178585983370.25522.14595021069641255419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc27773fe797ac18315f029404c6aed464928581c94d75b8d8d98104dd9fed4
Date: Tue, 04 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785859833
