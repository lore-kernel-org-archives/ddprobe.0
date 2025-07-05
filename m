Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318572CA9
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751729994; cv=none; b=CipBFUsivDWdUcSEr6SktuXWAg3GqyTE1UsKJ3UbF+NWmTEFsrVTyjO+oSxTq9y+AGCmkZ1AEz5jC3awFegXr/LWN9g8zsvH6KKiN86mzUvtbG7+fCQv1TNQeEo/AS1QKZYqeasJCgJOMQxbPQmSJrd5CymFC4lfC3d3Y7my028=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751729994; c=relaxed/simple;
	bh=p1+PjrqSQ6RRnTPm5zAMoH4GH7oEYLmRxOAHpe+uEQs=;
	h=To:Subject:From:Message-Id:Date; b=Budy8RqUzpBM6Vb4e7YL88lqhNM3tiBGbh2Lrmn+Z4Zm04bRhw+I3ZMRIs9N2mYYaYNaJBiuSvlXI2OyfnCtvr0iiZzfBIvtr81o0THVmlBCn2KYCDQIHnJM8fE+/8ed/Gilxpoj6F6CfO5ErZxQg4CgLFwK1lL47XXNj6qVha0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNP4ssCS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNP4ssCS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A280FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751729993;
	bh=p1+PjrqSQ6RRnTPm5zAMoH4GH7oEYLmRxOAHpe+uEQs=;
	h=To:Subject:From:Date:From;
	b=CNP4ssCSqrzOTPhdjmzx5BIdnnxksOqConKekkqm9Usl9SgHnbbqs1gYjcCd/vXJf
	 082VScD80h2mLt5Q+WD1fTsfO55YzOAmTR4nz/hAas1T5h7o5i+OaIvZO6aclQ752E
	 KBsj5G1rEfY0JMgnigXQNT12PBloVnDon+B1spf5NJmPa9xlvNmNfjmFEWCvkK/keF
	 xS95q+UFEeySHyMCcbAUR2wT11msNctMZifG0wFVvrxPILY3X1q92ZkcTDsW7rYOqy
	 2D0rXA3Cfy/mojClK1DY6lsiRXPvRSfp66PfsyKjZ6vHxh1Q4ZZebbiFUQCrdz3F6+
	 A5tq9mBfg9GHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CE4C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175172999357.7728.12674094038998994482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fdf60a3ebf69ea63288172ace639c0fdb3075f09d8e918da1ba0cb7f5e637a3
Date: Sat, 05 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751729993
