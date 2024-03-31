Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F14658BE2
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711869497; cv=none; b=unc2vrNr+AHGiaUvgxVOk7D0ItSzp5Cv+CAxdYgzWiXvoa3hchbNxfdTp6C9wMK75029O09Oj/S8EfcC7TSFUVC8CRPnO50NfM5uka63LS1YbdLM5Cw3nZvLv3n6FhyZ0V8N4UaAJxGqNxcQBT93aU+D3bC24xa1MHCazQ3vm9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711869497; c=relaxed/simple;
	bh=qO9f9t/IToscp/01ABuFCe4flsnhVh9xbvOZeemzmHk=;
	h=To:Subject:From:Message-Id:Date; b=bDipC/qTrLVoTNZ8E0iRTTq0YbDteNDSLUm5/MPb1brpgwyxz6rb/Y8OfyCaTUfm67A3TK+LL/hXwrW7EGtYE4NLcdP3V0y4F9XoJgNiwhVtSUSheUWPkoSKC44xkVEKS4SZqjAAsCKLyv3wscOzFVBxOsHG2jophHTatJYxQyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBN8EZql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBN8EZql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E592C433C7
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711869496;
	bh=qO9f9t/IToscp/01ABuFCe4flsnhVh9xbvOZeemzmHk=;
	h=To:Subject:From:Date:From;
	b=OBN8EZqlbnO4TsBi+qx4KCoTnlzoML6qL0jvyXxzTGKKL16DfQjqCfiMnFpwZRjtx
	 SQybRPZkG7CC64EFNePSi2PBVgtr9WUqmAKy0fMPKM+QnQ6/khsA0zphRSy0RzVJqJ
	 k0BgQIXEkzdBzJyZyCR0VzC4GdQVKZYJrbfnPpJ1t8qvLAkTEPu6bZ+4ymE56hsFf5
	 GLt//0A9n+p61Bd1yraSVXV/U8rEdG1zDi7jpMFaGnYkAgEQBFCsoGu/cR0I08eGWu
	 7PVrAXaKzlOV+G4B4tKSEEV40GZox6BXHozosWsD2j+Ug2YyKxZQXIGZk0ICLiNj6g
	 wDtrYOumM0nwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65B7DCD1284
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171186949639.23395.12849449230666258449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 968e60a10e04b734cd116d8ea26ba49ac458e1396461e5e714a4056452737807
Date: Sun, 31 Mar 2024 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711869496
