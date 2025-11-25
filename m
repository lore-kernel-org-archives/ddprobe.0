Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1614D30F7F3
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 11:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764070974; cv=none; b=feC4lhWWvk0ls0hntRLPoV2T3frt2xHej8eqtqWFpJiS7wJTPLNKQnwOrI9U1AxGeilLsivM60L+TFsZh9anz8qWmYSZMhkQhDgQaNfbZ5bwpun0LNV+33o3MfAw94tTX5VeaiDJ2fxfdZpUNYwSOMhG8P790emZANPzW6Ya5Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764070974; c=relaxed/simple;
	bh=jG/mCKOdxBNtLpSCg9wPtcM61wJB5OPHTZvb4wSqUJg=;
	h=To:Subject:From:Message-Id:Date; b=pSd7OLgy/UPmZi2tyE6i2Hm1TK55HCtVouGUGCvUJRvtuTOk/PYk3UceOJxRP000ZjcXb4MmVBUlUzI7YXQLNjN0A2JkE5lZDHPDTEFYKrzcgkXI3PJAzw0ZhfvdybLvrxIpD/MOtjzNDwN/HOmOHsU+bcCzi01U6ya1zvQdTss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdNZcKGm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdNZcKGm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A550EC116B1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 11:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764070973;
	bh=jG/mCKOdxBNtLpSCg9wPtcM61wJB5OPHTZvb4wSqUJg=;
	h=To:Subject:From:Date:From;
	b=jdNZcKGmwz6hsphZd/8NZ+Mt5Vl0kW8y7MRiK1JRW0/WJDnGZaZQxleNhAYNiKRsq
	 PNnRyjC88/KzZGkTEmrn6fEmX5MkI23Vge9EDLP295MsKMkFXhcEIjM5p+lMHcsL0W
	 5/CpKYplpWUwPSQrlBXmM5te5sVbHM/bzj2uWuwl1qheB5IxssXEWA4eM/uWHux/Q3
	 npF3kDhhk/AH5RTrY7MuMVzF9dFtov6wzV9KjFrONW9Jsny8CHakANCvrmL4syw0ec
	 GHJguPNIRjcpBTRu0ZOe+5+tjIPZq43WuFeGahk6LdPLb3zT7wWOIMwk7hIuY2s3BS
	 ThB/8KyeFjCKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F42D0E6C4
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 11:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176407097359.12771.11911406715827718186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f4929c426a173fc41f7db04016d29bc64d722c40058fa92f56d8bf0ff1fba53
Date: Tue, 25 Nov 2025 11:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764070973
