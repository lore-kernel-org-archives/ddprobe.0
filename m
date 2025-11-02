Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D590120C004
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762092593; cv=none; b=asNWDd3uOxzOOHdrvUVVtAsll//le/pT2vSoT3BWruYSJGAmLqOqzjEX9QV/jb6LDZpWXSeQGVfz1UkRkbxBsLk7TU7HKaa+kxisLTY6nciHnHtHrd/QNBdLlnvr827ad6X+smJHUvnwca5eiXvHBZJ0jf8ZPbBGfbUo89gBKY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762092593; c=relaxed/simple;
	bh=3KrOU9+LU+1/25puLeqMilu1/30HcQCuqybuse5JL0o=;
	h=To:Subject:From:Message-Id:Date; b=nFRIPm+bTvYRHOGA5cel+wGv7EXWXwEVoc2E+QoS/LThvUgyQqORtoftwXKuO2PvbbKu95FTMXvxohbK1gEVk9gJPAqYoc+R+MmTuUcNlWxUgLtgzyYLzZxSvkrIOgsP1YpsbRV7ER6+LX0mdpzLFtAb8nP9nqZbIx/swK8HFqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p9EHEGsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9EHEGsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F2CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762092593;
	bh=3KrOU9+LU+1/25puLeqMilu1/30HcQCuqybuse5JL0o=;
	h=To:Subject:From:Date:From;
	b=p9EHEGswoG7K2tzTYrZurkXFkcyDBIh/BMCit6A5ZnhhHC23MN4RlLSC/K9tazYRP
	 rvi5wQR3Vot1hbiaiuaNORNVp96GLWtFd7rIWmNSTm/k15vAUi1Ky58hmSjA91uybA
	 PVVfgxqeIi/4hNtTAmsslPZ12InFDQ/US1SIyGXNZ+dqL+LH3AYvyrC/bKrsxf6wWm
	 nhdS0N3RU6g1txYlTcPQPa2ChRJYupb/b9MVBXTIRqFzSiFTvcTqTCYUUBEaF+B4xY
	 uPwJKOY9KttdR+4F/45oOFpYQpTk3Df7n2VfDKITkUGUq50bSMBmyZncgNCCHGYaCA
	 HYJbJhEaKyV2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CF8CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176209259358.28271.6603902169258462279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8222be15a87fd47d5774150c6baa737aadac680893bf1bb7e17bd72bc63a0974
Date: Sun, 02 Nov 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762092593
