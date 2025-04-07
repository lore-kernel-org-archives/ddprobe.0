Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4802E79CF
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744001394; cv=none; b=pIiikwDT4+K5t3NpN6LrZX5xxqX2oX4NQbzFBzsSXYlEgyQs6XBAc9zDjKm72u8otEivXEz+mrSDKw+jeZYEFTZALBXT0oIQAekWqipwNVQPtcy3G4aqACwqPK6fo0rdwIWL0go8ZPG/ahlzJkWD044r1K7wrpNM12CvEjYWcVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744001394; c=relaxed/simple;
	bh=zm6yKYmXJ+F2Nw+AJIAgZWIm7W7GXbZfWq1x70Orzac=;
	h=To:Subject:From:Message-Id:Date; b=sf9KnCgZeSpR//9zVhlEF5W6Sdw7LM+/vTeQWRfBJ+9/yr/JoaxzGExjzHdRriIbb+AB7d7vO7XSWqPpSrDdRIoRND2FPTPQ1hXqQyj8VH0y8jl/jCdtWSH20a1656bbXa8Q1wLvDZrd3joyAEZulJB/Uk+qln4qJ42ucIbApRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXdCwl20; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXdCwl20"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF066C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744001393;
	bh=zm6yKYmXJ+F2Nw+AJIAgZWIm7W7GXbZfWq1x70Orzac=;
	h=To:Subject:From:Date:From;
	b=YXdCwl20aRlBchSldl/vVcVy46THqkngvFE6Mj1BcE1sMa+subkkAukN5kDP6nXda
	 Myo4j1m/AAWQrPMZ+oWfrjaq36V6zsl/pyu0eC8yi6oye1KOBYoA7+Tt1SR44jpfnx
	 vi7d09e6I6X6HaOh10/Q9+/cNzGmQr56R5Gpb3YY4IcX/2Xrlw7tAa9itFjwowglvm
	 RZa8gs0AciFQl9Fgrtrva0HG66YYSHR47gQFajANQ+DP+E2yktLjWb9rNeo4QrNkvs
	 n0D+CghukiIq5o38j6K6eJ8T1Xo9nFzx0GcyuiydYD3sWW93LEPJc5hM342JhQBlec
	 zhNwW7YTTnPGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9646CC3601E
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174400139360.14431.12484702725626202593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cae8399daa9ec7ec08671640d13d51d24ca04b2e1279ee0f91dcab4fc92545f
Date: Mon, 07 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744001393
