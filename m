Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E92C4317D
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762580994; cv=none; b=DHTQz709cWjZtn1SBiYlAqewkOpFUHCSLIOGeJFnwkP9L907THlCghKmNfoByydytiJTsSUXNXpnaMVCYqH45DJqfZ/uLVtBvIEtf+rXRnNu66Uk+tTrjWdrH5dk1ddJam6dtSnq3E2+8ZwmXdB6NfiB0FwCb6/IJwgW/NSPehg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762580994; c=relaxed/simple;
	bh=Yjc+Nz4Q7fiSzErS7n1TZTvLE9y0o9QvLvKRRG5ZBpI=;
	h=To:Subject:From:Message-Id:Date; b=bXRvpBOlk47aV6u8+YDBwQO6EYFwvWpRxpSEchxQrusgbTMPzFOouklX9mt3fAkYNnIas7XJK7GZpLg2Ndz0PqnwHwSZWW9qwWpM7D1yw8AOk6eRxOU9Ut5MEoxq7GUPq3fvV/XNOBkk1l2E4fDqO933SNwdFZtoFzWSXBkIY5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j72YXE+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j72YXE+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21E8C19425
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762580993;
	bh=Yjc+Nz4Q7fiSzErS7n1TZTvLE9y0o9QvLvKRRG5ZBpI=;
	h=To:Subject:From:Date:From;
	b=j72YXE+PBF89CH2Apy5wF6wHWfGl0oi5vqGWuix5pRm0zTkb8Y4RRYwFFA0BZso74
	 VU8D7aacIYK0QW4ivV3B1vK7UxstRXhrgJGYMFyAkwm2PSteOH/dUzFuwWK/Bi3Zly
	 1UfRQB3AfTTZR4/EJh00XmPSfPYqOHmZum0smVM3NYgGSNwqk/ZQXBp6j3IHm1AZYK
	 NCJyHXY9gOxXaMac9WAlJnH7+sULIRV/ZtDx90aEYEJaxW26YttgKw24qUk5gHo0Rj
	 sSWn8oz/Zp3X1WbOk/GdArViYD27PCqoNXVY1lP6vYc+62bmK7ckuUqqcOe4OCbEgr
	 Do/s5SWbJx3TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939A2CCFA1A
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176258099358.28196.4166470058106965632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbb7cad16a491b569fdba336039527fdcb0b8fc6a1e4c24283acbaaf2411aca9
Date: Sat, 08 Nov 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762580993
