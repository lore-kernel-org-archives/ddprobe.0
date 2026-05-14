Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C39388361
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 13:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778766634; cv=none; b=iNAfaBesmxfOwFlY6YbWPeehynzuEwFi5BbHg67TBi7Qvt4UvGxAD7ngvHwle3hPSaSaBnaAo1ONCVcpWhmUflx6bZDBcchSz+ncu3Q06fjQ6NaunYtbCYNn9yDssK8Eu1wP0iChGxWzhnUJY2sNYCwMyByOXDNXlQjfasDf/uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778766634; c=relaxed/simple;
	bh=J+roc7EfVJi6ew4+l2Ak9+HpSdkXpKMYaR7FE563m3I=;
	h=To:Subject:From:Message-Id:Date; b=R4ph+WxueoNuZtVu45VkfneUKzccgA3dEOZQM+za9M5IBfNQMXQC3JjEvUMU22C/7T7vVTujdUfgqym89jZyevPViB1olPUSanK4xGZ3nSs6QZlZRKLd5jV3hoPCTCHC503ZrsVBbJW1Koo+Z6Fd7+iI3AxN8ky3jjRzvZp/siU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCqqqHrb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCqqqHrb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF36CC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778766633;
	bh=J+roc7EfVJi6ew4+l2Ak9+HpSdkXpKMYaR7FE563m3I=;
	h=To:Subject:From:Date:From;
	b=BCqqqHrbu48Z7aeFPT6N+eTkGOvUaGm16VFY/Pi1Tz7mgAu8mwDu7FZFrSZngISTC
	 tCLAezbypaLoehpj3Aiis9HzJekUpGB13JvTaN+r65Tp6b8Gz34pekC7SrEevknJL7
	 ODO+imyCPCpQ5QUfDarQAuYaMqqOUSONiMgFVGPrbuyjqww0mfDXix3tZ+q3tNT2Vj
	 uFr8+WAtVWmlMuhkaho0L+PoEesUalfiQPXLC7Eok8t1Rg/fWJm2RHJcbh7zyctrF6
	 bi0Kse8vt3iF1JgkzDn36wEiGavlgasYfyz2Ef8C/kODT1Ymn+pJq7h3/AcrnWmipi
	 4DPowLeqt1zVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8D7CD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177876663370.12619.4701715709857014463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ae3d34fba5493394168c47dc14cc059d86d3a4f8dc0f652adeb2ff60badd35a
Date: Thu, 14 May 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778766633
