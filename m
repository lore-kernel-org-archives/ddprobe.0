Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3094D26B09A
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753737594; cv=none; b=EuFJYEhzhh0FA6JO/RDDrX/ZX2xRI4fjYo84caKK7i7uS2vo4uD9HJaY/pgz9VnbG3hg/YR7BLZ5vaQAYjutJwjLTTrv2QRl4I4S27od78KC/Yrnc0QJu1XbcE7Jh5S5jrQ4MyWvf24B/sc826etaE5pI6g7oFivZodIpd/bMc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753737594; c=relaxed/simple;
	bh=nm4OdBOZog2QRY8aMrU4GkrfBV4DlDtNZ2lGOEl1z10=;
	h=To:Subject:From:Message-Id:Date; b=KFAWAAvstQWYVk36d7G1g79T2hSqvb+3XScWgwssfCJZQ97tur/nx5ElfAV2+D5Y6pbHuEtdERxPB8YtEMLLyw25sxGsoyHZUn77XXA+s1jKo39qmhZnHc247LXskk6B5YkcjC9nRQUdhyzmGceY95AAjsyH+dE1U0TOB26pdZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mTE7nHq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mTE7nHq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5489C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753737593;
	bh=nm4OdBOZog2QRY8aMrU4GkrfBV4DlDtNZ2lGOEl1z10=;
	h=To:Subject:From:Date:From;
	b=mTE7nHq+CffnCkZoNtIAhDldV/5Y5BEEokrLkX4DqSgHm7zncDBBHh7DoYqDaRIaj
	 /dnSuL6WCRecU14THDsy4mrAkaIeuroWLldHA20ul7jglS/rVWufdClG2Xl6D7yH7s
	 99Eqyk0oQyYBRGkauXgnSs2Lju3vJLTBpEugyofauBYffkuKWOBg+5WuWP1+vMF7co
	 1a7q/fPTqLwc+PX48Oeex+4jrMtb6pJSxdqpIjMKJg7Wr+rqp/TF52Lk0HPsq59tHv
	 mUkTDTNa3WrsHiT+RpNIvbu6gbDorh6sCLcIUkiEQFZXqLRRCLRqil5V0Z7yhNNOQ5
	 ZbIa5+VtTUG+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B50C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175373759358.8268.15520608899215579478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a33cdb71766c639aa6c42b46fe9f39789462c2d242f6695bbe8499aa9eecc8e4
Date: Mon, 28 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753737593
