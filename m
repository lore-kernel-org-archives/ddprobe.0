Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4394749C3
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790932234; cv=none; b=kX6XqBEoSHjSjE5jyjUCPROOVnxpBjNc4fLEVnK+oer+WFfU2C4Iv3mqLS9Fg19xSrYWt8PfAnWowcGd9VI5T+pNsdzt7ZOoGgdO2fIV4EoHn6ClvMSZpAFgHol3u65mw967lCvF8ZPcVz39HjUw8YTdWeaUOeDJRvPQws/IOzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790932234; c=relaxed/simple;
	bh=z+N6FCTolmJS6NcXTZrEcLO0DfnMmfxso6NO4yQKOck=;
	h=To:Subject:From:Message-Id:Date; b=qYEYJ/umrMBNsNOhPenWHKJfORwpM2xUnM+YAb2QBrQ/AMmZESnsothseJzrrHZISWjn5PLqr3cDNS1XdM4MMVbw0VOsyw+Yym6uc2SCYLJIWsKQKuxBsV0VnIQDpu9S9r2FPjt5a80O6YSqMiHJBBjg5M0Tn2mGGjP/0vWS9Po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltuzbOLU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltuzbOLU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3A9C4AF0B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790932233;
	bh=z+N6FCTolmJS6NcXTZrEcLO0DfnMmfxso6NO4yQKOck=;
	h=To:Subject:From:Date:From;
	b=ltuzbOLUuv0tCKWA4iqwvETka94pZmxd1w0/u6xycCHQFXYF+essdejd4tQ0PVdtV
	 RUga5/kMJCr1MhKfcZJAxndAEn4LaEK7C/ozfIB5hD2RedgHXkn/WjpRNjycZ7Kw74
	 bIm/VmQy18D9jh7uOe+TVAGIbEK9v7ggYv/2pAVdV1ie4V/8wkUwL7k+VQpb5CvbLf
	 7BnqAGvwTaGpcjZ3EjR7gPIPFSz1LLUjDXzA4udPHR9ZlxPAp1CVqAvTIzwt6+lmH5
	 nza768R/nwA1vf9fWMZqLcsjY0m/LV3V16/YnVR8cdggOZtUuoE3NMLEJLAhFArwSh
	 6AoijjhnrzB/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC71FCA5FE0
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179093223369.31119.6829048497231210085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 020530986fc975695f67853c413468d8b7d006aec7e28f0daec27378a7f7a65f
Date: Fri, 02 Oct 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790932233
