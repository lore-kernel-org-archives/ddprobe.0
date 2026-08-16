Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4639A2367CF
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786865434; cv=none; b=gSElcQrnNKg9/CpAHDKvimHDT0qcGEt+1wSchvrQHB0cKR1+oIhYdiNh6xsCHJMngBXyQirgCsbWJs1n1K9Tn/N/GgfE5SFF4jfbNzVK62AfaGXCztwFAE/nloxBih5hWG3H9JIclVwV8bentgZOaT1nXfzt8+gqzxv9fYeV1AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786865434; c=relaxed/simple;
	bh=UvGb2OVWim+esyMZiLreNqcu/XrrK9Zwpw2oe1Q9uDM=;
	h=To:Subject:From:Message-Id:Date; b=qSjbNQT7mZQOTCZPYdHIEifuliT/FzGSpSh7GjI65dFJS7kJinb2ShqarXdjqJ3t2fmLXDlSx11kDmaIzKrvFQa1L3igOFcZYCSbXDNMQlJIzu8EOOnVXh9Qzzv8LouTHioMfrIVhZsOZkRKIFmNyQxDRJ3ZWhK+3FhppwNJerc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kn0tYAF7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kn0tYAF7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D354AC2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786865433;
	bh=UvGb2OVWim+esyMZiLreNqcu/XrrK9Zwpw2oe1Q9uDM=;
	h=To:Subject:From:Date:From;
	b=Kn0tYAF7QeqUXJ0kJ9pE5/GBpbuXOiiKDV5f4zO85WcMzxV2VlFH4Pry8qxFYJsXv
	 aWOlAsv+/S47hxu2sGiNokxwq2OVj8zIhDj/2JwykgxCg9jVH216yTseErRJGIl1VY
	 Av9nuQ1WiiyaTaf1QoPOT4a2p+5U9dnu9EzK73ouefAtH1glx008o1JNhgwXGca/nN
	 YRGTjhz088HbkoUI/ay1+QsCfnbIq4Rk+/HSYjZf6cA2qfSPKWjdGS5rM7f74vruDY
	 idEhHmwowOXWOPDxuhrbHV/wS9rvEs6/j5Fu5VnELV4HSFA95WGttsB/mU2ZvZ9zuD
	 Rjq1Q/zskRbpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED56C5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178686543369.27467.7706992505181818581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 649fa136338f9f09b13376e14f67af39d15d2e88e13b3e6f0b32a055aacf83aa
Date: Sun, 16 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786865433
