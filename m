Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DEE32BF33
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755540594; cv=none; b=u1BY7cB8179Pmak1S9Clpwmt+8EYPOdlTf5FA6LWQKYZ4W4lMBMZauB5CvvVGZv08uva9QMkrXAP0exMYwKeUZgK0QC2FCyZ9SwTyAeXz7ln8S7iUcJmENurNZvlIpSK7QQzrammzAR7MmumzPg0y+B6VnT70BYT0nxSbFOlazE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755540594; c=relaxed/simple;
	bh=2WsBeDYEsrkGP4/whqnpvrt7B8TQTcI3pszPk6Jb1d4=;
	h=To:Subject:From:Message-Id:Date; b=VgFOX5AI4vKJZ3HLhyC6DCD8gqJcIdc+WrfGStIRuWGnkKR0ipDdAkT0MYQ2QOo0dWdDsf1n3Cww2PzpWdyOE1jf/Hg4V/crNGWe9F70pMDoZaLbB1aSphdZSMntP3I8T/27XO1UG9S56fwbw542qy9f7aXXPs2BErp8dWomK7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5fS0XBc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5fS0XBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAB1C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755540593;
	bh=2WsBeDYEsrkGP4/whqnpvrt7B8TQTcI3pszPk6Jb1d4=;
	h=To:Subject:From:Date:From;
	b=Q5fS0XBcIRxZ+ZOTWwrN4OYPOqu84F7TK1Rlz5l7PGS1uSCtT6KA4onl9DSVfRK9n
	 GAO2D7dzhubXAYJmxs+DJB2qbfZoimLbunPFq33nTC/I6bqrhT+uF9eC1a1MjwVS8l
	 RhqBYXgLbmyDCLvaPo2KBAkrWTMN/SNgKJw+Nke9O3Yfm0JIDyp5bmq7QvuXDM8/2j
	 veJcL5xeWcDHyxlczkwKKW8UZBy8Uhqwe3fzJLx19/InQCGRWsGbHvOM2xCoBpCu/i
	 zyIB2ZxtCIqIQavuq3yivdaurvu2sh5u0s3dbaOHtZPjY8lPGxDvWVicyBC+2O2VPd
	 6Jxlurtrkyzgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F607CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175554059357.3051.8318524450674841249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f653abb09550368e5b57a4ba20be5f16986d755d753d86acf3319bde53da0de
Date: Mon, 18 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755540593
