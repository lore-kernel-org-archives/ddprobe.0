Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491EE39A7F4
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774878894; cv=none; b=bMFHvIZa7Ej6pGw/DCXAfscJsCACYgjcH/Zwvza+QgdAX1AZ9Ba+FYVMVAloP39sM9e2fCNfQ3OZx0UX0YmR75LFDSv7BebL3Qpv5nbQyk1Xl9fxS5LkyiG+jGgdWvlcNdC2iGLyj0V8L0up8o4j5MNKdwD6uJ14saHRlcBpYys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774878894; c=relaxed/simple;
	bh=f5UYhzcuJ4mQueadmA9xxJ7saxq2MZ/mNJQvP3/O1L0=;
	h=To:Subject:From:Message-Id:Date; b=Wmge/TOj87/mypRVInsG9QWvcPbtAJRYDtBmT1tVmduAVGZ1+/46dQYnw3soxsQwhuWKIETr8uJ4bS3IvlWU5tVF+zeetZXEMUIWV5ZXISfR3k5VUb60ljcRSOGJnsWUuS4zqbERVoZbbcI7u4q5s4zyZ9TaT9QzZjasXbYI/OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLr909f+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLr909f+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12B3C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774878893;
	bh=f5UYhzcuJ4mQueadmA9xxJ7saxq2MZ/mNJQvP3/O1L0=;
	h=To:Subject:From:Date:From;
	b=fLr909f+RqZNAeciyWS/pzC8pYYc8R1MTvdBbeVWcvLn9/CRxJh5lbcyZz5/ICSk7
	 GHtYCPM2A74S+MBtl+Ak16dEnVPv2HEeTKnvXhIF88r0ri6hJfTpphNhWZxgO+hi0/
	 fCkdyuzVPGw08gzNtEzIJFzs8Cd9xv0rJyZ2d2tea5hePxzNP96or7n/Npkv3YhOiZ
	 MvvUvovuAGM0TS9CX1dGxiM86tv+GBZbnqi7glq8VfoVkU+HmoYQqP+U4Z/5VZk/9k
	 Axp3vcto2xkruymOwj9w9J0pEq6UWVlHlls00MdZdAUmauk5mgKUmr9mgzDL/m7awS
	 pG5xkXbO/921g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919BE103D959
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177487889358.13068.3353431340974643449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b236bb27b0d199d1735ff5198fbad8c77112703f8d38f2c8deaf81ab74e1baf
Date: Mon, 30 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774878893
