Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35931A29
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734422154; cv=none; b=MgN9PAh6twU9ftC/PkZaOH8XRsvWDgjSzUiS3o+EU2nZmXQqNb14ConDSRIkYpA9gXRp2ScPwN0IjzASSglVf2b5mFBaOCyP9OX6vQFwXQDHGsvMtRHF8edMLWzvq1bj/QnyGbBvLQyI+TJ7avfT+pPOVPB2Y15eqE67Uu1ja1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734422154; c=relaxed/simple;
	bh=VoRve4VWl8wYhB56F8zoVemtd/5HvsT1veHBzsKlRzc=;
	h=To:Subject:From:Message-Id:Date; b=TptitZXMNlAHlEfPY3uRjVSTqVIZRbQDJgkOT9yQCLkQBCx8DjQ7GXSAsCTuxUvfoFVi4TDgVxl3iC3u18XDVIE01kMPRvJpmiA4HhPl5VLUiwAm6LiuuasMsa/8j/s2ObDWRcH38LkN2BFBb1qvFDDUNRrqOVVTACUHBN3lzLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWYSzeto; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWYSzeto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB94C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734422153;
	bh=VoRve4VWl8wYhB56F8zoVemtd/5HvsT1veHBzsKlRzc=;
	h=To:Subject:From:Date:From;
	b=uWYSzetoEgc2pynWyRx5evqrgPYiK/2ZSRoraRGRnnVA+uiDEACgKF2QjuB3GDejQ
	 kEjUHIJZy27irLbkX2frEWCXuFjCnE4qjEVwdy2OXkwlGlAvw861zLGGR3PkZ6i81k
	 uBnDhiRGTUctdAbSH3Y6CYGdvbKGjdtYWZbWfiLfPteZQOWEk3mpNtjBoCipvcLEtn
	 xtiFDmZpS0o7vD89OYJMxBZRVdkQN62z8Uv2LZItThbtishsbKWZerYeJmxoPE9Cmb
	 J3D3WqSJ4GUgVEsWm/R5wgS1jYdAwsGV/eNQVi82c3KQJuKmcz06//4d5vMtYHq4vT
	 HcaCPKnr3gkvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973ACE7716A
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173442215361.23571.1545352457699395060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e68e92698c7aa2cdef135d1a24b12fe40a70273572ffef4c7cacfe6c68d425b5
Date: Tue, 17 Dec 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734422153
