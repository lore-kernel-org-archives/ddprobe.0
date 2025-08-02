Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BAD1519B4
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754176194; cv=none; b=Aus3DYG2mid6tnKX7N8mMHqAjtWyGs3GluD0+tLdtAXoJdQV2LZarzI2B9t/DvMgIei8MvWvQQHEBnDXl679YqNzrmxlbgn30Wtr0vvXVYlr2BLh53zXw63RbmYa3Z2Ss6wzSpGXOZrGzZH5nV6p2P0HlmjjYJ9xQnI1k4egDKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754176194; c=relaxed/simple;
	bh=1Uc1iXOknX8KvlkTVppMwcUcGSZzhDjYvGg1IFrnIYw=;
	h=To:Subject:From:Message-Id:Date; b=i0I4GAttMnneba++Y61xVUrP17KABjb0uMdv8lTXhjHk3MxAwi2HhI533QEMmxzo9lbc06kvaEvlvR/CtxH5SRHCLuhQSBIPnQe/7pYZTTKNVmSrnJ2wi8B9UFuGUUwuv7hIV18iM0qdReql4cMXrkszezpeAukyns4giPBskOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ghaJzP4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghaJzP4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16A7C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754176193;
	bh=1Uc1iXOknX8KvlkTVppMwcUcGSZzhDjYvGg1IFrnIYw=;
	h=To:Subject:From:Date:From;
	b=ghaJzP4YnbsS3CilV6xgs+QSwwkylFs+JnWcyDvfvstPlYlsTCVPHMrI++joDumF3
	 zzW4s2mkkoe/sW+nXI4R1RXmgeaF4qcWGcBJ2/SLi19U+oudE0BYFLBdWWrq94GizS
	 QiMcxxfrtelBcxCg1eHgSSOlFGqwwnjE1ay245P0zsa6K6YNuDVmkrIZvRoJtRg2Gt
	 1gNCCq4QoOLGScd5BgFHI7siEykHnxJRqdNufeFWRxy6TCB+8xsClhzTXZcJonaVRz
	 Xs5/F9JaAsAvRh4faEfDBH8edgAkwGVQxb9UBHhRfj34gfoJt6Qnn5UpUHVrt/cnti
	 /2wItHayuevyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7DEC87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175417619357.15919.1397906013221818025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f2bb066fcbdcfd9c29a91aba96b47b4fe78e8ca109c336bf30e7a9b19adc8ee
Date: Sat, 02 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754176193
