Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C4E2DCBEC
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789573834; cv=none; b=QAGGLIozsxuheJ6fhmGetzjLTcxFJ6+NZU3fTh0RpJaD3tbgl9Kcv7oyPjeLTICfQ6qcmf+BODpf+Gr8CBxo3X1Egkekdhpa3KwO8M7os6K9wRWbSymLXP856nlcC6V67IEt1+GGgh+QKtOGC5M3dWdeo3P6Rr+KjWcAxvG6iHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789573834; c=relaxed/simple;
	bh=SmpKrVimBbDSTCr59TQ9kyu/Rp5Bq56UEHVkgJNri7g=;
	h=To:Subject:From:Message-Id:Date; b=EjmqOZuNY6LUmICoiGwXTEwZksmE48sMuIyBYdmFQygq8TELZxzt5T/Wll4uCKtf385dNewAM2mWUUuYOCXaSiEiDgV5Whq+VcGwS9fIp1GafeNZp/FCaIAadAllnTKIypWuVCMBTp3oGJ1cDc9pchh11VoMVYJqagMpgQbedkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8YIdP43; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8YIdP43"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA1DDC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789573833;
	bh=SmpKrVimBbDSTCr59TQ9kyu/Rp5Bq56UEHVkgJNri7g=;
	h=To:Subject:From:Date:From;
	b=W8YIdP43h6rfgWxmekqaipb6zJSDa9ff7TgB1vUR7YeuE3T4sXLyvxm4SC5OYKbYO
	 yJ7NxtDz3D2BuBnIISPpedBbSRgEdjPjBJD/oDEgqKEPQ51OgInPTyh4caQO+l3FLf
	 CsEcBFWqrHLPFdt+Zr69A6LMh41oA5khm38pNfcD/iZ0h7Qv23rgVhJBQcyU8XzdfJ
	 lwY0YNjyTyaXyJ71MZLOkRJ8yTdq29vMSqqYm8n+ZkvdzQHu4x8L49zdW8rTF/omul
	 8ADiaAPdgGnOxe1UUbVGbK4oJ1jRBVTa1rOTtkMGt04rD6ym68UObQ/9NNad8sr4cZ
	 00RHTGGy6R+SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B49B3C982C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178957383372.11899.6719263205132149554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bffa1f69a1da92169efc768b4edf2bd227d287acd53f24a031d6521766813dc
Date: Wed, 16 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789573833
