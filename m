Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF4213EFE3
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757137194; cv=none; b=GIPqP2yGwPTT+p9dL8YqbnjPZ1PlZ4JVNK7QZZcPmS2NSxHs2/upGG64WdGS8BLG8SYvty0IsMmQScw73UaxGGHYH+drSqW2WFrWWTsEBnqKvyzKYsKYQzzb6xBZcVwEcg3VGsXwgsV14GhRSjYlgb8ZAGohXvgKehB6tAlarrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757137194; c=relaxed/simple;
	bh=BIu5aQPpBuX8fpf7nHxbd7sR1VWDNDkPweM8Vi+wtnI=;
	h=To:Subject:From:Message-Id:Date; b=pzso73PjDrsyg5y6oVEHh9MYfwDWWrfsgY01zpCPL3FlGy239JO3IUooPIwmeQEWXiRHoKdxXaLQWk6CpTsZrqNTBuVj2msj/Fh9vMFIe7tM1z7L9Yor4xjeFMZedHEET76kRo2AKcq1Y9pYUgp3/ABbulEACXjAuH0mtI4dNkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OpInNGlF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OpInNGlF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BF4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757137193;
	bh=BIu5aQPpBuX8fpf7nHxbd7sR1VWDNDkPweM8Vi+wtnI=;
	h=To:Subject:From:Date:From;
	b=OpInNGlFf4l1qWxXr17lLVhRnISQnBPp2ix/ZqjBdRB/hNkQu7Ul1L87I9frYG92x
	 uOHCiiFs7nahFEJKcP1V/oX9RFBFpKLRg2+WDH10lHJqDuBheFWxZZkd3+pRVN1jKj
	 CLQFaCVdpjMRAWV0+o3tIdgDbt9beEF9GHoprI9paPqQfX5L8EwcU0kVH/XJq1NoP9
	 pOECS3SuKol2FyhKsFwbbHoPiBpa9JNaLZl+VBDzGFD7ghBGKqqKCmX2EHj9JRrR40
	 lTkTLEQry/oMeuHL4bXLVp8MKjXamT3ZfwvLVKFlTRaUhi/EA+d2y0nWJJXEYhXQrW
	 COhLMuTIcr5Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916F6CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175713719357.20100.15103990316620547716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad40af3021cbdd1028279c60322599cf5e01dfb7ed29274b169c19083d9e0c7c
Date: Sat, 06 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757137193
