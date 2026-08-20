Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E422E7396
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787217634; cv=none; b=tm2TRLdzsHmqStY4c5rMwc77Yx6U7Bl48IcYE25U/I6a/O8KGLg+rcrqTIgsYd0NZHcPs2Mq4b9FWwWVxoyp+VaeW5MGT1CznjSzNLgWb6T7CQ1lgpSyF14OZtVlDnCj6O7G8Xql0UsejF4V075bXDem48yOajw0YpVIEIUQY80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787217634; c=relaxed/simple;
	bh=q/fTSviMlKYDuX6lVJqJuXl85+f8xGDS5sEJCExcIsk=;
	h=To:Subject:From:Message-Id:Date; b=gJVuj33/wAbD0VnwVowczkQbGreVsSyHoukO23KbNTmmU2rJ8a12lMns1Kh+LZbAexUobK6oeqnylpUTbG9sBc+KtjUvQ7j5gwUERVXaIvYso/F6s3UWMz/FjMZdrpXogVsjmqcbupOwt8PIr0OQ1Fv8gfWWLf7/qtlgah9ppUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGuiLtKz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGuiLtKz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC78BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787217633;
	bh=q/fTSviMlKYDuX6lVJqJuXl85+f8xGDS5sEJCExcIsk=;
	h=To:Subject:From:Date:From;
	b=dGuiLtKz66XXExhXiVHruurCEE+FMyBEG9vlglmgCL6FEXT8lCy1RxmjZeeNwTqwC
	 pkHcpGtree1p46OirmCQdJRCNG+0ztAZhJx2h53CmKeVK0Tt25zoKWWVKVL0E3lm1r
	 m6WgN3I0wOPSthqM/gRfBi9W+ReISt4GzD4J5GOHFIBOsus9l3WQPHxpjBkNlABOpT
	 rcd5O9A1FpV6tG8+c5zofXLGyoKzJCoqpBpGaB3yk1oiNkCniI0ZFXZsPnK1EURU81
	 ebSt1678zoLs5Pf9KDfGT5+kG5I4qDsrLenfZiR/qVy+eMueIPa9NqXWl8EVNHwydH
	 kX/qyvXUB8cZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA54DC5DF82
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178721763368.27866.4657623715924479747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b521cf8e8864c4bb5609db75a207d14cd9015a0f8956209e74c5355ed70365c7
Date: Thu, 20 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787217633
