Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239192797BA
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755208194; cv=none; b=IewfLIs38hlDRJIFj9+gkJg9OIcsdlPfQ8jVQ17M7WmO29Scr2E8uM89oj8fjuUilj+9sMvBmCyvioNk7/t0jwyh7urakIdHOVodDRlXHUu3HZoNX72ePOedpBbDAn31Qi9z8cEOg4iCn7+eEAInwjx49BnLoNJ2UvkOL1Imjco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755208194; c=relaxed/simple;
	bh=DnMmt5Cu6gWdQKhpESZgk2KUhZ2G9c1K7z2+O5rfgOM=;
	h=To:Subject:From:Message-Id:Date; b=nhwDMWTMjEIoCk4veXz1IaJ2UPnORj1Vo321Med2Cf69aia7XEM4VCsDQlXssV27rjIzYI1Yyg9HjI1+tlyCVePw1twAjXbYtlBG6YSwLfKl8uuLJTgXdt+/Xd4CxnmjBAlwo4cYrGh4Bb9bLNQGe5gDqQ08QlNb6axYskAcCoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/CkxLUK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/CkxLUK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0D7C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755208193;
	bh=DnMmt5Cu6gWdQKhpESZgk2KUhZ2G9c1K7z2+O5rfgOM=;
	h=To:Subject:From:Date:From;
	b=P/CkxLUKFQYyQkJJTWdV5vCDnBSEIbht4iHEdK0bi7YpWlMZgPkz5FYBLxTDh+J1e
	 /GWV8e8aLlImfohVLZcOnspe64sKpKuE2G4ETOl1aYLNJmqqYWhINIVTsilzhWqy6M
	 SoX9I8iwgGZ7iEFLhsTAZkOVR7v5eN+TWQTU6O112orBaXrmGH+HMMdUIl9qPGbGLS
	 SkE+efuUVJ1Y5HE6/O9/vb+cmmaKBE5iLleD3XcBmCkJPRIem9s3pxWJTKIWrNkouK
	 LzbvWEaSGj2tlebNjuJJWgVZQJnqFi193CDs+9ZxoMC8TW5bZdnPTpZEy24cLJLdSu
	 xdefG5mr1B3Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F075CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175520819357.19464.14313387284352296192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 442edee4de97e2c28d746cb39c5a4b18df63bf9421cc000883dfaf0f27b16a50
Date: Thu, 14 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755208193
