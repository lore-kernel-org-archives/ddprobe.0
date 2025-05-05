Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306733F3281
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746488395; cv=none; b=RPHfi6ZBWr9JuaUtxkyAwCF+yKCHNn+I9UjRMtxEkx6sZ86Gy3ELQRt8CdLD8Y+FHQo55bd0ccOudSQxAkteoVhtNVH0pXkcdEjPdIotSZhFVxf2/cdopP8jxcVknCAM1Lfk9SKo1/ABZcBeludE0ZFhxBug4hI7xx5YBp3XJXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746488395; c=relaxed/simple;
	bh=fr8nZgZ81U+6MYuJLvTlVd7QJpUC3UNaFgyUdiOYCsw=;
	h=To:Subject:From:Message-Id:Date; b=coEiYPaQDBARlyc7eUdW8Ii7eR2EcfVwbimt8ez8vpvJ9fqGKJeCVeG8say3RbG0K2Z4E2R1ke3+1Lj5hEQm2dKQun9v6d2u8Zo+pCDdQWXKFQhmcL8Mj7xVLfpdo2h4ekF1XIrEEc0Qa3MHv9ira5uHLwjPLCI2EyFIBFYheaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKGckikF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKGckikF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A135CC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746488393;
	bh=fr8nZgZ81U+6MYuJLvTlVd7QJpUC3UNaFgyUdiOYCsw=;
	h=To:Subject:From:Date:From;
	b=LKGckikF6ontjcgU4VzQyp9TuU3VSAHhrEleJlLl3ouIMPS65tPpejU+uRY/9ajPZ
	 BS1ygDsNfWJlLgqXTmR7biEIHdLRPACAqbCGDJlKfsgRcw0f1wU+t7ZWhyC3iqA3Up
	 /PY53LROwmrgaP3ksxy2NZ/FO4F/EBKwdPBGclA33/4+afs0QuCqbBw1at366gUBZb
	 yNN5+kBKV8CW3L+Ek++tBv1IV0gUOQeIE/ZuMQrd5vRuBq2WPYqyusiw1a9mBuDh0A
	 dMNUil4G3MnKFXhvT5KVN29u3CvB3ynHzAh65FFnKGLBFIxK+TaKnwx+hNgC1m5rrX
	 fJrvaJvJl0NUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E247C3ABBF
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174648839357.26049.17871054162300514137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd7811365ec251e910437988231d0970b110cbeee22cb615053df4a1f681aad6
Date: Mon, 05 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746488393
