Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568FE1F5842
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785471034; cv=none; b=A20rLhmaReDORXSax0SkkNeYcW9dJm4CzxZuP1gJpd/h+0d+Vs9PMwiZ3F1kHzs1pmuKKuXCffcGqE7l0rTeGEOamEmFnyIzZpfNdR6LmF8mtwzakIJtQriZzpbzqZ5DVIIP4R1dHCpT4BRThpYs3Ctp1monqupmecwmhLa+JM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785471034; c=relaxed/simple;
	bh=0FN21hvDHmE/7RByIR7fm373CyZyS9HJGG8h8toWavM=;
	h=To:Subject:From:Message-Id:Date; b=NlHiAvI1OkK1kLv+O7OQA3eTRXIFV/rkK9Xd3JtLkLG1//wFkefnDBl3ramkHKhOEfzcfE0AQOcvF1ovd91YGIO7AYpKRo/hDEzi1utnz2DWWA3x/oJ7f3tOkh9H2pjEK58PTOIyaiL1Fd2xdr0K5FefXvmOCeD0CuH8GhnhKvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRQNg9Bg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRQNg9Bg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65DCC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785471033;
	bh=0FN21hvDHmE/7RByIR7fm373CyZyS9HJGG8h8toWavM=;
	h=To:Subject:From:Date:From;
	b=mRQNg9Bg/5iBvi7aEjyWV8Ybvg7kXn1migYFqxToL4fdL+8g0CLJtKVJQkqQsQx7O
	 LK4y1fI9LKLfTSFZb9mnig815NgvxQk25klQYLab+XsdRKs3MnL61fztW3gVSwW7t6
	 Lif96aNtW6Ca9v5efJZEiEo/kwcZlTFgTFcAqmhZhB3poyLStnkEQxmkbHmGvDhQ+9
	 3TlOE219US9SXHGHs6CeH59SCi2jn53/9tZTTK8GT9Cv5QIJ9I+Y/uzRu9I2+byo3s
	 aG1htkT5RR3p4ZBATmfZhyh59pAFJLE1bnoTFa3N2qwFCuEWikqwqz2P2tNP8lJBqM
	 rT9ptfQtIS8rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2B6C55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178547103368.5452.11883299807302695146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3fec6a73c83bed2c27d083f6a557832344582d0de52fe54903e6405b9d0073a
Date: Fri, 31 Jul 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785471033
