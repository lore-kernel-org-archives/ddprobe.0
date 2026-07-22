Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE2C0438038
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 07:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784706514; cv=none; b=TexJu8GdSL4Fg522uKiiNiXadWYtTq9eow6dHkgUQ75zqFeNrNIEpciG0JeQ6TNq8Jpwaii0qWrq4krLFxrOZBcOHo8HdUZUCfPhhxjkiqAbw9A+hJl8TW8qsIRXLAK/CnparHv74BjU+PeMtY8tVsyyIbJF5/521EHiD4ez4Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784706514; c=relaxed/simple;
	bh=wXqJjE4NOM7u3B8WOLw5fswtYCPBEmg63EHpY1tXlzI=;
	h=To:Subject:From:Message-Id:Date; b=fRbClZOWetdgCRD6fhsBg2F7USDXxTIUNdk3wG5h/R8rDzGR2ZBpNv2NWXVPqs43k5eW2jbl5hdEfWw4R6kNOhsAJYIOzn19hNmN15AksCHsTnB08G3zSEUPIC5QnjXLGYq/hvjKyhyNRm5J6Tjj/xiFeLxRRXyvW+ZnYdTUUno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSxDe0Wo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSxDe0Wo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4BB92C2BCFC
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 07:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784706514;
	bh=wXqJjE4NOM7u3B8WOLw5fswtYCPBEmg63EHpY1tXlzI=;
	h=To:Subject:From:Date:From;
	b=NSxDe0WoNxFt6dgT+FfvWzZUVu1Q+SWYM3tpfa3hpJ9iL3YL76JAGwqbn4Q5wsCGW
	 AP6IN0+K3spo2QIxUOegElv0fUQeBU8LaDuGcbRpRwPJTyliuDYago/tloDf9s7Wqx
	 75N6F4dwy2gjGN1DSL33b7N5ABuT1aGeTKj+jAgaGMV4uslhWrRfOpcIA+Xd62gj7x
	 dsFl9H51U2osvnXoUWAUPEFuYQ93PBHwKWOeQXohs3Mvs2omSH9gFWdVO7Zu7DsEsZ
	 TUbU/qtX8Q5HgEpD1QorNIgdQz9EqAek1iIXd0YvWERW2aHX7gPVj80eg44rLjbM4Q
	 ErEBMTyhbZLzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDC9FC44539
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178470651393.31667.1742006178685560747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48cc6d0f27a1fdba022e1e44d55195163d3dd5a44e08d29339aedab909658fe8
Date: Wed, 22 Jul 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784706513
