Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2812128371
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774665894; cv=none; b=uDhfFhb9MSmYmUtB6NVGv3Z8DOlwSv5XSVyvZkX+/55wssZpDgxy+PmSKatFsQfPaj0F9miOC80AmjykrJmzmlcgNqT4ymdPKOYsB+8LHBQFN52fE1KCZ4Cjp4LNT5m+jjyuRlWJ7J/JIXwbGqviJIadtUHw/UG15Hpm8fWBeDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774665894; c=relaxed/simple;
	bh=lLclPZ8pcrN1STUYlUSZNXX0RJND5t5rGJ+ycuLzxZo=;
	h=To:Subject:From:Message-Id:Date; b=XNbgho9h17qjy3Fqd0haXV3MuCFPy3DjCRSZkRxsvp24DRKMzH0Gpt9r7mz0KKUNKD0QC+7eQ2LvSOWd6eIHadB1oBddbVkvhOQxnLiIuK6KRUxDZOu1qyrJLIPYspT4Ss+AHUK4s58RSc6yZttE8QaI22/PbNA4qTHpJwpmS9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TO7c2Ar1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TO7c2Ar1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB35AC19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774665893;
	bh=lLclPZ8pcrN1STUYlUSZNXX0RJND5t5rGJ+ycuLzxZo=;
	h=To:Subject:From:Date:From;
	b=TO7c2Ar1dX7daLuIhxHJMNW6cL7G4T3NpqGEwgMSkCJnRYjiITtl3j/G3GQzeBxzu
	 h0BPxCLGd5dmg/6tEfVTGVbgb8RBXI/knGmNx66QHG5c+jN8PTwg9iHIS3hdQdh7CU
	 ANyLglBORuRwourmiUTpanh946+8b9L4XYZNu23AhZ+Lfqc0+Q+1mGUev6PIkG8hdB
	 7SIl5p1DJHOFsBgz/7H75sE7uHK+JAa4/zJ+bYpiQ9WrlS8Monx1FnjIjCd0gJxala
	 H76L/yzMH+g5fKVSXWK8pxj05hWauMR/lqzYEIVwXVx+Rsk+qVXxsZlT4On9Yf56H/
	 f5f853zgSoZQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D2410F3DC9
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177466589358.1971.12074537977906009295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68a0e00bb7c759d247d19ac2a5003b1fdc2a633fd47e431a0ec101eba25768e7
Date: Sat, 28 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774665893
