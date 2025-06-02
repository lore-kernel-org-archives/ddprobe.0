Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37742184E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748828994; cv=none; b=kFJ1872hfeLpAIaSs4F6vb51lDKIv6F9b/BYuDzbqTfPMCMW1RNc+R3TT2To/2GKme6OG1T5Fk1oCct/m6Jh7FimGaaVEoiaGypUdKPlIggQyFb+vxqn3db2D7BNQJuWFFXQKgZTasxTaqzDmaMz9CSqAgUA3RqhvdV7qnT36cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748828994; c=relaxed/simple;
	bh=bUrEUhKFhfIBvdrcxI/4NbgET2BQEC9n8R8hbF1iDPw=;
	h=To:Subject:From:Message-Id:Date; b=l0Q0dArOsbxCNgT84ty85bXbvCbLn+utnpr7SczdqMl2a45vUxo7Ns9+BNuba+u2RSxSgt7pWeF3JfFRpp5gYZeR5hgU5gSce/AI33Fwe5m3SAchv2BjbLyHcGTAQuidu8ur2wT/+hmK/Gg2QP5L+bWcbqLqokJPCe5kq+ilXoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4mTF2vz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4mTF2vz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7742C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748828993;
	bh=bUrEUhKFhfIBvdrcxI/4NbgET2BQEC9n8R8hbF1iDPw=;
	h=To:Subject:From:Date:From;
	b=f4mTF2vz0aXzbrKKlggVx1IlgyxoqkuGojwCyvXBafookEkpdvHzNrEK67vtlD58b
	 +pzfvDB3+UV0BELjNDPbZ+xU1xadp7QbzXUxGlw3Yh0FTb+RaN+imdtiEtAdVQ+jKA
	 AZa1XiA7Inn6oxfQhlDqn7a+AtZOX9+WZOG2wo9nM7R4+qy5jYBL7+M37SipowX1Qa
	 4u5yWLo7PADJoieIP/zAEOpujtiCnWg7vizBsBfU/S016tB9xOUsfbUvxQmrraXfUh
	 yvA9e0qAxjDLTlOsFSxeFykchQSMNM3771uAAwL/N3C5XneyG+xnbO31rElac2FZNH
	 +TFjHz8UHdQOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93010C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174882899357.30278.12834665152297124507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf31c812e0cc00afc1c4d31640ad6b864c60536d49bda7475e5337cc18b28143
Date: Mon, 02 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748828993
