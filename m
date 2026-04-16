Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B56F27B357
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776333454; cv=none; b=tz7AUH+erIeEeuDo1r8k/6JLnN8SnpqxRAMMxmuUiRV49dJ9KvdOvOpKpWYYeDQWyse+d5O9v8s8w6FPPcJYUZe3My8y337hbETwoNHte490TUwIdT9vK/r/0my2pfI+yw/PFwsC5yf1MX+MP/VAcDdrjXf9wbEG1APg2U1YUxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776333454; c=relaxed/simple;
	bh=JdQlNYofgPG3/ANnJX86L7fT88GUZRn1avwd8adSCqA=;
	h=To:Subject:From:Message-Id:Date; b=UlebI+Q1Frj2XsnINMY939kcZ+jqVkGPyrrkuESQWajJUSFzYxb7oPwp1hm4oY/3lurL53T6YiugAc/XMtnSqLeJxv3renoGvMc2sJbd70PfWO/9nWk/LhD82qL9KYVrRMFPizXAV4W82lU4Sl0/2fOOp5NWZVVg77nLZBv0ZdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u2k8+tdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u2k8+tdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA547C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776333453;
	bh=JdQlNYofgPG3/ANnJX86L7fT88GUZRn1avwd8adSCqA=;
	h=To:Subject:From:Date:From;
	b=u2k8+tdgur5Cqre1ZBYadxz44lGB+AD5+705ULHDYI46HjqGpSmd+Y/eVuEP4VtD/
	 hl1kKl2Vum9p6eGNhDBIF0brQ+aTPz1eYkPmjCH88+5Zidl3AmvgUfEzkRbiIkL31A
	 XBW1CQ6TF3zIhCO41g9CohCtgMpAD2XyqE0m8FhDOCMwpZMqNyGHH19ylTRQ9T9cbW
	 fv38MBvHQW0YZCMNJnXoyM1ApbpJ+u2gPlVIF9RGgapFNhRAWCxRmLag52dRfvOHTL
	 +SHFsD44547MXuw8/NN04JRfnl1QKBvfU4T5Lifq6qWAFkCYNI5eAF9K1c/CR55g4u
	 jKVgS1LdFlEQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA363F8A154
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177633345368.24321.9533562697582943971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a7d1405d011456196970be77dc1806097d2ee695138ce46ba828f100a907a35
Date: Thu, 16 Apr 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776333453
