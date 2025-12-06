Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262A51AAE28
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 03:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764991374; cv=none; b=C1imncox3MaEjEf8yB7HD4bloc9NrxEEa+yVgGihDJEhGoScDWgivRhPcan6OC9SvpXW9dEOfOilz6AFEThR9/fNjDKT23enjlkclvXFSbbdkK4i4s7p6LQMDtfTQFUREW+2tZGNj4ZYKq3Kw0MHIbiYYlu00+7GoueRTOy8gCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764991374; c=relaxed/simple;
	bh=ICRWdkQqrXCcQyIyPa4WhKMwq3lwfSM5HptQupD/lJE=;
	h=To:Subject:From:Message-Id:Date; b=NttwnLCXINb8dWp9GPbDI4X8xjefyH4PSflN5JrY+thzVOwuX5EUJ1LSH1m6Lj6KstEGytjOpJJOcgYxM5W7Bm0pfBbxdNioWnslk8REor8eC47BlbY/0BHYCup2TFz7XINrsVQvkzriEFaSXvHH9jf0tiDs7mOOsXrIQV97wig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSsqvuGv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSsqvuGv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4A0C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 03:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764991373;
	bh=ICRWdkQqrXCcQyIyPa4WhKMwq3lwfSM5HptQupD/lJE=;
	h=To:Subject:From:Date:From;
	b=RSsqvuGvap9fcswLC6MMT6BX55QwvHTTsdEnehmQHJkT7M5wp7SPe/Ig0CITSn+7J
	 ERYSmGpZhMCyZGuFf/WXXLjnGqSpYLXiO6O6jetKchNHp5GpFPusauZAEdKql2unZ+
	 p43nNHUY3hlNqJgjb0w57fF+c0OZQNMCAVfp4h2kWdgvvmtYZrFeTI5/Kg7DazQqKO
	 G1BpMinNIhutPNaLWuAIVVnaWFimEazfLoj4Rht0oU63sgoThcNeOctF5N5GE2dFSE
	 ejVgpnAClSaU6l4g18Q7c3RO2avFpQI9t6w2AzuHhCKon5IYiwmWFMZib3Gz+UzbzF
	 JzZQZuUS9kWsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981CAD3ABE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 03:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176499137358.23194.10721134366431400019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5139000be53007ee07d3157ae032a41233f4d7a5da03f78b8d0886bf0a6a763
Date: Sat, 06 Dec 2025 03:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764991373
