Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA391494DB
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768661034; cv=none; b=BWemPF4ROke6lfk86aIS8IbxHFy/v4v8x2ipUoQLJlFZq7aYvABO1COONKF+jPSDkEPKiYoo9f4CnbYBJ7q9Qs2chnjdNMM30GaFZ1IKzsNdRD1pjgWlt1V7ReDl2fXqpEaDsRmmoH/5hDudPjjmmwz9yO+Kopl+TnSXTKza0to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768661034; c=relaxed/simple;
	bh=jaM+Vn2ndz316B79/KpYzhH7Ij3wcGfOle26Gx0MIjM=;
	h=To:Subject:From:Message-Id:Date; b=SKV3IeTBRVxkkSKhx6ivl1yEdUhuic6RrhMMyK23h17Y8OfjcJTYwprmW4a1H73CYSgYmYb53zoImjfIUwcU2gSfLIDZXEfzh1PDN/9tVWJYVj1ivNraG0e4oDt+38ISADe18UeBJ0spiKqCPjKaOAS6lxlq7VSvpRBUuUZm9JU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WsuNTNtl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WsuNTNtl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F16C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768661033;
	bh=jaM+Vn2ndz316B79/KpYzhH7Ij3wcGfOle26Gx0MIjM=;
	h=To:Subject:From:Date:From;
	b=WsuNTNtl8h860ymxZ372lRmUsxdECEniIDe8GRaPmhHQvaxsVfZCnvArE4m/cwOrF
	 ohpRKZhXMSF9BuNrXucRSIHFyNloHwlNLKB/K9XIh3mN1ZU4kluHb5NXR9WYkZLQVg
	 f0YrGh+MaZRWnr1TwXZilTl5QDQQUV9be7RbmVPwcWzEQbNGa4X4dOqYLfKpsrFjtu
	 sNg1YPpxM7Jd7USZiaaIto2gIB8Dpy26yDqChjTe83LEiXdshfzj338VnUKAxjqRA0
	 bZT3fvrmPmNdUg15azM63zYzN4Mmv+OL/be7SChJsfHiH0URwkybGOE++6+Z8T0sHm
	 jy09sgS4wb7rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9589AC9832A
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176866103357.6273.11302153328471422254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa152ad356bdba1fae834a0605e9f3bb6921f7322de9a6c776b9a8447e9e41da
Date: Sat, 17 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768661033
