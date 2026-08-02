Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55AC137FF71
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785674434; cv=none; b=t7LCzsuLKAsMhAEXXL3b1NhKgvI4ywo/2Fh34v/uOJcx6F52NB2nlx67//8WfFa7RSK3xWELrWVC4VRBs0ZazOOJj/2484iIbygGmISIm89TcWAEle788l0LbGUK4885JZwWF5WLoGZZ444zXyfQYCW9Enlt2U66wAKuGA72G6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785674434; c=relaxed/simple;
	bh=xHP63KnuqueebkIQjOulk2rbtf/gpbp0BBjEeGVzZ2s=;
	h=To:Subject:From:Message-Id:Date; b=qovKhCJlVL8ielxNRkij1Ia8yyzc4IJ2J7jbTpFXV8D47317XCXo1reTjrnS1T/svxEC1tJVXTdW/PWzuUT7z2YcB+BOyktI6a0YbjIp9sG5dPkeTjNTnBMejcKBzZ5+d1K/xTiztMDFiLHIZ0ILtHqVdKMlVo6fawowjwnIt3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPn/6DIQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPn/6DIQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA23C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785674433;
	bh=xHP63KnuqueebkIQjOulk2rbtf/gpbp0BBjEeGVzZ2s=;
	h=To:Subject:From:Date:From;
	b=XPn/6DIQNPvAsK/L2hUb8Rt58dFaq4fI041EvJQ8lp/0xi3SnXjYkRU92Jp7KadCZ
	 mXv5LjRrh4IfMaSb+4LaCONrFoT3ppTZSicUfk21QZf48eEgZi7O2yrgAYKhcT1QlG
	 L45tHa1Do3xxEUlUdSjXD9PNZmUG+SGFb19/t4RKxDYsgmo4/uNW9cV4oPLLqxsavQ
	 MyVQpTlntXuhLYXIr+1O2rAT0kwaFr+7RV2P2ErkjohYgUwMZS5f98afYcEWOB+QfM
	 d1S5fA9GI9QWXLhUcBlmnMqSDUYm5dwCdlDGTZ7v8uRUNVy5MeZuo6I8Gue43fYhii
	 W28bFHI/T1NOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDBDC55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178567443368.13816.2900320322503414254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03af96b38fa40c841a228359f60c9acd97ec466aa1103ba7650e2a1646daa926
Date: Sun, 02 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785674433
