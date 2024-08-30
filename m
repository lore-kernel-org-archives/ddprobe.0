Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AD31B5ED6
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725033354; cv=none; b=A/9GLzGe5/tcH619Bg5kbUiMzHOTLbsn92zyxvcPPGKhe7oNVHxbSVWNyJrD9Es12L8468n/0HF+SdozCtTIPz2t0K9lrJz9m3AjGdjv/66lg+PV/mtxtCuz1YlS8zuBZykKaYmGBHsjzikfNP6hw7igjm7ifFPHQqdCWLmKF0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725033354; c=relaxed/simple;
	bh=KZ00wX62wsHX4OrFxhvNOmrBL+oKt8zP+thVw5j3eLg=;
	h=To:Subject:From:Message-Id:Date; b=WNIWsZxctgL8SJEHtXndlxs9n6zItcs5Ib7hx61Nut7XOc8uTPnu0fbehSMkYeqtawwQv3yjzUVkPA70Zfx/Kgi1+s+4oAkgk1r6If+RqDuD7gnT6gm6Kk6Q/fgl7ItorSkAMqQxJXAGpNdJ9h9ItAfbhDpUBM9BP1bm8QKP+2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPulG0DC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPulG0DC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80A8C4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725033353;
	bh=KZ00wX62wsHX4OrFxhvNOmrBL+oKt8zP+thVw5j3eLg=;
	h=To:Subject:From:Date:From;
	b=IPulG0DCu3Ibmq/W3jy4kPiTR2nuFy8s/+Ah3fZXkwwFMVN0Tfcj8CJWBKMlFGMj3
	 yjWcxbpABpvLgqQ2fzLOcEGWzLrxy1OH1uysD3aaJw5Eue7Em26ypPvm54xgtbNUsP
	 KVWC0oSJ31ZR4QxCJp7N5gUubKIpSLxAegXSOU4cDgJOfMf6cJky4OTu1C6xxHACwQ
	 DE8ANu6hxyyfOexKMALXCOUE32DkFvEofnQNBDyVzKPDBaA/il0wYozh7lRWd43IOU
	 eP+7woMsDFE3/U0COKvGAVIR8eiEONQu1DlwoAauEAFm0TgiL5JVCzLq0ibHJPeNW7
	 J8F7XK6rNUSiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9956CCA1005
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172503335361.7684.15346389681549361381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ca1687a3329025fee7cf64f3bba099a87c4c6682ae1c2dbdfde673d341d537d
Date: Fri, 30 Aug 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725033353
