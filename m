Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F39CF231A55
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 20:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763323914; cv=none; b=AWEeDBcTfUTTJyEoRbXwypI8xqimoaINiX6qmuWjhb41tLEYAsnuJ3f6BjiypaFTB2NbNyxxPNERXgehPSGbYvmzOLBdUHiLckPZ8KvOY5EJESmMajKRBwvWNsb3HMhiSfzxrN9LS4ugJKaDQ8fvASWfhrCQudTtd6XqbwBQDVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763323914; c=relaxed/simple;
	bh=p/5TmX00lMS7pWCpyaMYn1HqqyHinprDE7RRTQuCHQM=;
	h=To:Subject:From:Message-Id:Date; b=GkQkx75iVAWvLDQxeW9glzdt+1ogjv7kkKHIkREN1gsRRXdL5aMBwh0KyogrfLKJfQ2C3WXTPAbAHsxPMD27a5t6IhLP76j2i6qDRukDkC83oeDf8GeOmBadwgsPOZaHlAOKpCu8QBRzCz4VrSn4OFN0g74fS/AKiUsRggS3Hhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GF8yh9FS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GF8yh9FS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11E9C19423
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 20:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763323913;
	bh=p/5TmX00lMS7pWCpyaMYn1HqqyHinprDE7RRTQuCHQM=;
	h=To:Subject:From:Date:From;
	b=GF8yh9FSsf3h0C4SLMuxiM3V82YAQoK7/Nwi6/UallReYYnTZHJjBdUhjcr+aa1Ci
	 2YcEekDZjV31BljRb7wec/CWy9LHjF2lHpMslm2JC0a9LcjxqhBv6CiPMh+NyxsnQR
	 skHVvyLb3zt4gjCf8XS32Dik18Ue4ckNNAMDa6PPODv5Djs03SrIhk13iYTewwxNU5
	 LwIRgch8zahCcQCazxokrxV70uWXBGiRPmPVEMINJGbbE6lzEUmED/Reu1Uk9Lb1bX
	 Zx8lahHKOY+ZITLwfNixsTQ5DxpXCHAy6bsikdXWv7HLqwlKWnH6IHTE9RsBHTQ5zN
	 /5CqtOeRr6pbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CBBCEBF61
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 20:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176332391358.27042.11847222983654167539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e3228d62a0de4b69ff1637fdf9146165ac7ff8894ff5f58e6ea4865a5920b78
Date: Sun, 16 Nov 2025 20:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763323913
