Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F11F450FE
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770272034; cv=none; b=Ke3AsnAXLfiqrvDDvPcjXWP0lXGIJX3W3ffhranWCd6OkJLtn/6yyvS2gxfxqEYF/DC08BVsoJquBxvo4kjDzuNR7jESLf2WqyVeGu5y9IYJBQle4WdIXOp3HWU2kUVGx2ZPatPaum7yoQVi8Szssp8kvGvX3UJjgMSWU5GXVYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770272034; c=relaxed/simple;
	bh=v27L5WBDt81XPRbBLSbA7rv5sRYOOLVdIzsd63VkPXo=;
	h=To:Subject:From:Message-Id:Date; b=otAspbxDuA4Z2fUkFG6hZ3lN9aDGHHJQNH+Z+6bouonxhFSfUH0Up8iAZiHQPixJzzZu4fH+qKXkp8sAp0X37cINafa5VD2ZT6chF37GTb5XOzSTK0eu1FUGEHp3wYjzhL8d4SVxsHpDahMlW7CNY1PhrWNI8pCfDCBUlof3GQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDewd+Jm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDewd+Jm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3EE6C19421
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770272033;
	bh=v27L5WBDt81XPRbBLSbA7rv5sRYOOLVdIzsd63VkPXo=;
	h=To:Subject:From:Date:From;
	b=JDewd+Jmxplz2Zu5zkGezipGHQwMr3UxiAgEt7+ezQc8fTnd2Gto7LKi0EIKArb9S
	 5B6Z4ypVK7+2JybRTg+sCFC9mSNa6v2vhNT0SdgRXFFD5AJ/tCK9IX6TFOXypyAZtI
	 957kPTeCltMy/deXQ3p2Nx/uJCtREkpuLjWS6NjCL0g17+IBLewDn6VRD6+3PQM8hm
	 CuUDvtEodKEOKddxXHnX23SaNk3hfznmA2chDsaNgFawPGJr3t6UaU4Q5dbl+T8NY7
	 hpIWpuBPUP9g8BmZpUqviiA7zFCxj7rfatZoT9Oz9zTsdAtMEVfZttF1UIQYxDtkfc
	 pmrhGGbWt6OjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB95E91269
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177027203363.11135.13262707478065899673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cad881247f429ca1eecc8c44c4420645eaa6b4dbb2aeca23bd7d1fa38eb03e3
Date: Thu, 05 Feb 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770272033
