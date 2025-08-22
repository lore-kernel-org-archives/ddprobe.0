Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A40AEC2
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755822594; cv=none; b=FhCMuAggFeTJJjCxVFZWsCeK1mqIq3bBaESzNQEJFBk8Lzb8TMg1l/WKlbCJ5AJKqlDL8DurRQy0sigABSJIlb21b5CLJEikvwJ6CI8+XsgUYL5fpHsaVfbeWgfk0qIBumvWTvqJVRi3JEMXAd+ADpDfa3qyB4r6QpW7VJUtlHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755822594; c=relaxed/simple;
	bh=MATT797xYiCV9FPRjyT1uyqQ9qGtkxlNWBp9Aga1v6c=;
	h=To:Subject:From:Message-Id:Date; b=NQPVmsP1ycH5r2XAG2/pwWqhSKkSjMN7xi/b8HtdbWglz+FppitNseLZIg5eTPNWIe5qO5U6oScVGrmuV1ycv5m/7LSs998eP4T0YTqFOVwi7jzTYcgkYXYDhUEY9aDnxT2IFuj5C3OmkJuRlnssGOmxmBSyKWZIr9GdmFv40U0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCVyJAjq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCVyJAjq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF218C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755822593;
	bh=MATT797xYiCV9FPRjyT1uyqQ9qGtkxlNWBp9Aga1v6c=;
	h=To:Subject:From:Date:From;
	b=TCVyJAjq7VSjFT/WOB1aoCsizte/6By/0tPE6qcl5wUxT2T0swQ6f71WnX7T1iz8S
	 2obxoBfjY27Ws7RA75a9tURiEzN1i1PCs5qYR1d5ftkpNBiB7AoKsuKXPXw38N07b7
	 lWAas3zOwBI2lWxXKKVNvCEVJN4w1Gs54xmHjlgKdQuRet/F/iCMk4BrTAoN3JwGer
	 8yA9DCvLiTZMK5qFyTI1SWnMgTwa10+gfWVNRubTv2/x0qZnUjWGN65ZNgjeJyecOa
	 eOANfglAE5CSPwaedCUB5sVgBbNbzqTen0XsLwc4B7zXGTv64fsbjzn7VGSfDpyMBx
	 fg1Wawu0d+Www==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB6ECA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175582259363.23185.10322143632108723273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e06befda9b31e58942c42c0138767019d55620eb3bb1cf928f51c1ec1c33bd96
Date: Fri, 22 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755822593
