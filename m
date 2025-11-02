Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C03628E5
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762116594; cv=none; b=UVk4tcn3KXHP7gOo12XCDw4uqy86DYVkXVQHfAaQO1nUsJejEMx5SdLQyLZWK6nuZr8scPHMhQHekQkZp+CSqlNl/ceurYBGTXLqG/dNoNiYJpnn94BrdF1vOdBKE9NJ8liSxNC/aWeZao5LTRN96Y/oGu56EPVe2s95a6PqUMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762116594; c=relaxed/simple;
	bh=nb9FLFNsZr924p0LjLRYfY0r8v108x4DM569HcHfFf4=;
	h=To:Subject:From:Message-Id:Date; b=rlKiae6gIHlv0aktFwVPMeKmLhYpXHkTCh4ivK6BQVS/hlDL02YJv0cJN4h14O/o9FSF841T1MNE0GWBVwUOPBWH24Ti18i1C4F/J2MherRX7VoCIcUgQS1wQKTHjRXNUAxlFKjG7tGG4sh94VeFUBeW+QIKK9rQ1Yj1upwf2bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLNU7Tjp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLNU7Tjp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFAB2C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762116593;
	bh=nb9FLFNsZr924p0LjLRYfY0r8v108x4DM569HcHfFf4=;
	h=To:Subject:From:Date:From;
	b=WLNU7Tjp6L0brOrRLnfvLrsSz4NvwFLTK6zdSPbN+lvY9VbWr8ORq3POJRCKRkGJ5
	 OophUjiOhYWBaDEQYsBHdMTZ6MUaeFqXF35c0pvc+QcGV/TP9lAK8/tzOihLzJNBq4
	 ng+pkiU092K25hJp0afUBa1CtSAhTJhjjmj61q3AKQboYG3j3BuVKYgwJ4FhhvSfSM
	 F8L30XHdjEZFn37vm8OGhsXOlBNdFC5QMEW5ouA7ef4D0vyUwNLb2Uy9HDiGAP6bOU
	 p6cA42MplJZCGGEMZt6KbocM5FZ+qe9xSj9/NB4OCEkXufzxu1I1xyqhVlXfVRxKbO
	 A98yHkiNFeZOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958B9CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176211659359.24355.3445947716644138964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06b525ff4c7f305a8decaa5b5e65061d1d7d1741eeba7141ae9c050ac6030286
Date: Sun, 02 Nov 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762116593
