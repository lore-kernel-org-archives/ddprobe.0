Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C452356DA
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754980194; cv=none; b=bcfXDZiU5AxekLprpkt3tRxSAKdNpsbCjJ9hBVDIX41hlqIK45oyGf53tIIiUMIjwbefZLqkoxcmiUHcZReB+v3tzl6H7hYjR+ObDwuXvGJ2veHzty8ph7mNMRdGRRUfLv7hoToR7509w0t14/uDQedrbCr/P+trokhG1SYcbdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754980194; c=relaxed/simple;
	bh=U+S0umkY9jG2T8hLq5AwLr+zIwB38x3xZd2EM+czkq0=;
	h=To:Subject:From:Message-Id:Date; b=kXd73/wjOqJfwoVGDPf/W2pujvdkz2e726+jgbQU8t5IhRV97z066IBJNAFBtDpmYhs1vtG34iLh8XmfOiwWTj+t3Z6z69v5XsH88HHw2wTG/nQcOvOR+yM565b4SKXBHVgZ3jPI6pAbTbJUrdGbqogfDhCQ1NlCN3Uo9BseY6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oiDZaHg6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oiDZaHg6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB52C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754980193;
	bh=U+S0umkY9jG2T8hLq5AwLr+zIwB38x3xZd2EM+czkq0=;
	h=To:Subject:From:Date:From;
	b=oiDZaHg609dcMMxV5ipKSK//7ZbPgyvAcp6hhwhNjrlQr/Zvvrou1Qt3vhvG77Rnw
	 ZOtmv8EGstA5atcFm2OFSNhZcUjcjSbDMyKM6WY/yPnZYwGUMZQzQkySSQYYHWXafy
	 +/ybtPCrQTV0Si9XeQWTnqmNbOORF8K4j8Nq1t/iR3WUhpscRrutbWkK7oyB9ZvFrg
	 AcyAcGX0I8vUb+tT7TIpRWC8+CbmX5rFEt44yaNbLbLINEL+w01Z0qzY72nq97/B2s
	 ggBQWsjNYYcJ8Tdsid1o2TqZf6YtFNlIn25+KePII3BRe8JNY0I1EKsxw9v5j2iBI4
	 3/PsajlLTnVjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A0CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175498019358.21047.1183435522831193682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dac15afeddd94ae7f1de66e7071c1281d7c0b1ac278f3cdc02c4e3b3c70e62bf
Date: Tue, 12 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754980193
