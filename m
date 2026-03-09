Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB92C34D390
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773043493; cv=none; b=FrxoKCNar68oKQfSHGiGIbYorfVKEH6kRnl9Ikj2JDFD9NkLXr62xQclK+K+v1XeYv6T6AzfeOlhNW4vlIedo0RHFXzUnck7iberYpxkvINtyVY1ujt2TLd2rKX8vrCyUHV23UsC9qCtN36FOyTc/Dr762ijS+7LRkYiR2TTkJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773043493; c=relaxed/simple;
	bh=/LqLZFm4AwTEpB7Klw00N0i/vxYfWXOQtyoocz3uaeA=;
	h=To:Subject:From:Message-Id:Date; b=B1gwfn/1WiDOEoWmBlGTk9VXsu8Y2lU/TuEjxMMutVdbdDmA5bABzQ9F/DJi92WLmr79qobk5tl8aYD2GEKjnA6mMdhxPg8pCv14A+XBzClfmX3oiGgKYuzuOaflWqIAhVRGsD2y+imsrB99SVvkJYlQMN4F1uPSK17mIaeJLEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RpwRFfda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpwRFfda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 961B5C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773043493;
	bh=/LqLZFm4AwTEpB7Klw00N0i/vxYfWXOQtyoocz3uaeA=;
	h=To:Subject:From:Date:From;
	b=RpwRFfdaTd+f9bfHq9fspPvjOA4V4GnGtA0mDwXwV/uAQQ3BGf0wsdLU+TPBrTlFr
	 34h1CdfnoeDyOKfoNPYRDinWCpoJWQzNPnGS+5z5UcYv4x4oFQ9GUX03wbWekNivYE
	 OReltOYg9O1pB2npOZMxWzaK348BtJa0kpLzmmpEzr2VGxza2GC+1Gb5w5VJOvdJfs
	 G+XPVSFb2mjbIyGvOf7AaticrZCx61QnC5pc4GAnVglni1plZUT50g+lcLjnvp4zTx
	 v2p3UeqznL4G0d1dsB5FGw34ZkDXnJ/oJ/hCLykfaM/+aZvjQ2qQkjkfTWYkbEPX3M
	 cW35vh4+5Nx3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E73EEF36FB
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177304349357.20036.10600970255688365908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c872a906aa22a4e1dd354e08e30f6d274e6076a9a2fb9de0088da8265585713d
Date: Mon, 09 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773043493
