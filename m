Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1620F17A31C
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760793594; cv=none; b=ZhF8utOv3fDSgTLVidpsP0jf6aHn9HjXOnSMu6pMFtUdidXAAMnSkVd0FENzdQmrHIRX7AfV3JoXmdFcrScxzdnq4xBJk0OH7CQFvBYccI+4h5zfT3VhVnTKQjQgQ4jRIgkQziVZ/qn9aVF0C823TnndudEfS2FnUiYd+MCpAJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760793594; c=relaxed/simple;
	bh=QQzeyGmgD/o8nHieWKU++eihqYeRy6WakYbdr8g7W6E=;
	h=To:Subject:From:Message-Id:Date; b=AZjeE2liA5RnCxgXdl7zjrv+yGzSEpswk0j5mQdeLVd9kFYa4AeD/H8Zlaw2C4yObGC03PAaIqfw1RmuCNoSYVxlWLO3gIR2G0tOsznGuULjopWpjNfMPD5H4z4n/Nw+NU1FzDs65xJQRrj3i+omo2TeDPjSMnSiWtCjIyvryoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZD5TLh6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZD5TLh6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98AE7C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760793593;
	bh=QQzeyGmgD/o8nHieWKU++eihqYeRy6WakYbdr8g7W6E=;
	h=To:Subject:From:Date:From;
	b=mZD5TLh66KSTegWMuGXSwuMsoWGr4R8mPpEXcmtigCSb/3K2X57rMyTwbZMbKF62Y
	 hxCzA4FcXmkz+EPkCMvTx2aUfr4nRuWi18vUIWjPxsHn06C7ffDsvLoM5/lmrvztvm
	 U716JfeYvZf7KIayke7hi2FKqdX8bsGWP5s1j8eKBB1aJI57dTt7V7yI5kFmada9o7
	 DkI+ayszc5+uZCkkz4BewKjabpH3Pf9Uw2GaiRmIOf/sX7mNBEC5QY7v0NJ0VZ8fzY
	 OuFuLVnpSxdedbgMeyzvWGa37gGzZNUYD016u0PncHj4aFfjQFfTe7B33YXywYpPC+
	 8/h/0jqwWphdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBA2CCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176079359357.2653.16249475837381520445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e7041e87b2b96cdb66f86b35996d1f2cf5e7e05dbee24ef3c69c713727174a7
Date: Sat, 18 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760793593
