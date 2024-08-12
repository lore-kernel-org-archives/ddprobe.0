Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 828943715E
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 06:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723442754; cv=none; b=jURUZtER+nQzUdAkuZBFh5FRKOF9+BRVQljvVXQXr6Eh9Y43vA2/mAWwhu49be0YPFF7jwO5HQ0JHFhXfe6uVpFNctAM0fHSKLC68AYDNM1fw2dSN06e+9CekUZi+teY3EAnqqaKxnpQFOlRlC+pbCyqPlBTgFphlOo5wEnXlAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723442754; c=relaxed/simple;
	bh=4IYRRDD7kw9m4ylTqzvgnZqKBZwpcnI38OdPTsKMdv4=;
	h=To:Subject:From:Message-Id:Date; b=WmHC4ZSy/ySA+kBwB7sNr9k7xzV8gMelR7yWuV5CUIwrlujpe9+i4cJ8QsHp3d1CWBVzLAGuq5RVx6t55OmY9OWXT63g+TkLa2FMIvWVKE1P1oVYZpmH92c2EFLWwY8gj684+8hrIWhT+MUuuxfu5y+lzRiAYuPMVCF4bPn/2BE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WtUZ8kQh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WtUZ8kQh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFBFFC4AF0F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723442753;
	bh=4IYRRDD7kw9m4ylTqzvgnZqKBZwpcnI38OdPTsKMdv4=;
	h=To:Subject:From:Date:From;
	b=WtUZ8kQhwm6IPRE38iFYuLlLtEEs2DnAIydgP3rpLWjiAGdsBbacmxhVd5L7OWTtQ
	 LeqCWBbdJQeBJvWTMSUmcdoR6QcVaUUsnHNFyLrybfXsIVCgiodC97wMyEfRsHN0c+
	 esH93m7MAePI9mnYNmS/QXzXEeENXQQGN7YBMXVRDO9dIetxutZu11ao5V1OQEITik
	 95EfqO++YDaDUZqjeAYLCJ0NhtXJR8h7o+7PBRb4sfwVyPG+OFvfwHF8sUn7S7QC06
	 QvEF+TIEOsGRjISM6I0GZnVMvAZdVojLl0v6gmC8YGisGVB6i5tywGNfzy953gWcoX
	 bMi+BltTa0J8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA9BC52D7D
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172344275362.29503.7606907923934481837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b97ebf2963e62f877bae67ba453a5454e2c397c89bc241c62cacc2c2d5b9563
Date: Mon, 12 Aug 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723442753
