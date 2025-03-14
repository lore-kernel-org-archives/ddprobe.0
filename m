Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372B11DDA33
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 10:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741948734; cv=none; b=GOxleHBcdAvBu97MD8PZ6kcwlvsso+KXoEt0zeg0yGEgbyh0Z7SKKFY6FqbKA2zb8m4FTynnvJxZSNwk4/9CbjW6GqV9YN8CIGzKkgmv/+95KlT051RwDFpXAz1VKFQ5FaYbbLdgX/knWHl9pZecT94dDWbLHENWi5I46hMKaXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741948734; c=relaxed/simple;
	bh=rj6iZCqtQtYHORpXKoV+8x5Ocv+y1KAqAjn8fe+fxpY=;
	h=To:Subject:From:Message-Id:Date; b=XMuD1AniO3KRXKyhURck42ftusB+JGoTedXvaNBMemNwZxGqq2s3Ut/ZjoE1Kx0k0f9POdzzb0EL6ogm3L6oitvefktgfIBxkRnlCXzVP26L05Y2MQ/PdW3wbjdN3Aha8arND1zXcl6pJbcl1OhCcZ6l5wBAsf0r9b7K7OC+i70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jH5rwDh1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jH5rwDh1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCAEC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 10:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741948733;
	bh=rj6iZCqtQtYHORpXKoV+8x5Ocv+y1KAqAjn8fe+fxpY=;
	h=To:Subject:From:Date:From;
	b=jH5rwDh1qAf8BzcwAB/to9DGmABloXrsYkWoj+owfZodGudYu9x5r5vMchreB/U5E
	 7IzrQU+clOLWcxuN+yuCSgSOZLJDB5e5Q1Hlfjbo/hGjaZFWutvdGPkh2QOXDnJPIf
	 SIPk5HgrTHoY7TU9ZpulT1S/UFwn0o3UqAcej3jgmgcmiq9DMh5GwSr/XY6makBUO+
	 7Gr8u1xNex25IZcoudTiD7nie5riKkk9RNSJHzN+rEmXpLRlikwieJVWh5XrrOKqUb
	 LJSbKDYColnbXCxknjFhB9I/ibpU9YdflZFOfVrHALea8QLa8YWj1b/SuENwm3UgEB
	 ZtIlVIHhzE7FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985BEC282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 10:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174194873360.19699.1594558179151482800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee13b37198240c14ba184f5dd49ae4b1f2d9c2b90db347eb3b9c25b4f043e39a
Date: Fri, 14 Mar 2025 10:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741948733
