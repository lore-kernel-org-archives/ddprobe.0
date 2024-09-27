Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0571C1742
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727462754; cv=none; b=BtyWAHYzUgP0yfcLqgigGSiEQZnJ5BKM0eyGay0MBWVfXxotHl+zMVXz+xfNoIUL+YGpraL/3l0UTr2p4z6eKhEs4tJgBGiN4ttd4Ggk/wFrC6LmNwUcM4hMu09JqVi1uN06EJ7TZQ/kDpLNYw7sS2MoHVha7aWp4sqf7pLGp9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727462754; c=relaxed/simple;
	bh=jMlBbuQlSGilZcoGax29k7TjVtleEy5ei0L+HQkc+90=;
	h=To:Subject:From:Message-Id:Date; b=MqR1wRwnUdDywdthGdoJ5Do+V1+jhB/c84XZaKIV3LzPBjESBzTPRsaYyhm+UcNBq86t7+zKgnTtEJWocrJ93/v2EuZSls9Xr9x4McZQ1aTxnKbjsGPtDa6ttXvDQ+WWFYf8XtMjvgIHVh/K0GXEobMur3rYau79XtD//rOIZiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/c7WIfl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/c7WIfl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD84C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727462753;
	bh=jMlBbuQlSGilZcoGax29k7TjVtleEy5ei0L+HQkc+90=;
	h=To:Subject:From:Date:From;
	b=K/c7WIfl2xIIsKY9H3X9PwjlLMmW/pKOtta102A7UnjiSaTtrdiWtIJw1JMdPvFlW
	 14Nj27oqdMNphbuWATR4khGEtUHzCvmKp8x7i8pAzgjUL5tdSQ57tKgf+U7L33q6vr
	 0aNAq7XEC1KKJoPeHKJJJAPiYBy9CfAYK0n7QWKTRef6WnASg/v3Ii/nGWDNkdMSP4
	 vyhRNtBRworxzsZZ9GyNM76xNrCaYvPOHJgPniK3SqGjKRILz+i59mGLA3HAlN6fk3
	 sX9hBlemkvBi8unQSgGslqGs4x0dy+Yo5oZC4iSo++r5fOtwqNQ8GK8ZVYPdKIQKA6
	 AaaXYhoLM2+uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981D6CDD1D3
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172746275358.13187.1530673741675252504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d8ee4b4aeeb7e2b84fd7c4263a020575cc150f500c068ef93dd12950384c557
Date: Fri, 27 Sep 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727462753
