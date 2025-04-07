Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3724621149C
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744044594; cv=none; b=Et4KyvtVjbkaIeiSdpAqaNa2hyEaANV74SUaRoD2rEzoG3pU/MBu8ADAjP32TK+i0ZZMmFgGCdfRpDG7p/BObBYELB0LkkBku0SLsHfk8f5Q4vjbeUJA7sJumkn5xSwBBZIHm44NaCJA9WfCkUlyHgZXFEc9JAf1KIu7nrpWV9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744044594; c=relaxed/simple;
	bh=qmVE2Lnyz8CJe5tH6RSUlcZd93UFHitH/9HNKZR/xFY=;
	h=To:Subject:From:Message-Id:Date; b=K2QgiAZo0nB35i1+hlDVfgydPHPfpntFgrXAFnTuUhUhBdXkr3gOvnN6h4/3FrA/9UWeBjhPUaVW9HOYtKnvKLSTf525o+WOpz3HzqThrWcL9Xpaih4znllXKypUYTBxxu3Y9iXSfLdvxfSBGAb6yzua25pBLb5KPKfGJ1cnl50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G6I81v09; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G6I81v09"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BAFC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744044593;
	bh=qmVE2Lnyz8CJe5tH6RSUlcZd93UFHitH/9HNKZR/xFY=;
	h=To:Subject:From:Date:From;
	b=G6I81v09WaawbIj0ElDHUftxcP/WlbWSMwMbZq69fBZHyB9OqD24LXg6fI+JTk2Ci
	 GXFH+R1f3Ytfe1D/DS2+9zrUl39MErNfUmlhiOa+gZiYuKTNujoBZSEuSPJ+hocI/1
	 mjmJNzwPjrysnfbzC64AlV9YauTJy1ZEZ9IS/zprwZxqaaj7KuE2B6FRl1VGXQhYpr
	 k8KDj3N10ad5XMxIN2hIVpgcHDUDnDcP1aAj16nYH1klSO5CJTNwxGfUmNqGhSmixf
	 tOIoXfqX52ki7PmmA095xQkNHRF0bZ0C6rbIglc2ptRV8vswvFes2Hh/pWik9P6Dbj
	 gdZJggLoxGAGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A0CC36018
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174404459360.7675.12056160863361635636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15325e598bc86637f9c6edce47d7624feb69655b44d6669dc36114f9c5fba455
Date: Mon, 07 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744044593
