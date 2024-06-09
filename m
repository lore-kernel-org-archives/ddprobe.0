Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D8E04405
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 18:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717959443; cv=none; b=Jy6QyhdBx03DSOewH+Wnjz6vFic2d3d32jH3v3sG4j9fpqu20nT0VQ27H9WGSkVcZYvhp7lT9VWpaotSxz2QUiQBOfOgfwtswHiA27yuSDA2iS6ENJW4vJ8FyzUdn5JlT8jQEdEAG77l0zTJRgJUfjhjAZckcgQS1q19dJoyfLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717959443; c=relaxed/simple;
	bh=2lbcjFnrljxjE76stjE75uG5lW/7WT9QaYMKbUpWcbA=;
	h=To:Subject:From:Message-Id:Date; b=LcTIZ3bVvnQGGDfcKuBjnNxzAGruX8CCIA2bGdG4HjWntaYB07bkTl0M5zcrtyzcMlY0hrlgAKmt8YGwWCkMNLVTHsr045oOmLTwK8GruYAIypPgHyQ30o5CTsuckDsFXCkyTCAaYpAQ9jh/vzAgak1s13Ss5/CMKHuwOVlTXB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTOnej38; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTOnej38"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2BACC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 18:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717959442;
	bh=2lbcjFnrljxjE76stjE75uG5lW/7WT9QaYMKbUpWcbA=;
	h=To:Subject:From:Date:From;
	b=eTOnej38kXbAIkYPFYJfG+DA1WqkvfFunvomOLOF+iSiz9fV4M5WfOSRJNRcicBuP
	 xxuz8fNFaWAxtC4Ygybpm2eSopAhu4eb4qZK2VuWI+X0CT3S2VUfGoAB95cLln6VG3
	 lbNd/wzS/doN9ES0BleNwPBvxD202CmCr0jxbpD6OO045uq/CU535/yY2JUIX9VrHQ
	 GOG5oNaX0c25yYU72kPLpe6irhOAxNC+NNr2ZrAcsGW8qf8l7glhGO3iJaEH0Wdh6G
	 Xnr86SfTZIPlox11DXA3WHot6Qxvo3OSBcG12BM0G6PtZQ8Sy+rOXZF8+SzsN7j23L
	 l1DC6oK0XFKYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD7A3C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 18:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171795944280.18407.8195517936397565676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e6b3eb4ff206b202d9be730ec2a425d96e1f84e4e33dc9dee98ca0957fd1d0e
Date: Sun, 09 Jun 2024 18:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717959442
