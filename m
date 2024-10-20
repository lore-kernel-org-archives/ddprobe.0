Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206EB173
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729420554; cv=none; b=ivUDUh1wg0bhnVz37Z/Q2mjnkKQyd9PJFnTmCwnbjSjxlgi3W/eDc6PTfefhH8Jsy5G3RS0lP6DNrWtnGC5oNNT6U6YngBvkoIy0Qldk00EqbQ+hPd2qLrqvp8nG8MnoadPf5VjCuMU5v1TOT9qcLqrQiqzhFPaJD/0DRc6hYx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729420554; c=relaxed/simple;
	bh=ErQiY35OeEx28vqhsn4DIGYAEnC4hfXpM4ajd8mqkFo=;
	h=To:Subject:From:Message-Id:Date; b=UCTahxCKYiKV8IztOQCT//9wcdxmBBa44yFohQEDFxcQhzihlvJmiJTmOcl36KrCdy8imMiaHLxXIsa0AwhgQzHnP4U3gpBKA9B+JyhTN02wJU7Ixl8/Ek+ghHT1Qf2A2ckzR/jtnPl7P6nKIRFdlnvfl7EXiIe8aAvpnXlQjv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jz6VlZ2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jz6VlZ2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10B2C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729420553;
	bh=ErQiY35OeEx28vqhsn4DIGYAEnC4hfXpM4ajd8mqkFo=;
	h=To:Subject:From:Date:From;
	b=Jz6VlZ2sIm13ruqxTAGfRZNNcN/XbFI+vD+U1jO7W6hVH4y0sY8f0Wfgh3urQZDMT
	 kWNh8WW8ouNRt7gQr+wSavR8Fi3knaQWpxVkE7xUMMwPqE4EzfM+zKS3SAi5lz+3cQ
	 jW4J49dicyZxY9CJFxu4YXKwLMo4oq3fL1It3eqkMjA3NJ04I0M04jdAYVm0NeHdrM
	 f3lxUJrU6Z13hKqs6/DMrTsc7lTyc50nqucjl0ITsJfXtdXApSrs9cewM3JGq3CHOE
	 NCN8fW+cvp7FVm+KqqxrmUrZCwV+U+/csqnTyC17CeK8Gzr1mws72uJW63XFoIalk/
	 /RcIgT3tbrhAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974A1D3C92A
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172942055358.29593.405304531811071468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cd8b18a217bd49cb432f4cc3a8836e1b242c00e882f5c24b2fe6a1d5b7cbba2
Date: Sun, 20 Oct 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729420553
