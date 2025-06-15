Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368E01E4BE
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750021194; cv=none; b=N32zR9soYDARYg7yt50dIknC1iq+4JQe7rMq8hZBH6Ju7uzfkktD99ZW2OHMnZm5WPpdXHK8tiyHItAVBO97rHlfCz3N5NWzoWD5oUTztgy77gopSjph95nEmYo/n7NqaIwn7xf3wyfWowmdVrvXp9f02QFsN789J501vm9Fwkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750021194; c=relaxed/simple;
	bh=RglV0t/RUe4FTlgOLDNGG3oA9wRrICyvczYEQeyDTFw=;
	h=To:Subject:From:Message-Id:Date; b=MxyRUYag6dog6ne94dqTin7VdpjgwdXV+3pf8YlG26DQGV+U37/6BQmPIvz9F4+bvbsMqHPwKBCZ/cwqwx3mgkuVL1Q5YwtocIN5+wAjzc7HYPTcv5KeoDYnMc2Qhumr1d1eUlZVMUGlrHhHfHyfus7t/b2h+ALHJ8F/5g1mbSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqlbzviM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqlbzviM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FA6C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750021193;
	bh=RglV0t/RUe4FTlgOLDNGG3oA9wRrICyvczYEQeyDTFw=;
	h=To:Subject:From:Date:From;
	b=cqlbzviMmMlmUDEIPz2F1052Q5zYC0oYEjR90leIIYxZXc1pRvNJ/UBi+sXeTBTJI
	 PRzrtpKQF9yY2Dzle9w6FQqah7x5lFsolftJIVzEi9c0QrMNFTWW4TVAgOk+OvAeGA
	 T4Ee6bmP4dWXUPqcyHNRdvTbiZGUlk6nwur//e0EEsFfGE0SmRNKKTTo2TYdDxL34w
	 amBIf9kkleyoXoQkCDdstgtRK+Z6hObG4hwYAEzVJd1R4xBas9P9BtPB2zPdU6JcAP
	 mp3vWiEcOf4G1GmUnO/vzPZC9CFOkcI9yUv9B9uY9ZKsSyEURfIDUMsSVOvmpmT/SF
	 akHaICt9gG3Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99048C7115A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175002119358.31477.13750983680561135021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41c61512ed6e98af23b243f13e01d9d97200cf18a2b52c4bcb6f11475f5b81e
Date: Sun, 15 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750021193
