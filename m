Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224621B3923
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 01:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765070574; cv=none; b=q/lSYt6UjzmyLA9Zw0IXxsSflJNQE8WvEcm4Zo+1lF4/CQbSgNwTFZ9c7Hb+GCxNAhHBDfizhqSXixsYYCiacO3Fyo64drVp0aaTdKw84oN0Mao5lL8YSEYuvsA3+D/sETcZKOXecMVQFPLBbrY8O8ffuIhX9RxdaKzus7hjoVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765070574; c=relaxed/simple;
	bh=VWoxmDXqh/KmSMAIMLRTZ7ukz2Yvn8UrxQwfJLtlY5w=;
	h=To:Subject:From:Message-Id:Date; b=bHdi3J9lJlY5U26wYhCRcofM6uVdMqPn7l4fCLdeRv9FUixIsp6HievS2zrt2fJN9WdxGsN9i3+jQwktroTt2KfSQyv8PZGtY1NTuu/2PVYOhN5IwoOzy0dGDj4xCjMGrG5a3hkCqHzrKGYWTWi0RvsMjZNGjem97+V3SdGSxtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSw5u5Za; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSw5u5Za"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AB2C4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 01:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765070573;
	bh=VWoxmDXqh/KmSMAIMLRTZ7ukz2Yvn8UrxQwfJLtlY5w=;
	h=To:Subject:From:Date:From;
	b=bSw5u5ZarHxiNB78+6XadZtCTgcFzacrT+Iqi7eR4FL5Bfivotd/u4mAos62aTHzN
	 DXpiWxexXv/CiRhlN/HgRdi4EoV51k2kvy+Yre5tRXX5/sCT468kSbprt3ZZlhLy7c
	 nrbFgtlABwKkzKlfO7TkWbKPBd+Wf9myy2LM2rotAn/dNUJeGBg1kSEDbZm7pAqCf3
	 8UIdIPHRBoYs2sxsiYH0Nkesbqo7TLzYyzzpLoPWr3558VVnaR2TELnKkYlrfpYUey
	 0xZ2KAwcEXc0TrnVTJ2qsP1RatPLSnPHlEPES7JxZsPJ38NADlHdvLuyc4yDd1FVT3
	 652XHkYIzTORg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93493D3B7DE
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 01:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176507057358.19580.1554350109351332036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5febcbc2bee501065c0502e4cf2dc1896f6074a00ee9ce76620c4e7852e8cf88
Date: Sun, 07 Dec 2025 01:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765070573
