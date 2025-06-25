Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20455262FFE
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750858194; cv=none; b=Yghe10kbFZ4JcDGxCIrwO9CVz7NSe5UlntIHYrJfXbfO0emm9oLOlU+ptz09U802xUWkN3ff3XLYVC2cgnbuxYnKKs1lrMFYEamPJGpv8v0ORWGcyt3EZwZcebiKABEJ0SI3ja6OG0LkuSfJD0yWgEbufObet2rSTRP2B1KCaK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750858194; c=relaxed/simple;
	bh=jRXr4WNbyYch0nVf44OJmAql2x1HLLMTtK819VICgwA=;
	h=To:Subject:From:Message-Id:Date; b=QuJ+lz0AEtr+0kSf8/nEkkRb3urBi2PDP9p8A2uxpH40+tkU+up8HWDtSiqWUBahKt7jze0X/jjNkRsdKblNgR7SKyS6OUBGva0E9ZTV/3Lt0FTunzupMPITfHsoRb/4mC3XuD5QfwUEH8HMaoDByRgDmn4hK6X/KSQxwsoD+j4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXNPHr0z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXNPHr0z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F623C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750858193;
	bh=jRXr4WNbyYch0nVf44OJmAql2x1HLLMTtK819VICgwA=;
	h=To:Subject:From:Date:From;
	b=mXNPHr0zNb9lXvIRBmijPNgM+FRySyqgX32PBZoj9UxGAS9hGf87v+BnR/cArRaEA
	 x5rj3U8yUswhl2Xp4rUeZK5JcpBBABfcK7RzP39paqvaGxNjsIwMdC53mTDpIonIFK
	 XV2pjQsGEaQvbbm9ZLqenXLrCeUSMcRsvcZjqsmfyxMVNvmclY/nFKfv4MN1BH+3TG
	 Pn8wZ5Y7fIrX06agkaqRTbrgXGAI3ziZokH3xSMSxlarPsQKwurIzaIiQvzpgGhCAV
	 Fe4PmaJYIH8UsnDsDY5Ux3mMVmNoWngxO+FHnTb5kKq6ONa8aUcM2SzxoPzvCb/Bkd
	 /0jyLXAFmmZyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F50BC7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175085819357.21473.11130453528912974230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c7d0e499a0d78e9c75fd0c3f14b70178dba608f80bae88dc567f8915ad691c5
Date: Wed, 25 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750858193
