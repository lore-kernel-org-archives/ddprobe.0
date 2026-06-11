Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D19B17A2EA
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 00:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781136994; cv=none; b=ccRMOEMLWPNraH6PBUoaiRjMV9lUTCZEqK2nvAdZSBfIVDUiBqKJ9fqCc/G6qxL3GZvOUCSYvmfUjr3Xynpu+Gc5dvgMxMkQ/VL/zTx3PbHksKhhxYijY0Ch2hoh1jvMoFEVPHRCt92V4eJZpUWyQXZz4idQvdk+L8wD5DHjNCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781136994; c=relaxed/simple;
	bh=6E8gdJBIl6OsD0ZyZY7SfwGxzjo51RDz/CthukipFww=;
	h=To:Subject:From:Message-Id:Date; b=UtET4mpQaoPE/fQtIfOW/KRhZyFX7fqBEb5quJzIhbyZr4PwE4zO/VaUbUbz+MAJpLQqcQCPtG0AwXKimEx75sMx48vDT8ixDiBt6VygQinLCTVfa/KrYl5+Q5/ujH7KgIZL4okSFdBw3M0MIgnw/EBJATgTF38mJ2nlWCMl3K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lSb3r1VL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lSb3r1VL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3C8EC19425
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 00:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781136993;
	bh=6E8gdJBIl6OsD0ZyZY7SfwGxzjo51RDz/CthukipFww=;
	h=To:Subject:From:Date:From;
	b=lSb3r1VLvFhvfO9KO8rB/3dmLbxeH85Dba9/zB0iv9RBi3RqvEmXYgBxNzGUvLNcQ
	 OjDg+HyzmoHEikt3rx/giB6I88WendQdw34bJ3eOOv2KFyVYvDfnrk23+SnPoMlNWi
	 iMkpM4Qr9WSd7vz67RV20V2SiBVTIpHmt28Lp8ZsWPHAGXemE9T4wzpOQuL1WVglU4
	 wTAZ6gmsfPmLZka+ChXD7CVFsseh1e04+myBnMZ7VJe1vd/7WaJJ5MY11UM7jWDCyG
	 mUWJiUmbkGhqMOtQbRxjsVEd3C09IP/hi/1OY6pB7Juy7na17oxPvEXzbUWZgLYev6
	 SnInNlmEaLTvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAAACD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 00:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178113699369.22495.14875373505686461625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 369ea76aa224eefaa51a807725389cb3f0a90192428d64571f78d4f5a5c5af67
Date: Thu, 11 Jun 2026 00:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781136993
