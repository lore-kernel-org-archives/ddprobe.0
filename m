Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3707628DB3
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 08:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742026735; cv=none; b=pW5vrXByCpWKWgif+/445qrqgzY1aP7EW1PJSM2UMTjcYp5Nns72KA374QrJWJQbEDoOK0W6Mb6udmaax6kysxlGFHr+/LC8LoGL9Rg4cuX510JZmPKKOe7MkSiW7cBx/jV0NnXY8w155C8twr6y0I4nk5iqwSN6+mG2oWNphcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742026735; c=relaxed/simple;
	bh=PZdFxgZet2fd/IPxg8zIWHZMyxPQWLZviN0yEElJPbY=;
	h=To:Subject:From:Message-Id:Date; b=ApISrFAvtI0XZPxa2KsJhHjGvswPd5qfjGq9ZCqWgEN7+STM093/8cPA5UzPSAcNGGD+L43a2wufR/35npGJqbuslGKt4mSCp7dMw8QW30smBrrVyVdZpYawF82N3YXGJMB5yo5hOxVns4Rvq5GHJanJTxx1ABSHtRmt7W31IDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvCYhEML; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvCYhEML"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FE0C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 08:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742026733;
	bh=PZdFxgZet2fd/IPxg8zIWHZMyxPQWLZviN0yEElJPbY=;
	h=To:Subject:From:Date:From;
	b=QvCYhEML7K3ZzTUgvr+kUB+oPGhNbUaYbpB6HMmAFlaqmrJZyel8QzlbC1PrzQ8SL
	 EndmKdO577zTeBiH72JDJd5aQDasBKofpb8mz11gV2VinqRJS8g/jdEkYT+VheGSdF
	 mEj7Jv/21Iz1eR7N8ooZeI8UqyLnTSd6/qmnz2zShgkZFbOqpEDXkF3GbwlJ4xScZM
	 dKyXZmMxtojCe/EhaTn8JxExKkzcv0dvbvKqOOR08BcGaRvfznSGaC8pT2m9f1iY4v
	 ePASOA9s8UCM74kEn1K11bQ7fHuDs82wyeYMX+1unbIe+SwuY/5CBU3OTCsS0L/Igu
	 9fboDa2IpTDtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94916C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 08:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174202673359.19419.15005818682133040663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26850778cdc15cae3ea851435cebb661eca75943636bb7ab3a011cc705e5e4d3
Date: Sat, 15 Mar 2025 08:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742026733
