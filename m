Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2751B20299B
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762585794; cv=none; b=L1ctNi4qGU7pcGD6EmXfxlpcHB5DcWdUAfZjqx/lL7QUViAqcLWHEhyFhPF9H/gbCALEA1LGPUqelxEr683hRGGo7oltlvsHuQHf+QcFQOWdkH1znodqYjGwjqfeiIn9tPMbfOWoM325Xp94YY202uyMN8XUNMabsKf6GoibSR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762585794; c=relaxed/simple;
	bh=QHsan0mlveNFbNQrDQPIQCYeHvniFXVnRGFznV5HsVk=;
	h=To:Subject:From:Message-Id:Date; b=TNxfatuICzi1xf8UgA76o9pwPYolR5Mh44ms1JDoTKj+FAMxyxGYR4eR+sLfeeNOEm5RCLiQhJ7CDa9GIiioXrrZaNV8HwreKAS/XxscLSUK+0nMzF1bvKsvNbmXGLR3W763fL2c+RBGbpUKOYcIEYCqBDup8RA21QCbwD9LoZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqkfQV2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqkfQV2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7E6C116C6
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762585793;
	bh=QHsan0mlveNFbNQrDQPIQCYeHvniFXVnRGFznV5HsVk=;
	h=To:Subject:From:Date:From;
	b=TqkfQV2L3pvSXKYSL12/mdGCZ/bpZowDD7b8MFOcjfwXWhTj5LTZopH7O8OhTFoKd
	 qQmJ5KasmvTBq3YVTvWI76RsDamHR07NQAwTc3ytsdE6s93BVanQLJmm5CmPigfKpS
	 JYfNSgjAGdExr8VMnoOjR+NTvEQ/FrgRZuO4wUcALNR0NKe0yRTdJUl2Q5eLZCKdXn
	 ORQ+AFpxTleFURd5mdBis9YolzOxkuqaJWzif3PwvFviAsKZgYfaEaU+s1VGKOlK+q
	 Q+ZkL0Vvc6VtqXS/CSMZsq/IjuO+bb5mOGEcIJ3eV0y+Uo+RZRbjDE7rWjgA8WUTWS
	 3C/m32Z/QbR8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F62FCCFA1A
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176258579364.15178.13365804888201682218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3defc60870a9c6c472a13ea218190cd755b5f2cdcb594b53eaaaf34ee826020c
Date: Sat, 08 Nov 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762585793
