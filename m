Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF5721C9E3
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750324194; cv=none; b=qNjLVmjC8hs9KOrg5JM13BSPwjqEz/43HR80m32DUqKwygzY88lpO56VClvQWz3uL+JMn9YBq9h+OMY9eUH2g4J5pCA5Npjr0cPVXRex8ox9Ff7jNS9GQN9+YGdheOiGXK4s0pOemxIdmHwe7O+/y3Snp9Rcn5+iDo7MMK/7pkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750324194; c=relaxed/simple;
	bh=LaZBeF7FHYXDsPP4LFDF4DXPhg7bIu2p8VA59z6+62A=;
	h=To:Subject:From:Message-Id:Date; b=JmbsWagTraKMvI3soObrJUra5O9Epv5MZ1vj14MGJjHgMu0Wy0FXxKQBWrvqtsDx4dmw4qY8HjxaKMdFjoAMjY/0Vz+LkJ2BvJVjAnxIsCmBsSq8kFYJSfNp8B5H7E15/9rvziwqrZqOLxxR6LnY3UPZGsAV9BD4YpAZ8tTask0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kgebp244; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kgebp244"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECBFC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750324193;
	bh=LaZBeF7FHYXDsPP4LFDF4DXPhg7bIu2p8VA59z6+62A=;
	h=To:Subject:From:Date:From;
	b=Kgebp244IcrliJ3V4jagRjytPSas1HI6xRbxAwMiZEDqscRdI/uxJpnsjUBLiu8kw
	 +U285DLJLTFe2PoFt5S2tV8dwFlp9+hx16rdKLKhfvSb3jImUQRANLpJ4QhXosIxNy
	 CT0OR/1Xfextg/Ffh0JhcO+MBek5aU98VtlGXaB8TBFmFhsGWWUEyTN3GUCg8ZZtmh
	 +lauLEvGtW0ha6hTRPMn6Ye1BS98KckeppPk/MDTmQ/+3b120NYYIhYAT3YaiHFSOA
	 U+oy6Ap5vfiC7cFtQQgR6wEPSWN2xSpPOMb4irHJ5Fi/dxnPF8owIgEHN8HyYSrY4L
	 8UZG3JDsxa5gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB3EC7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175032419357.15101.11005160293627499727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e547f27dc2154bef8ec0efd87aeeccfd38a9e73941e06090a096ae6c0e839466
Date: Thu, 19 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750324193
