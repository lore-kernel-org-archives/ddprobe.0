Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9CF184540
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 21:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783201714; cv=none; b=LTfqpg8ABo2tVTPitzjPXrwWr7OrSI0PUwVsmMH8nPLrEMfkTZ1M1jSF4g14+u8zQ8UtSPbgLWwmvlWL2/BwGbeDYzb4ibrNa81bWD5T7tk2Cf2EIb9jRt8S+XUEMlBPvhj7/qObtyfvchRODCn85qNHn9iWwbVc8jUKvGFf0b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783201714; c=relaxed/simple;
	bh=MjbaY25b5vXL86fmbKajnfKLz7wYqtwUQ8ibW+x5Zvk=;
	h=To:Subject:From:Message-Id:Date; b=WAQ03etJAv3b0RZHelT7bS862/m+UPVo9jSYJ6BEdpLy0X6qwrfOvROzaZMCqu3PVpxMQbVKAYUG11+V68lnYaGgQM7IJJjHhs/64ysRZqc4I/QCLtwHgqWEalNEQOcufv6EeWuBtku5LsKAbyOFQc3n9lSijWTI7M621hfCej8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/P42Fp2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/P42Fp2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4E5C2BCC6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783201713;
	bh=MjbaY25b5vXL86fmbKajnfKLz7wYqtwUQ8ibW+x5Zvk=;
	h=To:Subject:From:Date:From;
	b=m/P42Fp20y3QkdEcKLb9DhsWpuvuGtfRX8naRKqzFMo7AntChBlxcWkapGIMcegBQ
	 fACsmh49OgBm3UCVUJZFV9krIKiDCBM9L5PNepXxfUeJX5JtF64wmhSs2Zlmim4sKe
	 UqPJ4dgKVLQvN4Otb65J8Ggjb7l1ABTmS5gNgEU1pPiVNowoGF9ojw1rt5EeaHTIdN
	 yJdpZrI0Q8Fp5SEklYlzzYgiXosTyT+7SPUNcKuLyKZvBWrKVRJp822/tZjgxFUEQD
	 HQFtd2KZxM3dlLFPPDFExquSHZZo/wLk13UlR5NbZ6wlvg6iPsoTmbcwy3vK724xgm
	 gqBdpfC3QIbUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B6AC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178320171368.14795.13153025540885752405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fdc5d68eac8adc474d85656ee859d6ac7fbcd5cf1d642d7c399f25ca470cba7
Date: Sat, 04 Jul 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783201713
