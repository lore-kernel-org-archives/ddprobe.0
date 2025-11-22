Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B89273D81
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 09:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763803314; cv=none; b=E90atrU1wX6USBJ3J+JOtfwPYoI+k8mK6v2TkSHbjLNFaUyADmidH2V1e/JT+HmVSkPsyYpQXqio9fibsI7fx8FGB7b02/NUinR/KGCWtGb77Qt1McKPvow+E0mC2X2MvqsFQ0QlYvcO+eMKeCKwxsbI3VjQxvkFKMorKxD20o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763803314; c=relaxed/simple;
	bh=UpZUMiPZ5fbF8by+/fGBX6SIXC+7hSQISpRViv3azXQ=;
	h=To:Subject:From:Message-Id:Date; b=ooJhKWtOOhIrCO5ltGqXrl3ZWoNAJHI75U//2VXL2jw7N5OVAYG7u64Ft9wFL3BIkdSshLJTva/qRc5aB/9GzPip8Eaaj14ZgiQzpEMs1ejUOynZljVTlOwfwQq0nIlS+LDg8T1/EbkxGnzC9mAhHTEzXQXOtfKJ0TthquwdFhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctx+IROt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctx+IROt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1019C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 09:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763803313;
	bh=UpZUMiPZ5fbF8by+/fGBX6SIXC+7hSQISpRViv3azXQ=;
	h=To:Subject:From:Date:From;
	b=ctx+IROtqheAORIlVhIGPZahAL5SSmcA99jwEKiXtiTEYiQ/+XwZtxwNRo3Zyqtk+
	 s2TH9fTtjQlp4/igErW22g/gX0HOXwy1sUFBqkcdl7caXO4WP+CrKjVcb2EZgIh3cM
	 VLQ2vQUZaaqF3HqHm1p/8gE8kkbbcdzPafyI+2VxATDG92O/uypG6sC73gPfmcnQIj
	 KCQDjfIpe9CFKdWuz0Z0dvNb6sNu9yNzjAQ0dmaKStNvI7XYfB+nPPgYNbpadPHzlz
	 8miIcUtONxDeo73opxYixeXbGGxl5uxez1lkMEQJWJ7KMjaIfUjM8kslXUXT9hIRmv
	 cu5Jt2f9umC6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADCBCF64B1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 09:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176380331359.3545.16457604807522905867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec26f7e98905309ddb67299f9f880f57af0ba90e997a291053546a096c8ccadc
Date: Sat, 22 Nov 2025 09:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763803313
