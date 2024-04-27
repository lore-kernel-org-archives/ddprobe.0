Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470EE381CC
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 00:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714179143; cv=none; b=S9s3fwMelhwliksSkmgdEX2FL1/fIHCCXL5AnsxL5kvK6ippHPt+BxfWnX8aIMaKiOYdC1J2DbV7rG8F3ofYLYjHk3hWOVKIKfF1AGeVd4XkGrwmOFm8G6C8R55GDnw4xKnUAjPtK0RSwBqg6QsCOHpKUYnbqon6ma8vSepJTbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714179143; c=relaxed/simple;
	bh=3Qm2XRsVFujm9NajLqRU5Y6r7+eccsyfbOAu7DdygbY=;
	h=To:Subject:From:Message-Id:Date; b=l+8YKEyJtV0DUQtbDs/F4oR8Yw6LuYckFY7Wv83y8SpmZ2coVFAyCnnocR3Ujpqe6GDWjqbVqA6Z5Fyi+EfyXaG7viGvkn1J4kBYvOxfmzkAMqOcOzxQieTQPPvddqVyhz07VuW7qmgWO/UupGYv3afoRgSp75gseQCkH7/TVeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdBHiBMa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdBHiBMa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1801C113CD
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 00:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714179142;
	bh=3Qm2XRsVFujm9NajLqRU5Y6r7+eccsyfbOAu7DdygbY=;
	h=To:Subject:From:Date:From;
	b=DdBHiBMaj314dq8IH20e150jFAjMj721N239few8mkUENg+s0vy6BqGb+w8aqdoCa
	 1PN+Wo4M54ifVvMnryh0kEZAv3njdh+YKrUvsMTKRf6apRjZgKs7QX5zT1meN6ydKH
	 dTtB1mEhRq5u1LieJ535BxsuyCuFYUiN6TynlpGjgkYqVwPtx/ZzT3DfoNZ3pHZ7zf
	 9v4yE4YefHSw3HVy1e9xAd+Uk4ICJSgHQuJHt6RBB9uOFguujx9WFMQYu1yKhrbkoh
	 RfZHononOjb/6vm9Kj4RDI860BXVZXhbP6+M7EBFO7NYXBHOCCH/lJ0i7QvSHsokqj
	 dzHUpt5VMkmew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9795C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 00:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171417914275.8406.17160112147819708899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56da0ff91a11276418b01a7ea132c60c43e7d61f7ff0207724744a0f888bd9ab
Date: Sat, 27 Apr 2024 00:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714179142
