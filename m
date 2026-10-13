Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B544511222
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791902434; cv=none; b=RtINAh/73eWoO18q2fkD0tURYDJMJ4EjHiaV2J99jAXtBBc04fK1uvDcerycpB4XWdvid7uytHXP//soBRI5R6eQhs50TrBuY9KpkchsYapmx9hASbOWL7L+pERoLP9QuuIHNm60cHE6OO63DixNVE2uDI0kfSK2xAAHVRJfzQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791902434; c=relaxed/simple;
	bh=b2kxU0dyrd8OPa2y8hAj5JunZA+/u7yHkGukMYnvxmQ=;
	h=To:Subject:From:Message-Id:Date; b=jhY2pgxM/8Rmiz7WqcMhU5annpji30S1TvLdx+Gi44WvF+KDTwxJFnwQoiK6uVhyxKvu0nN5ymtFH5Td6uAUT495ENKf3wBnzorA36d00Mnx6JRGhv5tWPFZbGkd1z50KFAawb+6Ak2MGIw7wQlWQxCC9YlhQWELLUul8h+9gGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohvT2hys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohvT2hys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE1DC2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791902433;
	bh=b2kxU0dyrd8OPa2y8hAj5JunZA+/u7yHkGukMYnvxmQ=;
	h=To:Subject:From:Date:From;
	b=ohvT2hysDd+IUVs1nNdd9rS9iQXM6byr4bu9nUkUUlPHvYvsfLNNhNFex75CBJAd8
	 rw3pWRJwpxOXlnQCJ1g5gpHKAQLuB8F0J+8HAWO82U8tuwV3cfBfLJ/jE0FaXs6zUa
	 GNjxu950sgypzp0e0Ss5bKiHrNfL3uIeO5QtYLuiFvpkyY+UJUQ6JZGRcV3ffDtwg/
	 s4hB621bRF0Kawm8hoTdl9a6LA6s3+lYzrSAsISczwH5s9yUVepeb04Xzfyb920E2b
	 BiDjNHJv6MlcuMLVzX5CKRfAF7X80Km85yXhxlFQ4y96d8zWCptgPxbOqO8ZQlV15V
	 cf9si3Koc3qNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7ED8CC6B08
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179190243373.26936.2425462465584784329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e14f1a5acfdf0b550f5a040a979b576579d5545c9ec6706e5bfaffb206f36260
Date: Tue, 13 Oct 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791902433
