Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3048B348C47
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779353434; cv=none; b=X6EfH/7AMIe+OCKbQffzUj1QynAdGnEZJu91/zdVNxqjn6UtsIenaQNfR47IEl7OHZxpGkYYN5x9k8RG7gBQscG929pHB+6LKgwavMQaKbW9+DzgnUhwIgTqEgc3HqfxB6KcTINtUA9JDjpUPCI19SlWzdl96dxMU4AJkGuTnAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779353434; c=relaxed/simple;
	bh=okTmbBhl9IEfnS41vcDWLtz7/JUC5OrHxxjCfZ7kMGQ=;
	h=To:Subject:From:Message-Id:Date; b=eB9vLT6LFWwqrm42bRI0izmTDcoK9UYgHVmEyU2644Vgm2BzkNFuBcNrPj3s6z61J0ccbJh19lXtmaubKXy9vBJ1WMjFkI6CJKbrvxuvPpA1jYpSqfY8Ga9gmqcuUH17wrokQE+wTuiE/O2hnJ9LA9udwT8eQL7B+v6m4ZoPf9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRsSVqjw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRsSVqjw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D23C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779353433;
	bh=okTmbBhl9IEfnS41vcDWLtz7/JUC5OrHxxjCfZ7kMGQ=;
	h=To:Subject:From:Date:From;
	b=PRsSVqjw0mOePoA0uVgfBSsvqeJP4PvbWkOPIZ0Z/vR6vmKLWQj/kG2cLcOQbCq3f
	 q2rT13w8WAE5r8d9y4doCgx/OpL91QBsVdlhYUvKTh/bGLEAzxWaqbmQzv+W36KxEr
	 85ok2KNmVcmrerPmq4blzVD/hxUV0JA0i2wgXGf2Ms63YMOoXWGzf89/gQz1u9gAJz
	 xWJ/f/oPjPvuwPZiSqQFwVp2Uiy3P0a+JVNT94c5cGHE6xeLNO1Y5fGVPsZxb+rH8n
	 /8GTk6ago56kddujNIqjcxsU3IRn+/DRjl0gJ8qGvHmCeVngBcMfu9kUECAjdga6KT
	 tEkPzXjcoIjXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC40CD5BAA
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177935343370.15806.12546799186801374219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eec90ff1a8058251c6ecf1f8c35d64d90e02ce17cba48cf70c56d1f84e7e489f
Date: Thu, 21 May 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779353433
