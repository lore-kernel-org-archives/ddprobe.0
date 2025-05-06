Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCF74B1E7D
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746571794; cv=none; b=t9+8NqvDER05dVAV1jAPrjuIRW7h5JFWB8kf9L9o206OsVhtM96XGpCq1i+liCaey2HdT0n2Uouj6ENIFyVGyc4tLNsmRVmTk1uHmirtndGQFPqDKPTNS1T3JMeb55IyOWrzshYUUxGLBKVl7Fw0hZYo8l5mM2ViS3v8mmTp6dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746571794; c=relaxed/simple;
	bh=nno5RGAkxI2U6PAqjn5mNylcnfEYDgBjbZqSaBpZ4jk=;
	h=To:Subject:From:Message-Id:Date; b=PLr97oEWJSH/VsYESHdD5vNNMulOS3HTJMztx9PTI/sbiFwzq/UXWUcNTiS0Lp6MolofztczqbtqNe7JR+yAiwzp7JeGFBsAiEhs2dvXQUyqLF6hlZbiUXJLDip98m8+cKbIiFADN9LAhGWEUiwzsGIAwcWjeaonmuqA5uBEbDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKfWb1yE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKfWb1yE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2788C4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746571793;
	bh=nno5RGAkxI2U6PAqjn5mNylcnfEYDgBjbZqSaBpZ4jk=;
	h=To:Subject:From:Date:From;
	b=HKfWb1yEcl9F3z4aQ5eVBTECU0/LIOOjEtZfaUjOosdfb6ldZGQo53CqzzQOKibty
	 f6LbpX6dnM0NkgNHlbAIBcNqnqd3hEERV2tNqx0cpLdZ8vLhfzkrRRzuS7CliNpS7I
	 YF7aNQaP8q2Lg6Kk8fTYg/ELFyjJaVzwi4W8ZA7364iljFXrl9mJNzsPVutukJ1Rul
	 9mcv38G4JLjWhBinmifg92u+pCM1HXSBPQKdnLAnWmlby9HCkzjbP5PBfxBrxAFQw1
	 XhDBeNLzRbePv3CRobsNSQ03qUUDJuXTJ2H+pfZib9RgTv1K0p6ShXaI0k7RuGrGWS
	 OWJm2/2sX869g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F202C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174657179357.16050.9747933608841916216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fca1c4c2f1de69f5cce846185cc1a286452ff2b68b5db7b2e69ba4c731bf4f5
Date: Tue, 06 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746571793
