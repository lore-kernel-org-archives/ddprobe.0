Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6045B1CFBC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742227194; cv=none; b=AJbBr1Ph7kDLkw08uwn9ToAm7rWQ9GrviK++xPGD+ERRhdfukivzta1W+dSkmZovPTgtZyzSACwYTOnxetsAjDkQlMpEkY03z+zcfDp8On0UYlSoMBol3G17smoyTwurAtkUAYQ2W5jwsEC9gdhDDhdAIlW6VNxlo9vUjoCEewY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742227194; c=relaxed/simple;
	bh=w5gIup3Bca2kJspzSlc+Jh7slzOsiXUHQAOT2QsR+0s=;
	h=To:Subject:From:Message-Id:Date; b=eG+IMRBHT1KL9VYHCl3bLZMH/NbvK9Aiwc4TbPuRCV+bXLH6IQyT7UbL7ggGGvAN7ou5XU6pgANvec3p4ddI7kJf1L1ab44z3FxC8pJ5gepUAPco71Q0IoWtdHYuYKfznfK8SXE53ioo+QwXKE/LeIt1eCuWo3xB8bGcEXyJPsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iw0mNOAF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iw0mNOAF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C873FC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742227193;
	bh=w5gIup3Bca2kJspzSlc+Jh7slzOsiXUHQAOT2QsR+0s=;
	h=To:Subject:From:Date:From;
	b=iw0mNOAFYmaaMbXU69XkcPaeI5usEfnIaFYp3zc06ZVsi6gPsHpNDM6P3B/r353lo
	 1oGxAAPlPVPJB64/ZUBciumy6IIQfdcOJno1nAl3/dniD4joFm4HmpGnWEBoq0wIqs
	 WAn8hRdVROxzK57LFbUrHlFOGujpf7uvhTO10ygGVBSX7lJnUNtLJGfCDUlWEJYzZp
	 133Tzlr6qjlWXu+ZYIX1/aApbVhGWW3NN/c/h1X9ehJfjaqFhyHblvTuMbv9uUxyOU
	 ZFeoN3SIG2z7ey+9cSMy62sJEGUboTCQsXFBa+MrzIMZNXqjHZdCEMD2jUq0GE5r3o
	 dT9/0T7/Bg/9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7902C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174222719367.22111.14489855702337052419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f28507e2c410699e7c27d52f9913cc67a34383c5f90ba809f948c888dd006c4
Date: Mon, 17 Mar 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742227193
