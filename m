Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D90740D59E
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 11:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784201914; cv=none; b=VqPNZGUEChzqqgSh1pWOPDo7rC/yadpS/YJHIdOjMLF0LIZDS/tRT8qL00JjARgwVVGNwnUYMLtjZRm5MA1OeKelx5LQ6ghphhTZXxu4l8RZ5EX4nQvDgh0F25SBZI89bhXTOXuYCeYyTGA/plimzFgKsiy4iLXzgkL6g1ahBxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784201914; c=relaxed/simple;
	bh=ImzaipsNObeRAikR+n+5vZqKaJf5kcVRaC3NbuXJpew=;
	h=To:Subject:From:Message-Id:Date; b=j4l41uHxG5NiZoONQQWKm0BM5PNm5mAY63Y6LJjxM81C0CMfD/XPnVWtexRst2fhWSqYlxbU6mOqVRUBKtzzVZqa38feurB3VYCzhBcltCTS6z4zJFpe7ZLtaFALZDc0HON6kguXErWFqa/p/JASpCnBqKW9NKteANPDwyMoBcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjBqjh5n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjBqjh5n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D57C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784201913;
	bh=ImzaipsNObeRAikR+n+5vZqKaJf5kcVRaC3NbuXJpew=;
	h=To:Subject:From:Date:From;
	b=IjBqjh5nDSzt0Ac3KYvar3p/STcI8YvArqvsfKdEC+oNnTTutakVyUhuR8ZUIGuB2
	 U0vGsAprMOJWEf8CHF2CpLWkSOgbVmF4qaYxQe7VWoM9PUr6RAGCRE04QBvTJ/mMtB
	 x2LC0kUkyZ+e/69LZc152X8ixmk0CpOZ0vuuDte2+NBCa8A6UQYs6HxrJ7d2VnLS43
	 3L34zQWVT8kjoRvdmWL5G303i5pj5a9b/5ny9VtC+Wcdyt9FN611Qt7jf10ucAUwcu
	 S8RWTMc10ANbHel4/JVRQ5BvC+BZo/dfaLIn2G42GUSoJXFJKKUnsry7nlxgzvfmEW
	 J47DVEgOf30LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B49B9C4450E
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178420191372.4751.10196447282270109033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 978b12b88c4f4a87975522ca80078384651f804b9c6696ad2a18f7a69bd08eb7
Date: Thu, 16 Jul 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784201913
