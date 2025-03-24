Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E765625E444
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742830194; cv=none; b=I1UksS/fOqXowuNuRMBgpEKQFD2LqCbszvlYr72DhWSQP0WMH+epRsmOiKPI3oyy+kzTnN21NyHRypapuxJUIpVqzfK/XYBsC4w+lViF27kgQABVNiL2Wazk02Om7TaML8k8BBtIsOi5bY+6a9+1EWQreTa4cDsh9Ph5InFGsFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742830194; c=relaxed/simple;
	bh=3GD3CGnFanfiKBadcNqYXU2C2ogCNIpd1erCCi23dyI=;
	h=To:Subject:From:Message-Id:Date; b=MH6XqerBDr4bQXGz6pg8znMMhBeTBtXgmZo9bP6GzAC9Kif1Q6tKkDiwTpsN4GzOz/wfMwPmrJHBRinIXxuCeI21OQtMLHh5YrSbN9k66H7EMnfXmDT2Z/kxyYc4C24n2+X9T0guq8tk6Ym3ZSGYLwGzTwt5g37VnB+lgPDZ8sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qi4kIv1J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qi4kIv1J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B52FAC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742830193;
	bh=3GD3CGnFanfiKBadcNqYXU2C2ogCNIpd1erCCi23dyI=;
	h=To:Subject:From:Date:From;
	b=qi4kIv1J00mKRZW4d3TEcpN6KOHIpst/pwERWVQ+PBm7UHTNhajRrsguOgUGtxbyi
	 S/howkgeaUGm0ezoUqrDYTnioXPLhX6T0f8z4BnW5kk2fbV10l6naVh0XG1t3d6lTG
	 xcoRAzs5jceY3wFWYt7g0fq+lG5vBXmEIfD0xARXiRZpaSA5CarecdHeNWEE3uZByG
	 SaP8e9dftJWycK9+eSje5w/Nfkm3mK0PExjMKC2ifZePtvukuaUkIFw3IWx4+Q52Xa
	 26RFhWQpKmWwoKHCia2EKGT2BCE9+d/orMRG3mn/ItRDKghkV7ALK19BnDTe/ty7td
	 0+HH+xBYy36yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F97C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174283019363.28719.12693046699699416394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35589ff2625d2afd35e017ab8df72f028e2a57df21ed2357fa12293154342246
Date: Mon, 24 Mar 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742830193
