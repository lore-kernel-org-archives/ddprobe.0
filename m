Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3483A1F1513
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766373834; cv=none; b=M7jvrJ2VKqlWxMAkC7nf+8kv3WKY/qiutTljNo0yjgy8VdUNYuFUnFqMzCpKrejY/HKbamAE0pWf46EPCqjpiOdIyoHt+gWQ8nsoVvOBsyIBtWPh97QUJEzNzXmQNDWqUhZP6k3DuNnHv2Xvuo7uOwi20qvaQrNoB8wGwr+HD5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766373834; c=relaxed/simple;
	bh=z0Jw+rljkfUa26rO2VXiiPGFOqJkJwztm4i4kSeFAz0=;
	h=To:Subject:From:Message-Id:Date; b=DXXJ7aIcV3ETwcrhU4gdu4U6v/ZMTlWwJKDuuebB3ayfO2ru22WMcVhFrT/Y4k8a3+xRPuA5GSc14Fr0f+l76oF8wMG4GHt5yZA6PjkFgwWIEY8KaJELR09wdKNCoivc779J9M4CjhrImzcXWhUkRdiqrD4bbRjRiFDdKwOC4tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPbNBTwH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPbNBTwH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF4BC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766373833;
	bh=z0Jw+rljkfUa26rO2VXiiPGFOqJkJwztm4i4kSeFAz0=;
	h=To:Subject:From:Date:From;
	b=EPbNBTwH0N4dURTzXd+miFQU2rsXERKjUIyUCzCvapC7eVgmbbWZVzz8LJ8UwBDrc
	 BqMeBarTQ64tfelD8B8qhUIcq2/hp2CVDJrzeh5RVaox4tKIcHPvaqfdR39i5LOSOl
	 wzIqRJ0gS888bEeGbZcoBSeq4k1H5gN2W8VUNuISlA42T3jaJctIafZCUTLT8/umgL
	 nZFlDOS+5ODkgBdnkmvjiWbTeyte2lnZiaal3VVaYKoFpUX0xcCobXQocf7iBkQi7R
	 rP1ZkwRkDdzcFzNF2LX0q02WIt1/1+NDPcFZ3RqkTb1rBEUmuMm6An3/HGCi1qNYRF
	 +ET7fhiwOYwUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99473E66886
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176637383359.3453.7690912581230696045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af21cdd2aab48ab313d5f7569fa1b5706fcd44d4b8a9104a9b0333f5bd8c4952
Date: Mon, 22 Dec 2025 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766373833
