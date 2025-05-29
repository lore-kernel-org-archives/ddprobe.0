Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02E51F19A
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748540993; cv=none; b=kFacJE43Ghr9rzc98zmNuL7eD5R7Atd4Nwr/yrjJWLJH/QGPdSknDMjJ5Z7cs2hgopzvcvjm4aEI+pMro35nV2SC7o/YRBuuBhMTfrDTmNk/K0eM3s4LSitWLut9IxtuwH6VtESU7RYXXY0xcyDvTyGjC4sXIX+Wf+DyWLopNJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748540993; c=relaxed/simple;
	bh=J1yabmRXd8zRQ3b+APd2w1TwC2E+Gca14CbSpFtoSVs=;
	h=To:Subject:From:Message-Id:Date; b=ANNw1uphBoIVugc/n4quKo7vZ2la1uTGZRN7oJ6NpZZp0xbud+R0zbdb+TxnZvhulNiKabdqck2OiD0WK3PMrI9R0On5H53ztC83smea3Aga/P3rSjHildYOldtqRbXr4NBgJ4xwfUCqpvjZGxn0DVYkqnVrIEAgM8Bhw0Xf0nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orYpllCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orYpllCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E825C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748540993;
	bh=J1yabmRXd8zRQ3b+APd2w1TwC2E+Gca14CbSpFtoSVs=;
	h=To:Subject:From:Date:From;
	b=orYpllCNfsxwmql/bpAtR9VAhwMNZzFC4gudFbHuceWYHRfRKSetCiDlfJF1yHX+M
	 XhZI6hhz8tfbPgzRSvaode5u64uZHlZ7OXlQ0bk0nu/R2GpRiROVizQWqVsAPJHSZc
	 87FpjIDf9e1b7B3hT8Pqn9XBfe+L5frxASNf7gowkn4xdXS5BwdaGuhZnK/jx6c7xj
	 Cyy95EdCP0H2kli2iIA2qSEeYnNBlm5XkZYXczaroZtth8DvWN6pXh/ju6JzXo14L1
	 Tna4EWbdb5v51pGG0KrQbe9NF6G4AaBlw6PLx/iq4qURBW4z3AeuK50XrrDbmh+F9k
	 p7XVSAMirt4mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1B1C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174854099357.30312.13086266852494183514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 734b0aa7a28b64426eb6fe1af15673bd1926fbe72fe8dd53311b7d9c70b2d9d2
Date: Thu, 29 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748540993
