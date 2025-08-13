Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B802BAF9
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755112194; cv=none; b=YV0FYcpuGb9APejkHniiFGCNeO+DFNW5FtGkbk6x7nd3RmRDg31fl/zD4hL8cCgmCwUbfKYDRqxwweSKiovkd+vJjoF+ksasc8hi9rSVdvs56EYQZ1JTNWX8aQas09WMs8ODa531YEmDDXCAeSCfanYdVOYG82byB53he964jZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755112194; c=relaxed/simple;
	bh=WAcvzFXy1NJSrsgOT+B6mAB650mI+0OX7REF20EUQQc=;
	h=To:Subject:From:Message-Id:Date; b=NBUF5COq47sH/Pjtf7f9cDPHRV+wSc/CanU9iKAWhCC8sCbqNsWWcdLiffUn+j+juM/+oyBYh7+pywkdrBlk23Xg754yqujVZAd1+y7u5WhZu9VGeYMii3Yjp0tkCyOE8+NFPOCSNH1r1XQQLoeXjUZGgF/ol/xRgyKkKsFtHFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hjbdh691; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hjbdh691"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E856C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755112193;
	bh=WAcvzFXy1NJSrsgOT+B6mAB650mI+0OX7REF20EUQQc=;
	h=To:Subject:From:Date:From;
	b=Hjbdh691LOZ7VoqWUXjs1TmouiqGRluNAXA6fDPgu0wvDCiZBK81ui72m4T1a+NHS
	 jsxYLFfNc7Epwf4Z6y4LwTB0NlrHAnr2SPx+I2+h+KW7rh//YNsBrJ2GAXEhwYHotN
	 3EbETEqTBOY3Umne8PEQ4w+j4Skc/xii2GOu8BQ0RcAZT9lzetwlJS6ULTdYAMKRto
	 ePMABEZKxb+BtFo4Shpwc57TfrSUthB6NMfFwduwJQcPl5d6T/XkaxrBtruiEomyNi
	 EpjRcB0l3oAhTnDOqRgU+cEWP9jgnoAEbS0kHR66cVhtM8Yki+mVgFNJ9ibON6lSFC
	 E6kTPcvibjVbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3C2C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175511219357.27861.7427697974739983429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 090d9523032a6ed927db9f5ba1d75b32e1a64669a95be7bc05469379c39b42c0
Date: Wed, 13 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755112193
