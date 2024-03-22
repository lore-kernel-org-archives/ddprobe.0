Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF390D51A
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711085297; cv=none; b=rCmkTn9l3vwwGZKFUizT5VpA3NdUCbv9fcQQaQrXOtJ1nVtD9mO+aoPUC9yHThO+0f7lkzemFz4ZJFqOzSwCkOb/veGdb5phH+pfA+xX8EUuOCo5B8nTzGVRIdFOD1t6SD/9+uuKXY6Tn1/qUDaNo6uD6dtq3pdCrT1Azb3abQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711085297; c=relaxed/simple;
	bh=rnueRrxikdiZBNjovClHLuhthJwTR2wIBuPU28XBSQM=;
	h=To:Subject:From:Message-Id:Date; b=heNIqK+h+BjCr5MxerwCn1bkRByBriaIKhMit51ug8nmm2A1IORJ3MuTtArh+n5wOV6gu4LKfPFpbNJMYQDiR07NkyrvN1/fO/ccMYDBMN9Nxqoj6lsGs8qiqZagOJzRaN0eGVD0r3vwcWIsVJJayBk3sP/tjheAAc33h4b3cJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZA84Scd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZA84Scd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A7BFC433F1
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711085296;
	bh=rnueRrxikdiZBNjovClHLuhthJwTR2wIBuPU28XBSQM=;
	h=To:Subject:From:Date:From;
	b=lZA84ScdA59q8XryF2Ek6age3lP5RRo3qhPg2VbmOTdMJ1Row/jGsiaU9JHL8qoPR
	 dDLPYLid8LrnO63rmLI17bTH/T+l0372m4/iwF89KnsbDQ/+dPfQeOhbwb5AzPUXCI
	 aq7s9GhwxTavtoaOmHNSxPmrM3dLWcP9dq875+1OLOK9jv78Du3VYfIywY4ch4LG/C
	 535J2GtuDz2MFncB2HF7Uy2gvYUpy2NBl33yaQ871GuuxhLNM3q7HcV4itOkzzEDMs
	 ZXepNhGvQLW64H18c8Y35Um44/4ap7VAPIvpYvniU2Z9q08aAQmdIObzbMwbt5wzrl
	 V7feuV3bfWnYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F33C54E71
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171108529640.24476.3969912107861064773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca896ba70a5a01dbffff566c1d88c963ba8182a827f796d7f67b2f069b91d1b
Date: Fri, 22 Mar 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711085296
