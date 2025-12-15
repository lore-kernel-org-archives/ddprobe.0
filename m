Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A85030C37D
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 08:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765788174; cv=none; b=HgPdrHTgebNFCuAIuw94SYOmUJOxvCB35+4A3nS8xNmsmidSIL6hEUo5VGKikLwMcSzx0EjnMvJ55Pj8B2XD9qowrvXMwKMJL7kkaI4ZunYX72UfWM1OHnBBz3mLqtFajSEtFadRkZNZFEcbhIKNGVwPHTBa8AoD9MpCin8HFZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765788174; c=relaxed/simple;
	bh=7xBrsyPAvtGjSgzsLofN4e70HHcmJqhXBBYIzqOxrk8=;
	h=To:Subject:From:Message-Id:Date; b=O/wkw04T6O06ArE5WEbSNqvV9pz2w4IWG0SO6AThvuvVDWvELpS1vw1oXhWjD/DDmpxUL+IpkjAY87lWqdnPrnkNHx+nAwOwF5HSU3DM/IAKYJqhG+7/n4SQ1QfjFI6bX67IbTS0S1HccIsUddissd3eEnh6SMgQVqhVsosLQSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKxmy4gW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKxmy4gW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08C0C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 08:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765788173;
	bh=7xBrsyPAvtGjSgzsLofN4e70HHcmJqhXBBYIzqOxrk8=;
	h=To:Subject:From:Date:From;
	b=bKxmy4gWWD6ltpxPeKiwKCuYBf4+ayzUMjv+56pzEWqnN5OeXKQ7qvd813uEXcCUp
	 gdWCDEPS8g/8tGBCiq+jJCAeiaL62xjoJXQgNIwiglD1+Jkl6TxdWgTI2i+rw2MSVa
	 t8i7+7kbiFV7Rhvpz1oIaPrUQ8PZKOj3b/QvyY022nYTxPb6dvyfhH/VuWSipgl+zv
	 XTch4k1bH6aYfDQQ09rjnwNPaoDHgxUmGVh4xiOZXxC2HyHtJuN4FlAYXjZxu326Sq
	 pProrVHJfmjIMJTHPp4RlWuPDLO4K2KUSMwfbTHqyEvL1rekBGccEA+oekaip9dNq+
	 S86JYXLQGF8ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E3ED41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 08:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176578817358.32336.15599709641426872204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39960e7b58691fd032ef563a018a479ee53fc741165755bcb6fe89b5ec61693d
Date: Mon, 15 Dec 2025 08:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765788173
