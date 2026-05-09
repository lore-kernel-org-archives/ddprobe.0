Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE00175D53
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778291254; cv=none; b=p9t5PiCVYMruRY+WUewb1tQYppimyuj9rYNaGhyJhXPEAYzDZkT3LmZsAvf4tA44ChC2Iwa3aTpk/iWRSJyfOmSORkf5sJNTD6Y3GgPOAsPr+uBCOfdj8Nmm+hEPpHaKPbCgLHMjmeMs+uWNc8voymZ+cXeOgtR+tmJ2MsgL4qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778291254; c=relaxed/simple;
	bh=0EapjGsi1D6+X6DtvevIpZQMwQokuUbqXmyveqpMr6Y=;
	h=To:Subject:From:Message-Id:Date; b=WChkLbcVBrPP83yRs4I0eWG9RHdeJBKd5nw9DErBhVbuzlJc61SdzA/swjJuSRiKFsb1rZm1wzSmmiz1x+J5S9VBFofjiwQwGUc2rL0qB1vz9Gsn7c8P3yDVzLg3QMZ8efpAb8LMH1Sha3nP+RE8JElgHSEiz49q2jB3062Yu+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+aLqI30; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+aLqI30"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9278C2BCC9
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778291253;
	bh=0EapjGsi1D6+X6DtvevIpZQMwQokuUbqXmyveqpMr6Y=;
	h=To:Subject:From:Date:From;
	b=E+aLqI30mIiu3FvFco8wyXdVoHDmC5ADFEgiULSJMvmdFHPj6W1z8nqymf2EoXgl0
	 uWjmynVHldfpRD8wnZcwvS+Y54MMJVhJw6fzWa9nSxMGCD2/ggOH3uOnym559ChjNl
	 PvGQ3rbgdN5LqokOfeYWsJspqe1tMi3mR5N9ZNMVq82w2xA9yaz2ovq8nrP1jXM3US
	 jj99Z9ZUTx5bpnKHhwKj3AvoHhObeVyeUHkI0NknwkrKimOkkOUINU6ivTytFNPKIr
	 YiwghjO3Ppvf5EdY6b0GrEnM9leUjc2fHFrNecTGeNZCxTjfxfhjF9lVSrLlX2af4r
	 CCp/eYpnVGQcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA69DCD37AC
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177829125368.11625.16970441298061037752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ec4a4e921e89da9de066f29ed92388c2e8d1b5c7d39bce66f3e6dd8278bb95
Date: Sat, 09 May 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778291253
