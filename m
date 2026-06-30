Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3012540D598
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 05:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782798514; cv=none; b=TV6yDJ3gS4zTuHOX/Yb6KCpDVXe7cSBrdCq0izv4vpHinrwVUbh/SuKH35l/9JeMUEXV1+8+ynE3YuEszovMcu7lrcxL1r8nttlm6EgiAOFYzlQyFr3n6fQpgMW0W42hmPI/qDvY/oakXIuU/E0+qN3rsYI9FCBER8WG8E8P0QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782798514; c=relaxed/simple;
	bh=f9MCDFk9s3T4Gz9/LIj8I3ashNXdBeVClANTIotl/z4=;
	h=To:Subject:From:Message-Id:Date; b=VfTNngJ/7OQ1TxrnbVS1ukn38CCIBOdoGRpa4zPsMjudcUxU9glhf4BIjDZBJgCI0k7fm80wSQbT0NCDl3dfP/b7I+T29nYielLk6KJ8XXR/Pe5cPgkrIY+io3VD86JqH+kEO4p9SP3Nx8GmMWFd1fA1Z6jIi9gIPkk5Wfi0ooU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3cadpe4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3cadpe4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA439C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 05:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782798513;
	bh=f9MCDFk9s3T4Gz9/LIj8I3ashNXdBeVClANTIotl/z4=;
	h=To:Subject:From:Date:From;
	b=D3cadpe4wI9PttanDGPwZif4GFB4fXZLS64SLBQYbYpVBW6jMkI5szwlRR75egApp
	 7XcegniqbMvcl297fIk7UuAtGYPl+PAEa5zpHBGM9KlCAuoR62nIOQ6sFhPquYAh9n
	 npl03gyWiT32+qK8m6tuI77nIBjRMsLc4xN+MwwNJ9vjGZ1YbYyHhewTWmQKUjEgLI
	 0a1UPbHxIbwBuNQcuisTAtMsCrN3IXLXiuhWi+DQHH4JBfuEkvAtkzMCzqnmiVvwVL
	 J0O8Bacgru/gZZn2mvaYIHS3s6snU9c6lzJxRdPNMhT7b0UOVLsBqgEP+h2tKGHY3L
	 OBXvw9nVSwZ/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC5CC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 05:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178279851368.23596.9005377734326516005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 173d293f10e25de958f39b35b041305b1cf81050fdf7a9e199b6e1822b612b8d
Date: Tue, 30 Jun 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782798513
