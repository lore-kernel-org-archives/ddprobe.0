Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D8E156881
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 16:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714755143; cv=none; b=QMQ/rlsK6MDci5k9YCqujI3frkzXSKjCZrHa1HrO3+DSbPAlVKdw7ozOnRCtWvYWOdxtyGkdaSHvHvUi0uz0dlXhtGZ4nsgusp8umoYLIyWPZfAi8pIOl8GY0nbeHEuTlT0VePg7nX/ncLZGtaEiR5PpxB9ZAfEGOJTh1w50HOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714755143; c=relaxed/simple;
	bh=vgLmn2fyPKBExvFIlm3EJ3dEHRqWHKqMNXEdwgX6SNs=;
	h=To:Subject:From:Message-Id:Date; b=npAj8NTbjDhBj37MvuQffAjWx8S+k5iqPE8AE5W2QdTWeQOcAW9KablrEmCjmYO10posXoZmbjx+dpJjS4pQ+7YF2ut/Ni9rehVUTsB9g9+TTktjs2ojFj4YudG9QAQbHkDzu0k/TUt+u7ouFiU0fJlfzYi9BBmtk3mFigaDFUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8nqH2Ve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8nqH2Ve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0307C32789
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 16:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714755142;
	bh=vgLmn2fyPKBExvFIlm3EJ3dEHRqWHKqMNXEdwgX6SNs=;
	h=To:Subject:From:Date:From;
	b=H8nqH2Venv/9dcRAe60SlnHr7MsNtmvs55xiBv8bkWbzs8ViAgH28fO67/Zxeu+A5
	 U1Y1DD2GRsPRa9C+sQKxWHsbUapLnCK6LJJKZDXPokkfnOsoQesn4Ik7p5qXGhQ8ew
	 Cpb/AtYkVA86cupfrxAnqy6LA7ACraX1GyEuQlDwAahB9SG31OHkNcX2EMpEv8UzxS
	 DbJV3feuVYnDVpuyNhiDkwSgVwEDgO7pppOZaxTrtu7uQaJFU0dLOGpLjiwK+DLihU
	 gVL2KdxfI28g2Xfij74VxDDohbiOFK2VFESJlyVmMjqCbOhyiwSOOw0mMbN5f9CAVg
	 aebm8EHc2THjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8715C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 16:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171475514281.22587.17803795317223107999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7e142ae71d1baadf4d4b7ba1f8a346017980366cfd1f1e80de0c5df21f17c11
Date: Fri, 03 May 2024 16:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714755142
