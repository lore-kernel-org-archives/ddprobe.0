Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0234E1AA7A6
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770204234; cv=none; b=ZSvK0iT97XfXV30BhHtYbRi4PoPThhKBzHEK/2rsL33LZ3f8ygRPgkCUa58O6WXSPb3atXR4nXh8gA0pBxNXk++IpOVfJmX63KG8HSSGFNu9nZd1dLJRnV1VQIvTSiBh2n1KBxekOAWtkrBBZnG9HYaoyetA9rLcDAJb4+OkArI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770204234; c=relaxed/simple;
	bh=eOIhBxOsfuD401dILF1hr//Euw2ztpmIiz6bwXsR8cI=;
	h=To:Subject:From:Message-Id:Date; b=aWA5YUUGn/ig4m22DRQXn4KkhlQHNxFhq2shZr6sMtpcqBpNdBAzpeA2F6fdhnDkb/y9DrIbjQCc7lojVuUt2QveObWRs9WZbZyxlPS6TnFxQFksVeou3WJfKYROsv9KavD+ow48H/7POE31MQXttrNoGz78CyWVGFOPZzKEJTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=chnADHSp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="chnADHSp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE10C16AAE
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770204233;
	bh=eOIhBxOsfuD401dILF1hr//Euw2ztpmIiz6bwXsR8cI=;
	h=To:Subject:From:Date:From;
	b=chnADHSpMVW39YIBAhNko5LdGwRRRDmUX+afxNQ4R4ArZtQRYTr/ngbiM5UK3pkuG
	 /QZfIsp3YAt6yabk75IVgGJW/8TwLRaRj3mj4HG0StcXij8v9bssOn9CDOuJ4SBNJS
	 1kooDXlfrIY21ONNuLekBgA7wLOxQABZ0ueZlVenZiacLgL3uXHJlzqZ5vWYEFVJ4C
	 hpXQHLcPkR1pgRwkTr/iTNbeUFIYD/J/C/NIj4pdvWFm4ZwoAtAsnTiqQ64I0UnsdF
	 uTzj/i4wbI0T/ZptKQd0IaoaVzb5s2Msavj+EurG5YdxIttFOdvd2E0Q/c9FFTDpvF
	 YxKMXtUdSsskQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B03E95385
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177020423360.18264.4775455024788305481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 361df3ae1454ac63c8d938011d48fe317d2cec841cb79cdec38af78b9c94792e
Date: Wed, 04 Feb 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770204233
