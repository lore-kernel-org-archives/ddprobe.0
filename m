Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292D91EA65
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758255594; cv=none; b=qV9fqukI9xQjiwxoxC2Jeqwq6M2RKcu2CGqLzsycvVqClwQDOtd7Ihtr1dy4SQd60+TG+7+ARD51B/7u5hSJZv+sRysZuCtyXyYz3fCu/WvENv8WZMkmdBo3OIcEgZF3MfDYeQnkeZNiHXkgPO7HX6v+VyJ5pP5wKcUFMVrnEDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758255594; c=relaxed/simple;
	bh=GqfnZjOxo92vjKoQraajbwLWWthUqVlSVBERU390Myg=;
	h=To:Subject:From:Message-Id:Date; b=KcM1oWagDKaMEffK6Ss5skznAUFcxe358NWm1nN4WojDHRTdjVkD09E88XWklQgCWzn9xq5JR24HhpdlYR46bxUijVNzyfnXeBnN0+9V3+kEZaCBVA5QzRat0u000IbcVN9UosKaQbS4SSKDHiFeWIx/z3Fg2tBrmtV5dBdNYTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzO5GAPJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzO5GAPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC871C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758255593;
	bh=GqfnZjOxo92vjKoQraajbwLWWthUqVlSVBERU390Myg=;
	h=To:Subject:From:Date:From;
	b=LzO5GAPJc41JfuLAX/fvTvUTB1msGc+jBIbreNjchidiv3xPJnSLuJicrg6+AlLa+
	 0wRRrirdkN9K3GvxIezjzTp6AsfmjJ8MY1Dtn+c3IuW0A1qm9bf48+lwYCL1F0aGu2
	 K6SH/7i5OlXU6w35wAxkI9JXiW1Rsv+LwWL7UHb7RyJ5Y5JQme3pDZiFOqHKU02MLU
	 zpl2Ic2QdiXskHv2q6/VoLD6GvAU6oc2hXp3hmS56u+cBtl2fJ9b4rFtASqXjmpUMn
	 LG+8Ej/oInITv0LFkvYgEAcfDV8YMppNPZsA0ax7Ed/s6Ok8/rX92/mBJM1+dTccrq
	 REanrYd4mV62w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95448CAC5A5
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175825559358.11249.16792623261631240315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a399a61b13fa51b68e9949eab4c556f31179b9d651cb4e3dfb57563d9f9c10d8
Date: Fri, 19 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758255593
