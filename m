Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D17292E62D9
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766132033; cv=none; b=tDRzy3dY7ChmbLQgUgLF5FxL1eQq7MBKXyka0K0CAP8QWfVgYiTQLE/HXvi8AC1kEpjEiZ1joAya8X3QaGnk6/XRWCKEtC+RumR1drccudG24ZjXzJICTqQOF7DgvigJeK+EZNUxxNeKQKeNgs61fTfPtODu1N7ultB2VvBn2dI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766132033; c=relaxed/simple;
	bh=OALZnZSHb82zzd8CsS77sXJUrNavmnH9EFPdFjcsacg=;
	h=To:Subject:From:Message-Id:Date; b=gpZ9kDHtuVOAaKv5HxVqlbW9KTiSt71sCJpMaCGcIaVUutDxOg7RxWGnFqMdidp30ovMZlDlRstl+FwuRlcHpfBDorp4NgML9gUMZub1kTLwYRMVzBN/h/HwJ2r854XsbXymt/Dk47UbA0c537aGtaq+JcAUfYBQkPycS1/rTlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORxlCZkl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORxlCZkl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B8DC19422
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766132033;
	bh=OALZnZSHb82zzd8CsS77sXJUrNavmnH9EFPdFjcsacg=;
	h=To:Subject:From:Date:From;
	b=ORxlCZkl0AD7hfUBfngbAh2P20wLUvsSU4yaBQ90Q2lFC8cCKj9KqiyD5Q78z0Xs0
	 /CYgDXVJ44ya9XBHqPvw8egnsZACOYHs5fJlZt/f3wGESUxGheUT0hO5TJ2vnyNm9G
	 ZNtgTKXe/gBUs99r9D25OpmxeVG/O1OPOr8R3lSpQLSHde02d8Rbf4UvScaSAHiAA7
	 m1ADxz4acsqmoKFJvjiZwRP4ysmhPsInBK4vnRt5VGPttRfBdqsG+Iqp4812rpEj2i
	 oH8NFyIU/ixEqZaXGdZrRq7CoHFuCazD8Gs0Bs1qFjXxlWtCmHPm9jDTt45hfzmTtt
	 YWHWrWbmpFk3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A16C5D74964
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176613203364.12675.17282618915962527443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6426c92bafaf9afa61a83789567ca1d22dc8491b5cecb626f86c6ff7e29a9bb6
Date: Fri, 19 Dec 2025 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766132033
