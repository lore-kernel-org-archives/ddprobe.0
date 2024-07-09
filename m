Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4781B5828
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 16:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720542983; cv=none; b=kRZjcINm/aOoABwnD6WItkLeB3IUP7cDRlB6jd+xzoIv9Gincegp38MDvC4JFcKh5BhTbkTrRY6kv7KyjS+3JLoEfdrhO/sbtglfvKuU9yLKLMzKz+AoCLYKLYR6++yjER/FSbA55YMGo/NydONhRN98vUsbyLvS8LuecWkf+3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720542983; c=relaxed/simple;
	bh=r3tjXJ3t0jK+nO777P4itKU70WbkQxXdVOVGcpPC28M=;
	h=To:Subject:From:Message-Id:Date; b=Gj2sQn/5VHYeSqXek7UUXjvCCiBTzpv1jl0CvKGELwpefhJomxw6ix5U64B1SRfhspAbwaLlNyGwKTAMfHkwl8/pT4a0t5XPPf7uqRF15QMRJFrgfGDGQX74iVgwolFXjZGYIwgQKyJX1gyrOwDgs4RIG9iMvLKFnj3uOPiERxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9pkPr35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9pkPr35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFAAEC4AF0C
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 16:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720542983;
	bh=r3tjXJ3t0jK+nO777P4itKU70WbkQxXdVOVGcpPC28M=;
	h=To:Subject:From:Date:From;
	b=E9pkPr35AFCld2I/xnFyynpD8h+zYJBOWEOocH0mH+q9oD/qeIkTFH64ewJ1YWYur
	 cCr64Tf67ky/Z/p00iL6Zg8E2U0Qg+Xn7beywyfKEqrRHQCxbmh3XuMywqqn8s3FDf
	 v6NcZzD9LhRE+fndah9MEVwftL7QzmHwMfmtymfF9D8lQGyQGRA5NY9ESXC2G7cDxI
	 8QwNvmWXq8e8F4DB7+HBvNtI/ID5tIr99UNueBXCyFkYo8yvTrFYMJWFzgKx6KJ8nr
	 7mg7D6nW79GO9dJkmlgQ+OfG2nW+0taxPLy1EvhvCeWDqS3w4iJiurseOcPjgHZzVw
	 qXM0kDne/vBuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9F46C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 16:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172054298283.26998.17783238364232410695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43670627713ff175bee5b6a58c97d44c3c99f69c05b8dc7980ebd16c029e3a91
Date: Tue, 09 Jul 2024 16:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720542982
