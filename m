Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E52155C88
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758788994; cv=none; b=pCM97NTxyirVKnb4/DWrp4O/T+j3EY1UfbsZvhUxypTkkFdDZUK6LtAP567AonVK9CJM5osguPV0eUi3GsTqR0eY+XCqpdOau6U9QEe2QEDWVem9FKzXHcONTJULTqNjOHYzskZ5bbmcfJJSACAlX+X5NF1Uniu14UNFZNfx7pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758788994; c=relaxed/simple;
	bh=oc1isNBDQW3cGJyO3XHjLQyEpaHh7Pc9xexZkWi6Etk=;
	h=To:Subject:From:Message-Id:Date; b=fWH5YIkniLx0cv2yZyUzUJl+A4tlDRWmIiyD2tt9TN3pN/nsOxE/cE+2va0Hch0CxfNPdP1QK5cqS8SUTDIloGBdzlKfjrQnBOEmIylphu1LQQLlpz6tDjFYXkHeQ3189dDzYYo34qYSVwKjunWPXfJxIA5kXXxCq9g9MRP9JMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZEc8VCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZEc8VCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3999C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758788993;
	bh=oc1isNBDQW3cGJyO3XHjLQyEpaHh7Pc9xexZkWi6Etk=;
	h=To:Subject:From:Date:From;
	b=iZEc8VCz66moid9c9UcEKsNSLRj3eAauM8DrKltjeroskKOiJ/lDztklTu9SwRwvZ
	 26sZYjZUgcLKfD8LrMWqK+zkLTjcq5/G1+iTJ70Tpx+c4cTRJk8vqlEE3jovJxU50c
	 borlm7C7agVjlVbeXAfhT8z10l1wFvw7GgHmWNY/x1xDN2kkrbHSnaKJ00Ee6vJMh4
	 dCxNzLaV403ErBMvDdBU58tCAcGi/x+8a3yAzgwOR9ZFuOHYozlrK0kfoEEcB8EhVu
	 gliuDyW9fjrgk1wDycQfp5pZbli6VWlk/oxmyyEuOyJRQJhmpZX8C1XuVvh3/THHGj
	 7QbsZgKAd8T1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D52CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175878899359.23691.7473263244158657699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92e1b20e553c92f6bc1fcb759c91e44384c131a995f04348838384fc3d5c9667
Date: Thu, 25 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758788993
