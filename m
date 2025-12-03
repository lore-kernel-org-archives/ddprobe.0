Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BD82AD2C
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 20:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764794574; cv=none; b=aXNLygpjuekJf6HsvLLhhIgOwi9bHYioe+UH5nhRFIZ8dyHy9kWYAVAEAybY6Xu0Dk7uN2rMlEJLIcOO4cuUu8O5ak2b5j2Ls/TkzPIvDuks93i7jF4HO+4KRXclTJUcRhbRPQf6umt4xqn0CBaPvZTGANF9EF+PdtaXK8r94fQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764794574; c=relaxed/simple;
	bh=xMYvJ1mKwgTgQDafgWTweWzHOKllMww/ifR1Zjekev0=;
	h=To:Subject:From:Message-Id:Date; b=rRAKVWkzqbcUFlBA32SuaAwvbwGeMG/iv4HN6rJYZCOC1zTtaezQC9Q06PGZzX865Ss+Xlq11uXkjPJF8UmLAxPt1s8ScI0Rh7qNuuE0JFR+EzXbVB6CmkkOBf0X7MDADlNIY8xJNP0JBM8XzB9hZ9GZwyRpl6A5jiKGcJX+neQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAildC2K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAildC2K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1CCC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 20:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764794573;
	bh=xMYvJ1mKwgTgQDafgWTweWzHOKllMww/ifR1Zjekev0=;
	h=To:Subject:From:Date:From;
	b=UAildC2KZMt4Jd+aCcUpD0TH4alhEaQsc+ntBWzZfOUmbXh18T8TjboQctT0i1DOr
	 y0f8vbRuPJDnw5/QEX3y9xX5XcSNFfd3q9GmxsjkFpL2BlY2OLuyCjHRVhdLgTDnHX
	 yQ8p28BxEn4rpQ77Y6xoNX2vwfRG08VO/wawJ+DiKLdeb0amLOxU9o35+ky5euyToL
	 52sj47daZMNOorwVgsOZhHwNId0bh7gV0mnrMNhBjBKY4oRbT/BPI9Foejdp+2fITW
	 AeNY6aVZRChhHy6ffGjKe5nVC9JiWNrjJVU14oUIxjnAO1NKPSy1SsspdlKrfqhaUU
	 5KBAYiMp/3cVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D75D12D6A
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 20:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176479457358.30580.10831669847332440872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c83e82473cf5a9c64713d245bb6a4af4b10913d4bc0aa3720cb228c3e2eeba87
Date: Wed, 03 Dec 2025 20:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764794573
