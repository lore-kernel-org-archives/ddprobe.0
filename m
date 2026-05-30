Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81EDF2EF64F
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 11:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780140814; cv=none; b=Ux6hyBv3cBDcCtrRc02KD9kXN4oYhRKD7ZebI/5BmpkisEkV0VxbwZg36FBjp3la7K0Ao2CRRBlgQIOt7fu+oZwhrjAO+os69iSqquX0argyKsNl5DbdBrGoTSzXl4qsDMpqMeMZTrSiX8bG+CEiO1KmwCbRANdkVVHkd1TdmAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780140814; c=relaxed/simple;
	bh=KQ/NzKIF26XuatdWY0SrE9ukVD4WZUYfGQwaICh6vL8=;
	h=To:Subject:From:Message-Id:Date; b=LPJ6j8y+p0yWzOgh0vGcpZnOtMc+juOM3cMgyuSi4DMn+gEoZ6UZVifH7t0I/fqo3t3gyihRscpuOKfh/hs8/SAVIyNkv+WfKjgV3wz8pSUNgrW2dEXgTCZdESoYVtQrFFyygRJedvpyOl2zs8RfZWDd4m+S7YItpWXk+aWXnDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0EOO/vl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0EOO/vl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 18F3CC2BCC6
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 11:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780140814;
	bh=KQ/NzKIF26XuatdWY0SrE9ukVD4WZUYfGQwaICh6vL8=;
	h=To:Subject:From:Date:From;
	b=f0EOO/vlAtbHeRUx4vI19jTXhfU6FbFsFLoKE5qFfZnvVdbuViCAzymGlMjRwExUO
	 Gdq42MRkGS/aTfLrJLMUjD++vHkTtVVRr6BRGZxHFdfP/0x2MFNekSBkOnKDvntdcI
	 E6gkD4Gkn0UWm5zYvVRtMPW4gYmIBmzbXlkG8UBwENgYiWhwsqllud1OS+9HSXw9x3
	 wFbHOM3fE+YqNmWN9oFtlsjNRMSDTqKvq2gZfYP+4LT8pPo0sQu+s9j1QgkCSpnW4T
	 gzkmiuANnI3TEnQRRk5WosDlUt0ttBKD0Hg4+zoNA1jRko8lwKg/QmlYVD+poQESZ3
	 4OuWGjtOLuH4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0926CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 11:33:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178014081382.486.5764907895941865769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 916de0eb5293d4f51285d8026fdf465277db4c3c9c20d299f31d8ca3e4e1a3b8
Date: Sat, 30 May 2026 11:33:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780140813
