Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF194C6523
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790283634; cv=none; b=mzo2idPxGpycGOR2/PlhdjYP6EpqrOHs6l5o81/4EcfGIf2DY8Kni+KaSu6eH+JcfW8UGle9VwaCSrQ/mlZ8q4KZVjXRuSNRViA+DZ67CNaFVtLpkbK2oghZfkXJadyCvcp32VgMgGLQ+Qw+bbpMpMiWEXifZoiun9uIa07ReJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790283634; c=relaxed/simple;
	bh=Sfqt153G7NWPLrV4UiBmKmzrWPJilxyyX7BAZx9y3Xc=;
	h=To:Subject:From:Message-Id:Date; b=rQwDQDO/PyYm/rcFbrRMne50FXMpuAeAJJ2j2bYW/1b+DgWJl7oKN8UbeaNowojiPEYHoMYI25q2mxp5auSEUcJlj1/iA2m6RtS52ioY6jn81MFIHS0V4sYRVroo8Yp5UxZZYzv45sX9fLJIhE7LiBK/BdBG5hA0/o4tXUa2lzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvUkOvHv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvUkOvHv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEDB2C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790283633;
	bh=Sfqt153G7NWPLrV4UiBmKmzrWPJilxyyX7BAZx9y3Xc=;
	h=To:Subject:From:Date:From;
	b=kvUkOvHvqNvwr5WytApY0bPJJXXyOwFdkQ9qy+cIH6t2mtW7OIFuaiVGI4VNh/iQu
	 M+sx+7CjJqBLGXUg0TzbozSVhCXbhx5VrPAFve/x/FqBXvFgVHV1PJZZ0WUBR580gn
	 WyHRW3N3YsL05AuMJRwjBf2K3smGUZMQ1F3XJaTi8klRYylk9kaSkMAECy09U74p+F
	 PCjs2LGGImzRAcB7W9Y/Q9weiBFRJUKRk4BMIJTnbNO/udG4z85ocrbhfMJ85hOfLg
	 iuEQIXx7o+ZksIXfSfduPstekCa7i+N/3uWCfPkHpWtXDlZz7kU9dbB9Z4r8EY/oCC
	 X9CoXjKbbC1kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B91C1C98318
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179028363372.16827.1036069987206262925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2af000baac65e6c52782f9ef55a6ee24248c9b958cf6c9cbede5b0c444aa8ee
Date: Thu, 24 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790283633
