Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76E0E2581
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 01:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720056323; cv=none; b=f5ME5ad/2JdmiJN4CAtEbovFsBBYPJZQggNeVBW/Q8++9RH2XxizHRv9+4ETnoXoDQUT9JE7WwWfrxCksWU3z7UWMHcLYRSQFstiwfPUvQ7+uk0QfQBR+y/HiL+BKYn7Q8zxmSTr6qy+/5gner6AyVKilZU6fF+iVg4Zxq2Zukw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720056323; c=relaxed/simple;
	bh=bTvodGf1PU2EdYDDrOVduw5c2oTh4TdIUzvKEGh1tE4=;
	h=To:Subject:From:Message-Id:Date; b=Y4PTcrQnpsVNQOJyfP2JGB0Wu8XNI9egVL7MiR4OX3R8cmEapHBZOC2KGyU3btF/PXdrMuZgSMm/al8rAAZZUdSNFR7lgqVbEdK7cBbBekSR2+DLC98xVjaOBFGsL3VbpGdzsCuZoJOGh81QXtCZQOpnXscYDgcrk3B1VGEISTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TNH2Y3fS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TNH2Y3fS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E09B3C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 01:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720056322;
	bh=bTvodGf1PU2EdYDDrOVduw5c2oTh4TdIUzvKEGh1tE4=;
	h=To:Subject:From:Date:From;
	b=TNH2Y3fSW/fkXZTYswS9NWF+ZcAq9HHZi0vf4IfQrKUgl9wTz9mzOuIvYADEeA9KK
	 AVc4hVtNkp2vCmcuR9pHTV7XzLI13nHFJPM/UrvG3qvK6119fpXXkX+YLtBa6RQ1ob
	 4iC5+GsF9sWn3qdYabmfqrtmMYeR32GYMhpERdlSU//wkn1Z9TPhdmfm00VsqR+ypR
	 zkTtBGeKSNGmjLv1AgrAmP4acWxFAb86laz5Kl8WE43k/GobTPEJbl0Shn0I16+jlp
	 79JtDxFGLBBKSdHNtPcnxPOHcq8QX5CJ2Hv4TSsqEjlgRCC1L6VwYtrfMi6b4wykGf
	 8SoYnf2gys2fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA807C2BD09
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 01:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172005632278.18725.12477847690041744603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6f8ad7f942f9f60943cca4eab63647af4fdb3de9b2388e1d06ae8613d7a3af9
Date: Thu, 04 Jul 2024 01:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720056322
