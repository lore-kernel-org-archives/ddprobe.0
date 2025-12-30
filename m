Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173D02DAFD7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767061434; cv=none; b=ejB/ibIFwMEX3UdzLLHcuOiHq4cfF4n0ZO21UrubdsA0XhEgrmIoF9Y1Ndc1k4vub+5susDWWcVIhe2y1MmOqBwWPGMmY7oCxlVxd/pcQqv0ozFO2gCRE7Utq3gJ9J6gftbtVua+CAPoJXRzkYWKHtuav0fXIu2Y2kDaQPh3ZTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767061434; c=relaxed/simple;
	bh=9UElcv11nBjrgB2hOBhrQoJmJD+J4Ndm6Zc/lW2ReD8=;
	h=To:Subject:From:Message-Id:Date; b=RTdnBTZtsJRZCUoMKbqsNUYttaiqmXss4MMRqN9f4zB0D4pcvS0Vml/X+ZUniyAn/hwniQawL2hPCSEp6CGtTGQmTry9Y2YO+bPCAKDtHYVkYKkz5EK+DPssImuE5FHLbXr3zP5LsvfNPujs8bXUQRxbqw1nnzNN9NbUT/dEZ4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SlQRw4Yy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SlQRw4Yy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA45C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767061433;
	bh=9UElcv11nBjrgB2hOBhrQoJmJD+J4Ndm6Zc/lW2ReD8=;
	h=To:Subject:From:Date:From;
	b=SlQRw4Yy9SB5JOVK9uif8ff9w6cgs7XDH4kSlryK3aqppbDR9fwCsWyIu6Pna48i5
	 mcciAep7TvKn79oYZGikBGA+JA/b++QpjZVBzil/6p+mVWXxw1z1NF0wrizQ7q9N/R
	 mM0ImcjiSxi7gov7HCkuU/0MF3kJXMqu2N303+vYS+jsFWgFhsV+obOacSiv0uaJpL
	 bAOyLHMmJH/VAzRfg0paTp/t7lZwKT2Xp3ngBjelxdVAkxAQ3I+iDAAylgQmQmKg4z
	 HZhftBbVxwhe6YTA12MWf/TDTcdaUsPfbFtlgt32phJcv7VCYf7O3jLQNQJmedlWQ7
	 DqCfzDhs4gUsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F754E94107
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176706143358.20712.2783300884196691868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62c3348074d67655b46648dbf7af54c325f9edc7727555613e94c40dacdeea36
Date: Tue, 30 Dec 2025 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767061433
