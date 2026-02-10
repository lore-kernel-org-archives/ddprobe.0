Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8BFA1A256B
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770684834; cv=none; b=I8BDjgScm/mwuzxpQTIr2NplHQFElrOtv4igrPHYEUkZNbUwsL9P4FOkGKydwh63Goby5PWpzxYhOErSltjam+b9B3/5Vi0tJpPA4n/dmEhoa44VPikxPKxNKf3/gXB+PUeOiFjLTo6wj9mHcgp6pB/qHalEz6yznZwMtg0ezDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770684834; c=relaxed/simple;
	bh=kWNCpqBtJziUHxPjL6ZxnWat+PFWDCYbxuTJsM6clmo=;
	h=To:Subject:From:Message-Id:Date; b=UKsaLxR2YbE1VCVFzPWehG4wsxnmqO64nswNhr0rY4x3DpSo5nT9s5ftrCPzZ+qvHJS/Yd18bipxpWdKcvEtEbLvJkGS9A3lwkAR15OjiZJCagqB94XWXEP2DNp+fRlJlSBOBqpoSjEQZ3M5n+1xnouwwShLQ0uUKuC2Y3GyYFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwYTI80q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwYTI80q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B8DC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770684833;
	bh=kWNCpqBtJziUHxPjL6ZxnWat+PFWDCYbxuTJsM6clmo=;
	h=To:Subject:From:Date:From;
	b=CwYTI80qW5L0cg2uR2DTQ54/uSQ/n9IcmHkPz0B1YxQg4MYcH82ltHOdEDYgSzDXI
	 sQY/5j/WhZDvEhjc0+b4tyqppAjKN2KfACGJdi8r+RDjHUIQs8ckR/owUszeFFhVs7
	 U+HDyNM/1pFlj5Yz3Ul3qHibKAd4kl7fhjzcudNdB2fbnmXmZwdzghPsq3cC0shzRi
	 +au2mzuDtPEbaStSXmC5ddjCHgjllt5D9TWjURboxzY7Jdi+QlNn6cBpWHt23VNLTb
	 LaL7n51lsJ/zJwmUO/dNldRDlu7OrsQkb8thuXtXZAEONL5TUkVMCoRbBzJJncAi0J
	 WDJNPgjqvIGkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB97DE94625
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177068483368.23471.6783261796909757435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 514478cd8bc060ec8100aed182f7e6a22a1750d81f41273f3241575cb7fd27bc
Date: Tue, 10 Feb 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770684833
