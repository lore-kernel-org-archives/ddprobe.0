Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2329424BD1F
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749848394; cv=none; b=DmY0xdpanGGLs7pgcdcuQ992wWvMW9Pwc1sRkBsWMvkF8Kd2O2LK66g+dZXQbjZLJM1lXCxmadb0hcQ0SCWOzEDceKis3IW72HSBMijeKhgx4TeBiv7nCykg1H3ggtvUfS1VpjC4V/EAcg0tOdZoE7Y2xhE8TTGBOfoEwn/J/yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749848394; c=relaxed/simple;
	bh=ZELo8jx2Sb6VDfV8MrqXC4QD5LRUEvOevHiXMOSHyQA=;
	h=To:Subject:From:Message-Id:Date; b=MA18gDYNUoEQ+DkFdt33gE53N6eVY4vFGI/Tdh5OLFFRkrYRLkQYquJ7u3NHry9qc6e1iRDaRuZXOIfOwL08mlw3yPN105ELyZyMnrwScD03DFHkaosTewp+lBWNLXoW8uZuvfR1NBfC3EYoENI8JlGuSP2XrOa/md7+eZMJ4WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUNZXosB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUNZXosB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3D7C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749848393;
	bh=ZELo8jx2Sb6VDfV8MrqXC4QD5LRUEvOevHiXMOSHyQA=;
	h=To:Subject:From:Date:From;
	b=JUNZXosB9wUSEMzTv8CVml6a1uBsPWERPq2JvCpeh1ePCHO59AN6rkooUiuMHyPge
	 yGSf5hupa4XT9Ja8Weydlo/kRfy5eXzNy/E5YUz3YVspmPKbelmAjRCD9yCc2eewst
	 6Ql+aKiNaNrB2me76+KMkFCss/xSjhSgqniN/Z7AVU3+6LmIT0KnD5dir/BhYFJ8J3
	 kugiSel+w2VVog/2sVnorKam12tnNu4Cm591+o0HwoHfJQ0M/HNf5hb/1EIT83DT8e
	 XTx5kA2C6citeSymnXb5ksBm/xJMiALJjJJ0SghKh7k/Vh3aLAtyouZeCENJXx4KME
	 OL7xtKztrq7CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901E8C71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174984839358.25369.16966237440812193067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 657b2eff1560911c3cd43d7ce1a3ae80695397536a7a065dc7a028f1662a8390
Date: Fri, 13 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749848393
