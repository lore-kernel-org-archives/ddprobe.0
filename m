Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F91C41B8C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785930034; cv=none; b=qMaOZh8jzpWwx7shcuEgTgOmo8LiGhnnU3+iBZKxGadtZhrpdnqfIB8DT1TxXmo4WyqFLyHQgp6lSkVGTFBji1cTp53+Q8eFznxWsMopK47iMhN6VauYtXBpvTW+DKjC+aqc9fuWdru9kL3b8Epn45HKd5E1XlqpgSIVJYl9LsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785930034; c=relaxed/simple;
	bh=O8UWineIPAFtLdNkzIbtDPs8vBHzh0SfbH/qXH2S0HQ=;
	h=To:Subject:From:Message-Id:Date; b=pN/cYgcDFNaLTM07QRdNFOWGudX72YVay4XeTh68/wXowv6Yk6bEJp33/8QHdf0Hfmr9WcWtIB96a40dW0rnEGvymPLzsME6lyiW+hAfWO+ha1cnaX/08y2gdeIgmTA2RJ7IYtVWImbWZeTQukGqegNk9SLu39Q+s9G7F/NIN1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKT4gbXa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKT4gbXa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD5F4C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785930033;
	bh=O8UWineIPAFtLdNkzIbtDPs8vBHzh0SfbH/qXH2S0HQ=;
	h=To:Subject:From:Date:From;
	b=BKT4gbXabqkSIviw5EFfc/tBcmdb5E3LwcbHLFRWaa4kKiIDNv6izm5LwV1N/JvuG
	 zYgXzFOmOUPpkLLOfZ5sbvUOx7Qq3qhfqMnQUKph8uCbSjXbJ8ZxWwp3KXoKSqV4+c
	 4iJQBrY/hdIweVt4alI3qnux6O/T0wgoeUPLciP2jM19VL8NndgrDeLFj/mQW38su0
	 AzlQz3mdDojwk6ZRS79z6hrByWGb3s0ttwpfkpX4r0W5+u3Exk80JpPhTiS28XdPE9
	 KI+plTXO4LBCD8VlIDYG0dOC+1RpUhcoB96KTvlgDLJ7U8LMxWyYSstd6hZVyhQWXf
	 yeYpNYUgF6SiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C90C55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178593003371.26333.420102964316627837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b25d525b781df59bf847764126cccce169bd996cf33e1c61e805eb5034c25b1
Date: Wed, 05 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785930033
