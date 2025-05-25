Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B88E6A33F
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748207994; cv=none; b=EWnTuy73eCcW1B6ZrGr+/3Kk5/rK/mqOYta63in4Su890UosQLqYdMOvVEQuVXas+ZruoSlb3FDhf08RPKuxj8Izwz1rUgnAnzBqgufXf7sq4/lF08zpe8jKOERqNkNsTwbqeK7Sw/IxyddekjvyxVLHFLT9XdBZuHTTs4Y2jd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748207994; c=relaxed/simple;
	bh=e7z7YHfCHxavTguYbN12cQNq4/IiDrFqMTSSnsxvXGg=;
	h=To:Subject:From:Message-Id:Date; b=sjzDnDDcf8CvaAOZnZrIVlVFddQ6uNlrNNkJXeHAOEazm+DBBuofPIP/p90RrNMlRVYGOALfpjdzEoYMg+6SnovA2GndGcEOUAHVQUq7ddPcQA65oyeEo6FnF0ORVuOfY+RufmDFqBdl0LdeK+sLyC1iMbLd9ozxy39SaOq2RXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qorIVo4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qorIVo4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76B9C4CEEE
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748207993;
	bh=e7z7YHfCHxavTguYbN12cQNq4/IiDrFqMTSSnsxvXGg=;
	h=To:Subject:From:Date:From;
	b=qorIVo4mGMtmH+TVw2R5/FB6h31S1bavE4t0K9Vhv3Zcg/zyxzim9A83SVd8mIJN/
	 6lbv8hV9QkPfDgjfig8mE8IcZpUq8mhk3KNPKCiDUo9yDS102HHAfQoI9ssozpZBMU
	 fsaF6TliukEYcyrAftuvR9ivxaNzysRRUIoCEzodti1R/oAgd0grPnm1Xho3SMGtzp
	 XPoJdCmP2PnHzyFYqjuhNlYmFvbElCazdzq8P/Gj0MiHRuijc+UOfnoTzIWiwVZSyg
	 dM3bgZ7Htsr2MxJOxSWlcUpfdos1YT07DDkN1USpgOABMEL+rEbM4cOGv5I4tZsJVo
	 O4wLbHkZMi08Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C06C54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174820799358.24321.1777497618101167536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65b7139081868e4b228a44116fd56de7159810cc479f69ce3977c0cbf18fdfa4
Date: Sun, 25 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748207993
