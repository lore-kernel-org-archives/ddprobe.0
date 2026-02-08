Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27454225A35
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770573834; cv=none; b=mcgdzvKSyzpBTUMdFOybXaMawIhba0t/qwgfKtE3vmHi6tiYDkQRxCP1JCQWI9cAChF0wcSA9GDa5bUEJa61H06/XNbkHQifcXmWdz4y+7SoAYInRA7M9/SkHkRAKG5+uOgD1UC0/8rmJdsv+gu3kCROaZosVkwMOuv7gUbRu80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770573834; c=relaxed/simple;
	bh=F4AcShcmyhnP9r8cEzsF9PDwKGFHzVIwa2Dr6eqO428=;
	h=To:Subject:From:Message-Id:Date; b=o5pffpVuhJqSyON3LK1lZDgDl4rEZhzz418i+yZrrpYX8aAZMcxYuo9FAh0YChVpLSrLNrcJw8blav2TLdSUCHfb4pnkk/d8mcvIwWBzRuS+Am+5lmIY667LqF+FWx8q6xOa0ceHqseXiDsCrSSZBRnc1KNdWcazvO1F5QBavBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Asii4MTH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Asii4MTH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4655C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770573833;
	bh=F4AcShcmyhnP9r8cEzsF9PDwKGFHzVIwa2Dr6eqO428=;
	h=To:Subject:From:Date:From;
	b=Asii4MTHRupJ7WKLVklJEIbCUyIqqSAcu7kjg6NsCOmZMVx9JpsCqfdrn4c8M13zw
	 3aWRxVBChbAAiBvBUB792aF6Qc9MxiE57Bk0e6zBevV0/v2yvKZ13Uk8x4pcwBP3tj
	 oHrUpGI0/S/HPIIFfMIklHyRXH5xTA+mZLzaYmvI/61sgUtZujLo8k88RVbqpQkOyS
	 HyT7JdDDSNi3VZKx4lTJXaJ7d4ZwTR8DLXacJKWvRMPbtXyAUcqQVV6gfP76kpZ7m1
	 2ULDs2+m/x26WGwn3xAuoEbnbKWLTUda6gEUH4rP/LvP1T1QVrhDx8wvVFLYKNzMRC
	 YGJVxDsxQ5w8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A95EF06E1
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177057383359.10537.9559024622890691850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b91ed3976f2322f734372045b49f748d09e6ebd141a8ab34385451a059da57af
Date: Sun, 08 Feb 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770573833
