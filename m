Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0EF4315E
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736710554; cv=none; b=uJ0nMS5YjH5YJ2zEOr/8YTPwA5LOeJuVU+JiHklsgZO3RcwaMFFg3V+B/2UT5x9LWM5Rv0QCZCyE0i9BoEWDW+K1/6Bpi9ZBKukFGbAkybbScduid5g6B1UrDJGm+GZiw3eRuE3wt/2xXdWLiqVbDaZH5UALwJUwgSe6HEkAh0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736710554; c=relaxed/simple;
	bh=Imjk5dJUvqdMTXd693wOfM+GgqhD7kgYeGSjqlcuzyM=;
	h=To:Subject:From:Message-Id:Date; b=XCqzrL4TNSRnutIrZXYIUu9zROy4r2AhFE9TJFdBM81GBA246ugREzRkTw/GFqx7Rp0dHzvYY8OiUHkojOprZwMr3nEs7vREsX+MY6iDcYlGjBYHPdgszHCgMFu0MszXeNAWqNJ2QBcYO6hJOP8vtB6AVbn3ZSr+NGETf5l/jlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FjLGSecx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FjLGSecx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEBAC4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736710553;
	bh=Imjk5dJUvqdMTXd693wOfM+GgqhD7kgYeGSjqlcuzyM=;
	h=To:Subject:From:Date:From;
	b=FjLGSecxQ1tnks4Wd21tTlnqzHF78lAuPK6UpipYcETkXiI47tQd/zgJKYZqcZLeC
	 PY9E6qMkkO/9HGsGZ4Dw9w+EuBVt6L01UB5UnKmBbiOEx2AVWQ2meAhClaGS3E56oa
	 hvBkiX6m1Xb8osn5lCZXgaa3/3eVlORshCiOLqxny1TIq1Z5RIFrczOzkdTxbh388o
	 MRkyadGmd7nQdqrOngJrCriSI2bI9TAWvY9vyKn3WJn/QIaItTBiL7jCVdEbeYRI6U
	 6tAJxhbP5lsUMLQgmbU3FcjWeePGqIO0m6NoYYnob2SOt/CwIxnHDPkayhYXcjTPuR
	 kc1WFllJmkCEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9657BE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173671055358.4189.8270528103892137595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f392fe67755450869ae2186db392ad3ad0b82205a95ec29ba46e22f5495ecf7
Date: Sun, 12 Jan 2025 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736710553
