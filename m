Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2741328A1C3
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749230394; cv=none; b=ushtzcCQw/laAkUWE4U8jx/Olzu6t21SDAEsQ+vFXQo0Nt2knSFtUyGJn3PqTh1FiQg7epyqahMYM1l8PDB/zoRxJ6Qgp7XNhLlmL6QyEoSusWNRZ4mQAdbDQwAKRKG7Soo0PTIhq4B40fjK575Lx2j6gDvuA6MtG1MMGPLrDXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749230394; c=relaxed/simple;
	bh=wNkVQltxE4Jt3aAckhqAO+ElWGdWSVGX5sBBiWtmIsM=;
	h=To:Subject:From:Message-Id:Date; b=SKaD7Ov8UycSwa87E3cfa8I0Xnk+corzsFU6EWdt55a+mHAjtpcI6z5yHXTj/B20GLKgWHqnUtpoQSb3PczUGzUSbJ9vANCJJMgV+kYjoH9/nHW7fPxd7Bu8sqMga4e39kUgMnhxyedWeF62aRYUHsZPxAR5WrWHLQ0YHZFIKP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stEQjzD3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stEQjzD3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86CBC4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749230393;
	bh=wNkVQltxE4Jt3aAckhqAO+ElWGdWSVGX5sBBiWtmIsM=;
	h=To:Subject:From:Date:From;
	b=stEQjzD3KG/T+GlvPSSh2WQHWRmdZy6IapGxJMNjx6KZodqXxHFSswUPZYspBU/Ae
	 CFBuO4Ol+ePbnB0aNayfle16/Czvd+xJNKOF0PKA19mBs/FOHMmiNTR1L64Jl2Bmj5
	 5baV2CZPWGRK7ZSyPPG3Y5NoR2pv/ZyWn3hmh9qzhwTZgTmFZYFh1ibN9IKAN6tiST
	 Vf8s1SVI0aS/AKO4LUzVUp1DNo8Fz3JVEf5Y/NPxGLZRB167mwLZWFmVQsOr0xyjGF
	 oQ2lkkOjZHqQ5AEw/hLRGoVN4x9A1YLNpBCxEilUFyFH6EPVEg6U/L5iDcCjkRwmtg
	 ASg2Vk4pyOL2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915E0C61DB8
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174923039357.26661.11518489801404917879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b556bce4531014fd208b2253c973d8ebdde366f42ca8d04da76aeaeb10e9bd7e
Date: Fri, 06 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749230393
