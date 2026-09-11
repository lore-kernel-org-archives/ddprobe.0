Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390FE4582D5
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 08:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789113634; cv=none; b=DMvVZKmsSns8SxMrBwGy/6aRqwVYzpfVYFRCph6OKQ9fqZCy7Ms8RNVzfCR3zCaDyE5gW8M3NpaacI9346N5lk1iRJ8v6RJbUitS2VOU03Z0JKhR2xs9tsp7A3WKeg5+ULuKH4kx6/f19Ec3TcdvEMTGdLks7mRvibybFam3VZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789113634; c=relaxed/simple;
	bh=S5zxNfr/slAHy07q/U/Qy13heAoLkEdiUBOJZ+jUrrE=;
	h=To:Subject:From:Message-Id:Date; b=nEZPXvhacuTff+DgsyT+Fz+TpH3YRbjSncI+ZTp5Fv5KMaSjqPxqvu3RPILygJo2H0DkjZmuarKIPDk1Q7jlsaAPqkAKAC1fiVQqB0MWLa6wd5rUM5JcNe+76pQ+B4oUmC9AXXrswFXjz78hVsFRXlV/KXuKvk13G0U1go0Gczs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=al1n+RnF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="al1n+RnF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB158C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789113633;
	bh=S5zxNfr/slAHy07q/U/Qy13heAoLkEdiUBOJZ+jUrrE=;
	h=To:Subject:From:Date:From;
	b=al1n+RnFJICpRL3GpFFhmY/J/4+QjlGn/8wbgmmP+JZrcx+TpKC/kcy9lTC+6GsTk
	 +ZYVJ0COQcO+nGrQVpiluup7GXqpl88cAT3QYVAEoiN5JrNnpUNA6uF514pECikYs8
	 ei4z5dn7s7xKTXMQfy/qFuWtyFpBDnlXZ+TO4kqsqpykM4NAG5zG7mzPcM1SgRrqLu
	 i885Jo8+KVCn/26M5zUcTldXFyZwU2YSnqSTY0MdknVNUYXFv5naaCy97mSJ2lxddt
	 27fXcaNL8iv7c1Wd+6jVOQ1NrU7g+7f7fQ/sllTZh0eqbzTDcp8p2LyuVu9YRtSdsP
	 g6Gxr+xhjUJJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCDBC79FA1
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178911363369.32532.15232669982744043983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27e94a75f475eb721d59ae4077e75697b9ff9c4e85d966c76ce2bd6d63e6591
Date: Fri, 11 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789113633
