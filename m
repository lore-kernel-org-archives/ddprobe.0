Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BE38F7D
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734182154; cv=none; b=eMPS4eLBhDmLobYmClKYaOayqmpBfBPPXga2dF7+uTKlp7eLE5mplI2ZG3ejdr9NueGTn1dUF+2KFgW7+q1E0aENheEXigTismXbs7SgLmh6qA4kvLfhrCuDv95Ua2SaE+lTGbCSstrkMOPlr34BmVPJGWNZ7RtFeHk6jA9ckl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734182154; c=relaxed/simple;
	bh=EOtwJbdKAWxrw8Df4pZdGSYB440qTPqsR0zAQ6zyyYw=;
	h=To:Subject:From:Message-Id:Date; b=FyBa3AIcBq8s1CHwqs0hQK+n/o47wmt9IxR344MFUl3i7fquN0sHgdrYDXBla9+c8AJHmmLgul0v92vKriXh/rt+DBzAh+zh7IqBfNRm7Lv9cTiPW6zkBHqY+ORgff+oMPIPCCJDEgnm8xuKbaIZENQXkzHgW2zn4F3ICx/Nby4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WR0Rm1qH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WR0Rm1qH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3073C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734182153;
	bh=EOtwJbdKAWxrw8Df4pZdGSYB440qTPqsR0zAQ6zyyYw=;
	h=To:Subject:From:Date:From;
	b=WR0Rm1qHxUxnpUHRqaDOdWcffCngqfNK5dZZ3c+ObAWR5Kw8K0uGf4bmmeQAqoPZm
	 bhesmW3JGJGxKqc2nUuG3/iKmfvA21eV98nusFElHqvnkQC4Gfp7jnpBq+NlepXSDA
	 uh6nyAakTlARanWvk94YDKI72geqteFGHHEUNSwu8mkGwqR3YzpggMruCkPUs0Ncgy
	 SpTZVjAsYYo5z0Nh+ZyO75OU3wj1Q8on1aBga/RbqK+AQEp14MuVW80cqJYSDIvaMb
	 ZiRg85IS5yr8IeAJumuktlkfQGmMtBEaRDwWZaJqkBn6KF9kkCVJBWDip0v0HNkIYn
	 n7Gc8ZqdLabOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D036E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173418215361.13563.3080720998446377791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12683e3f2af711e693d3a31ce395875617aed1d4bcd888a0a710276f3b686a40
Date: Sat, 14 Dec 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734182153
