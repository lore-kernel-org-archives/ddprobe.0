Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E39138B7C5
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768303434; cv=none; b=fK9sev95+aTWJeOTh5FC8T92na84M4i4Fa0lHKkTMZ4zABqf5jtcuZ9ccOfoztoupPaX27/v4yVkp55r7RsoIRxftz+/HIQNtPtS97iFvVkEhZijsrkikQkwJfn1S30upEL/b6u8FIPS4XVXs41et8tDn0c1j8/eQXEMDREnRCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768303434; c=relaxed/simple;
	bh=H8pLSKMz5X02nt+TULa4nL40wb5Tjq72ER05A5HGQfM=;
	h=To:Subject:From:Message-Id:Date; b=jM13PPpLUYzWleayI2TE70cc76suq3y747sR/FnShEpu89/GgQQnwz4mjql2QFFexswh6zq291vaNG00v984JNHbcB/ITaUHwCvAn1nOD38pAfYe23Cd6pDkMJoDL7CdXbJniSJd3O/nbNzYVB/Nsg5Se68tJy+HixMv58TPhU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjZlkl8d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjZlkl8d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDEDC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768303433;
	bh=H8pLSKMz5X02nt+TULa4nL40wb5Tjq72ER05A5HGQfM=;
	h=To:Subject:From:Date:From;
	b=BjZlkl8d+t73qyU+lLJnKgBJYcBvMG9Zay2hHIYD15dKqTm7TWmEQRhKRiUyfCH/w
	 aOaM4gAe9/5q3cpkWcUsBocFI60qspXsbbgAjF+b6DHHiN3wvwkVAOMIEHWuECpzf9
	 H9zMUPOi61jiEzlbJq+1QhpVzfkPDFM47ouEOf+z/dqNtTegIDvJYWRE49wUs65hK6
	 J1yTbBQ0N60nkdwTuBw3+UpMmRxAmeZC4l6U612L+R66ViIvsKxJonK7SfUXnExJPG
	 /5glUawRmVbOXTULmNKLIfX2forjWuks9zxsFLjonXxP2YsAaem6WqmQCV5/9lZO5v
	 BT4VppF1XfG9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916D4D0C857
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176830343358.10198.17417474251917340926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69face1b4577dea5ea438f684425f8c1ae95888ffa488350b51e14a1e7e95e93
Date: Tue, 13 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768303433
