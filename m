Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 018501FBA
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721547954; cv=none; b=tNpDDIoim5EXCICYS7A0p2Jztx+SCgP6IcGjBxeFCdWxvjDmDrFumJRu8pd0PxbsmXpWARr0Iz05MuC4bbZ72Alz/asqdde46W2cy/jlXRPVto24IwbK9ZS8KAxO5Y+iLn77BGiODBIZk2Lb5miY4EJ7KlMLnWQ2IXS4tldOv+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721547954; c=relaxed/simple;
	bh=qa8PPiaYmDFnAYHRIbTBC9/Uw+FFeOE9x9AnhpoVO4w=;
	h=To:Subject:From:Message-Id:Date; b=nDVNPZ1h+gwvYoxeD+sHfVcQlwUKTcWZko94y/5IABnHIEMQ/5deMJvd4vEPzzM37QrLNu/P65VoY1CBfZkeRe+fA4k17EKqTrp1n6xtHqoXkGmRxg4UBjnJdVpI6J08swPC9jOitGQSNZmnrUxkVC0aZ4KDFsfJk4dIN0UZprA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aboNMjaD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aboNMjaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C84BDC116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721547953;
	bh=qa8PPiaYmDFnAYHRIbTBC9/Uw+FFeOE9x9AnhpoVO4w=;
	h=To:Subject:From:Date:From;
	b=aboNMjaDjBk6GW0c18KGGEHLlePflDppOS+2Z95NFeStl5twJMkhkZLlfg1Od90qO
	 Lvsaqu2umHQjh5hqQ8oLPhFecX0MzKWIrcyJ2scmddAUfkl0OabmEeZlCgkZrY+AqZ
	 VxrTaDHPqgH3zuBNMQ4/qbZ7ipnoixE0no2jUP6amSN7MAs05UM/LWjgIbSiPPzzCd
	 Tos/MnWCF5/SpJwR7cfcDhC5QE760qwOK2272OnqWkX/XyTtCYDlAzkEQJ6kNq9Rrk
	 iaWsuygfpv1gcjEEzElB6Dyxsw1JKotGjf9FZaxe54eb4GwVG+syy8YgHBOUi6H3vM
	 T6fP7wfz6TzjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B168EC3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172154795367.31369.818012168018760509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b5cb8644f11064539baa0a1d5b763e99d64533c9f1bbadebaa46ca74717936b
Date: Sun, 21 Jul 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721547953
