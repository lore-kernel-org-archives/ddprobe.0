Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9001C15C0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 11:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720957823; cv=none; b=FaTcrSh2IlehS/Xv/55cO0F+EFQaaBU+3mSpvwveh5qOQfphH9jbpazSjbjX/rZ94YxNiojwXo/WSRxbdSwwYThVneOWV3h8m6FZKoIyLysVanvmy4u1jwJUn+ABwHIBiQ5rWgEapgWLkJ7NyTRIWFhtOEnRkQhrpXMckDG9NIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720957823; c=relaxed/simple;
	bh=i/o1kJ3J1EBjbpwCVEhK3aU2e4J66CVz+QtdUamVbGk=;
	h=To:Subject:From:Message-Id:Date; b=CPkYKWUpmqdzh9bzEB0t9JEGK7eNRXCxX/PtmypY9InhXx3wYKB+JSTJiWUS0N4LXM8O8V/wQri/7O3WYfhYk/Fb7gLLkQPbLlOGGnWPMKWl6CRCzT/IRRxctmr6HtB7j8QMfL7kHUO/cHwt0swZjjOpcuzSXH/22BSNnUezi38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUjhhUpk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUjhhUpk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E80C8C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 11:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720957822;
	bh=i/o1kJ3J1EBjbpwCVEhK3aU2e4J66CVz+QtdUamVbGk=;
	h=To:Subject:From:Date:From;
	b=kUjhhUpka8TxZfPzzGIYLJIaT+k90NwEATx9MZT/Z24ZY6fczl+nqVcMNlKNI3MSg
	 yAcvFmPkABXgDHX3IHYl8lYO9TeB+ogwTRou957MHWrJQ9lIGspTAiW8REPc7cKNCW
	 y4y/dvsKQ2N1mdUQZ7o0ak8AOF5liRjL6xoOVvwtX45M9XUIwn0bKY1gd3TphePgK9
	 vQ7+ZKJJJKr0lbhy5zXzn8Dbf1Ujbru1HUHrEryTyOjsCDDGKo0hgE8cYlRn/8vvDM
	 VPFAeoUyFUEur2qin/YX+Z6wjgMBqT+t1muxGTEm+CPo6xd3thsRIpScG//SN0Ak19
	 0c+saPC05hxkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5295C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 11:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172095782277.20141.17112048905177878631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbd2e477da4cc1e58f9001426c4160ca1609fd1155b2b2bb81bc768735e7d8ff
Date: Sun, 14 Jul 2024 11:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720957822
