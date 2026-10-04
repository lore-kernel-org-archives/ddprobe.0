Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6341C5499
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791106234; cv=none; b=Fjk4vTqR/lI5vTyDuss9X02ivl7mnI6msODwNudH0xSCUJGeiQCJmzklJxoma3wNNi85h8z3urbnnJVldMMFP2wmN718cJ8BMtbsJKzleAtKmJaI/Y1JRACJKdlKdG/NUnv4UMjRw2PjK2PEzFF4oc5XKhJPHDzB9fhA6F7YlfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791106234; c=relaxed/simple;
	bh=m/x1JJdiGpmyljKSobuw0bVUmtOn6MDWjvInksg5+C4=;
	h=To:Subject:From:Message-Id:Date; b=ZXtp7xKg90gIvDABqTUPro2lPOiy33m/H9wRr0Wrn/eBE60oB00WmvLqXravCeD8UW6boaTXMLa8fE9GLeWZuxKvnpRQzXVtMKNn0LaCTmtp+zoCO80CV64OufnmeDPYL5Ei9ka72Ezon0ppxJkjgQVRhcuKbuGO7Iw6+t/JuRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVKDpHv5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVKDpHv5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC890C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791106233;
	bh=m/x1JJdiGpmyljKSobuw0bVUmtOn6MDWjvInksg5+C4=;
	h=To:Subject:From:Date:From;
	b=FVKDpHv5SLePvDA7I1CsCpbIpf/tMr2DVw9gdZctFReZZG1lLvPElLcoutvpqFrKN
	 TcWoG2AsD/ycgs1K/am/CqA72op39aIlwz5yqSYBppdczZoJjDTl0FNwLO1nHt02eA
	 SRYyHwlvBeWyoCcvWcYVUEkiItMj5ZS0dHEINXyeb2l8ts8+NfE6sKqT6nWIW8xMyU
	 LzXfaA9D8+TcjBQdWcJuNfNLesMBbtI8iCO41lFzRdw8gyUD3lFiM/Mc4mo/8mfsTu
	 2ZbEKbHWYysszXnKmvA4w7q7gL/Vyogd/HO4IgUuGIG2hTvZ9FGNnfH3fRbjtNrpKr
	 5HNNJN95xab1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1A8CA5FEC
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179110623368.11679.18173764176434404161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56d917f9e8dfe3a58adb8c221580febcc18ab4b3f388dc6b2c4dcb8f4a2e9eca
Date: Sun, 04 Oct 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791106233
