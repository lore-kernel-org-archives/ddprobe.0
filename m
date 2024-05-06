Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455661422AC
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 09:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714988543; cv=none; b=N9WTaEtalAyW5LigcN4RMapvZNcFAw0yLLhTC86h0yn2NSg8PWJlYnaCROL24S+k/4FqKGwaeMlDc3rFdMfQagpz6Z95CAoZiYMoMO2f7/vMBmxQCNkkUJ9PvMSAEmqmevZtpCUKXExa0jFB6+gyx4DmKdtOB8rIKWkRhuLtjNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714988543; c=relaxed/simple;
	bh=BKLWRwmtMJWmjxPydiqJrzQOisD+1/pqRHEnT6fz2H4=;
	h=To:Subject:From:Message-Id:Date; b=O3ipsqeOroi49j4xjGOwpQnVv8iDwE9KDp/IoD4NcoIz+8LYe4He1/CXjwbV2MUk5/zVEILCTVhZqLTYMDKywaMHkjy8NHgXxUjZ02JFvoCQT9FQ8BPgyskwqXVk+dHmjcmtv9ncuNJlMol10GlzHBSBjKPLjHxOtsD7adFAQpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zr/kN/dU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zr/kN/dU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA0E2C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 09:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714988542;
	bh=BKLWRwmtMJWmjxPydiqJrzQOisD+1/pqRHEnT6fz2H4=;
	h=To:Subject:From:Date:From;
	b=Zr/kN/dUEkOlUflBOjAyBpxUdTY7xMNz2hZodgxrszvKBzGkDNz/MUyNYLVerQQbW
	 LvbnV/NFcBscxSHfxE6JDyXWvo3lYmZDVCFQc/0JLkUxUUthrUWqG+Pr3JPYtAHAY4
	 EVlcVjOfkqbLmDRz1nk5F5Qi1Z6DayG60YbgseoVTKu/0xKaI0kyYE04BdwrwBJNzw
	 +ueoJWcq7A43hvNpw7zNbqzUbSLbI5/e8QLfFEXEh53ZoDStr8dF0ByFLH7miPp+kv
	 Qc92b4C8TtNd+Pq1rWvE+Nv4Ky+Axowlot4lWA2WDiS3RmzCD8tGeSulKgRpbApdB8
	 KlT2G5Al0YMLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C680FC10F16
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 09:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171498854280.4202.1827123720166561122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d7f89eb90df570bdeb834c591e2eec5a1c66d94a490e3d7fdb20b0ff47581e0
Date: Mon, 06 May 2024 09:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714988542
