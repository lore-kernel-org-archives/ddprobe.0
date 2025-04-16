Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432F02236F6
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744846194; cv=none; b=Q3b75is19nI9Yy6OrDiIMhjOXA4ho2eRrBqv/n+h3/mJVTm3q6lvVeAHWzl3N66WX2+Ui/sWwC8o11kaVDrzpy+EYa96xU8I/wnb0SZ/FYWhikrzAGkLW+XbEOtFIobQNukqhPvFzMqSGjfCjKCaBaFED4K1McJTgWzicEWbz98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744846194; c=relaxed/simple;
	bh=4xRqogXi0J6oTkL6PIiLW/b1jVqJ7AsrBBDrT112tQI=;
	h=To:Subject:From:Message-Id:Date; b=iSHoroEtGrGUx10EhnvUShFnjmdj8T9lNB/cGdLg2ajZutBWv9HNfzR9D0ATggOPB3pFR3V7klCxF1yKcpy1WT4kbQonRBIDXISQupxIa1dpcz2sFLxSjJdJpkUzr/ZFWlOzP0htpNP+MqN0yJOLHdNPGREdyE902AZS7pI18YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6wQ5tsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6wQ5tsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CC3C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744846193;
	bh=4xRqogXi0J6oTkL6PIiLW/b1jVqJ7AsrBBDrT112tQI=;
	h=To:Subject:From:Date:From;
	b=o6wQ5tsAXt1iUE1uuzxwcczXZwboeUkb9GvCyHHDoSa4ZMyywMzvhGwWgY1BoyZJr
	 Wc19nL9t6PqhtdWiS29ual5rqk3BCTR/1Onf5+iKAjqmBxPIvW+AHnjtt0+arS5wAK
	 YPpfGbyEu5PnBsl2phxftx1KUkMpW+lmhIdwphptBUUyo/HOKplKp74Z/Bsxb9RW8t
	 10o0tlv0C68YoW1z0WFuWWNxC2/4R4dpQZWFueYbuqSrOIHdsRESDaKvkcFJu7lURc
	 Aleew8LFRepZnQcSprxfAeZAMLMJLQHC0EeSklka5jR+Lp6cGHYfjRYxdWhMwBmZ/y
	 xIzQk6Urz6apQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9100DC369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174484619358.17667.7798040991343852140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 093d91c24a33b8bec8e406ec7d3881f333a918b9f290e6ff4ed9cfcda386e8ee
Date: Wed, 16 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744846193
