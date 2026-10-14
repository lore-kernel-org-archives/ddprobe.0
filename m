Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E5894734FC
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792003234; cv=none; b=mZGvaVBp1eVmZvYlxslVmFg2s4gIZx/4S8Imps88bmT/kWk9uc2ig3QOEEZr6HP7BKdj0JrswZ/NC9Qzn88M41IOKmNkpKVHxF3tTiL3KYDTBnXCMSTRm//+Ty4uIGf52IxT2MFCafNE3gE548RdYV5FHO0ZZoQd5BMRoGR8M/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792003234; c=relaxed/simple;
	bh=UOu0LEl6XVkhQ7Z0KC8cFhk4VDL6kl8ehRXyyszOJPY=;
	h=To:Subject:From:Message-Id:Date; b=CZL7lYTxksy4Dwwqw7nXyxidd6vCITZuMlqAKhGlpDXgxfRDVRrs+rQwfrxRj2tikXyXQGCdaedEBRVB8Yfvzm1mJ/HHBvjeIz9p6xuZAhQXt14GEf9/hfgc5HOEMz19JJXodzVX32i8TOM3mJCBAylxzE/nl5SEJhL6kCTtPFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jM/q+kni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jM/q+kni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6EB2C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792003233;
	bh=UOu0LEl6XVkhQ7Z0KC8cFhk4VDL6kl8ehRXyyszOJPY=;
	h=To:Subject:From:Date:From;
	b=jM/q+knijDfIwLOpJf3pY3VL2C8L9tHMqhVP0YhRuYkZfOYxlCsHY9TrYoSE/qv6l
	 Xak/nRR2S2L9Ki+VTohbpxTckPvW81z6Bsqqw9vaWVn28E7Ul6pFN9HPkNbXLDME9b
	 OHm8vI3bRFwdbIleeAIH2A9PexP264Wuu1jNenFg1pUlOOOgrleSQ+A2B+Abc6HfHC
	 XrXsP7I12nnHcMNL3P47ac0J+v4WQiFPie733o9+eg+hhgog7rD+aL/aPd1BRXNizg
	 w47sC9SpRbeGQd3/AnPpyCN6HGAAQ1keqG/JDc0xUcpKnWbdJnxQCGswgWyi6VosLJ
	 Zp+JPBzgd2CPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBEAC3DA7A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179200323369.22511.14581096328084557522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6713506d7dc28e7c5f7510cf21301f71cae0be7cf5d1e3a901afbff513dc3de
Date: Wed, 14 Oct 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792003233
