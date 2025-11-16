Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3330524169F
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 20:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763323314; cv=none; b=aFxOfk2W715Nzmq2RGxF/jFDCxnQjLvYCDbDtzGshUSS1NYqF71suHk0IWP0qJNC4/1dkGF9ppQUqNaWYyF7oaChq0C0nGZLX7WWvD8VVjyXBdArlsl1ipkEU6Q7J7wuQD+GuxzsL9KElWPE/aI9fTXm7iTpU4/7VS2tRine78M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763323314; c=relaxed/simple;
	bh=2mddWfGERC1VLhVAPnvyPMwaCrsN+KHGJP+YwP8kpTg=;
	h=To:Subject:From:Message-Id:Date; b=VdSj6cv1OyJ9nEsJQ8zMeJl04eLd18y2E/vEbUrrE6ttM9mkuOVQVVa8Aii3vUGSEZZKRsw+kScIwXBOPvPa9MFs//dJsp7+t5rfuM7VWCk2UvppwqQ5nKvNK6mDNRGknUtkKjP7qESzFPm8iUlmfU6TktjIoPxudZ4fuz3few4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADCtWh0E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADCtWh0E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4158C116B1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 20:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763323313;
	bh=2mddWfGERC1VLhVAPnvyPMwaCrsN+KHGJP+YwP8kpTg=;
	h=To:Subject:From:Date:From;
	b=ADCtWh0EQuz9dykcI4ssNGT8nxBIhhYY9ozDMPcjyjpVVTApujCldHXuMHobvxK+A
	 /h7qBTzVESeiKTcmSozjtTJO5kHKCfcF2XJIrMhWuVTJk+DH2oeZBtlcr1hj9xc+xW
	 AreMxDSaelzI+MF2unRE6YSjS2Az2jscVVHspi75zzpZ7IsSWbG0r0ggM6D4h8vud2
	 zDg7Zm5y08kVi/3bM6BWF3HsLs3Zd7zHN8Nwhg/jNnj0r6vWiNdYfXKOu4lUcwOXP5
	 pd7zWKdc8hTlb2pALRm0w51DNOf+xqN4260MXdazhOYw8J2BhyDzIk4iQzNNFUwr4f
	 8v9psVJTZoIiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C9FCEBF61
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 20:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176332331360.2701.296286929694126690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6fd5c4f6debb2499bd27fa55a158821ea95e8bc0883c1dc0d460a19746c8788
Date: Sun, 16 Nov 2025 20:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763323313
