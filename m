Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D7EBE4A
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735758954; cv=none; b=gBlnbZ8zLQjkd2hxWUirosSS1UsM851Pb+3TLN8XAAX3msu6TKzf09OcBl7f2g3U0MLsub4c7EVH1v6EWdCPLcbGGpzL+iN1yFiRNLMr2oArF1xL4coezKfqnZWxa0TH+WTTmPB+6XRzXrx5Uwh8rx2nqVDIqaAk1BkhgdB3Ax8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735758954; c=relaxed/simple;
	bh=NoI4IiAkxW5QJGBivq7FlmczYHZhpDgm7+Anq1JvRKQ=;
	h=To:Subject:From:Message-Id:Date; b=NImHcIaGn51dUZqUJGasU2+o9LtzWgIKRKB5Lq09J6qx4bBMLUWDyGgyeXlcDRsWByNuZuHvjastITe1UwyYhaC4my5SA9mO8LuT0PEQAyOKHMw8KaTzaKW1xjSEhN+jbygO36ZSTdCa/bLdemBW5SuAKdtfX+h9QvcbrVzF8j4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjH0SRUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjH0SRUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA70EC4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735758953;
	bh=NoI4IiAkxW5QJGBivq7FlmczYHZhpDgm7+Anq1JvRKQ=;
	h=To:Subject:From:Date:From;
	b=OjH0SRUWkUPivqZje0sMxuQmLz8EPwpSbECajBRITZpXdsVDmm6PFS8N3NE/utf01
	 FthRlKvttPw2nsCgyQdBHNBVEoCaRE6uYj2XGynvEP+SOwDqgT8x7JidFLZrfkJ+Nz
	 WBJwyQon2Z3atHUYEntwi3vj4kpvotUQoH/xustDV8pPc4iGGmaJ8lqpYv+bpWuEW3
	 E/cPFtUZxsT041N4/HFWM/TgrFgudzRLHUv7BgAA9oEm8r9N2+a5v3AZzUAp0XYrQB
	 mYWHuWTunTCYADJhsAcCnr3I3OeAcbhA55Vx+JInLEczhnlD0XZV8kb0FfPGjoEwLr
	 BOVijFR3aiLpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9741CE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173575895361.3458.5120733568749979222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 549f06a8c3b143325b04eda5830c24c3a0c0ebe04578616ad7297f5d9891682d
Date: Wed, 01 Jan 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735758953
