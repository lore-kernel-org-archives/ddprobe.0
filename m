Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D70918C32A
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729283154; cv=none; b=YVsXhAdjjm07W6ZtBkfPND/R2rz2UwZ76uhAu29hcoc5k7bMIBlhLLGBx6pXKb/hMrm+A3LW+p05zIQ2e7N6XnCLAbp2RD4i+KJy2vCpSY5shYQ57Lh1JxNGn3wZXCZhUaOrID6gM0dZQi+DB3Z5X0Vjego01zanIrIlLZhbhZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729283154; c=relaxed/simple;
	bh=vx3kz1G+abQVMc4mWWsTXrEnISVDJ6gC0kyeTjzg0sU=;
	h=To:Subject:From:Message-Id:Date; b=pkJG1ePLr/9UliW6x2t6H3Kpf3Y5mvWp7Flvy/VCW9vWC7IVbzgGduFIfMv197fDu6TKiW1G83dFAmsmyIm5YtPTURBOdxkkiVZfpls/0m7GvW6usM/tTEBtVwbT21Q0bZR1uVEq23Nch0Hx+DbPcc7dP6QGz4sEw7YbvQpTHek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDzUp7Gh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDzUp7Gh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92D8C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729283153;
	bh=vx3kz1G+abQVMc4mWWsTXrEnISVDJ6gC0kyeTjzg0sU=;
	h=To:Subject:From:Date:From;
	b=aDzUp7GhfTDLQ3UhI1jNZgZKBmdyRoDpc4EE0ZylwEE79o/YH2g5I9eyKLU87U76l
	 mp6SGkQ4Mz7BdvHxo1OJMxs1BThoDiWo8A897St19MCEsWO0LZs4BpJ6RJG2wEpndV
	 RhEnExzKs6pt0dtBNbjiyDeMYzkj34FhkVpP0Fo85+LVb9EE4Zv4WJLvJ94X1P56c5
	 pgh9ibKrqQnfi96fnCClfGCP2kixKZuSvaQzfcaH9/qqWXBpozh/I4oDoRwd5s26ON
	 NhnEGnRAugKH9c852Q2IyzgOqSbeXuATgUEEv/i8keXhWLVarOG2wt/OGMlrdOdfvn
	 HULTQrc0bQsPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B3AD3F28A
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172928315361.12812.4355756394244599235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c86aadded58ae4127b4b858d8d436100fb444ff0757f96def098d04f9922e8a
Date: Fri, 18 Oct 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729283153
