Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEACEC4
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749384595; cv=none; b=osFee1k2fJZMZWCZwAELKe7/gKUmIP+Jqo/Zw7mccgNvt/33Bel9WJDZS2vODebCTDx97IiO+ztpw5SjTNDGbilV8Knlot//p3HGm37vURL2kaeHaAgLAyppdalaSWb1io1klm5v96/0jauUdqOMXiC1as2GmjmCsUoKaF1cpkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749384595; c=relaxed/simple;
	bh=gN0iMLqfuNxQprDbYwimQLc9FiMVuMKruHYAoh1M/U4=;
	h=To:Subject:From:Message-Id:Date; b=QX3biCdtkmvZmY6Idqo7rAS+lYNiLhspvx2B3dUKbYxeP6lBVy19bNas2vivl2OyhhesWJ56G+cRx1ChrGP5VwU875B3sYNsUyk96EF9QrVSq6SI9c3n6/yp8IwWU7ntWvH6pcDHGnUsqlgXB15jGOQi+6oybEu8YVfuEHIm/PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8FVwhvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8FVwhvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57CDC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749384593;
	bh=gN0iMLqfuNxQprDbYwimQLc9FiMVuMKruHYAoh1M/U4=;
	h=To:Subject:From:Date:From;
	b=P8FVwhvMqlnOr3JKsV6ziz8dhbVOJyhqFMMwp0Pn5SD21QNdB5AhL0gq46Z7Uw4Y4
	 aJ9AH1SYsam9hjl6axSdn4/KFNiEbbxcApodEkIq5xf4zD1w13vDc+wQaO7zDN+7mg
	 HbnzrwnoecZ9RuYivekUEe3vZwCYvROwscxu6ouzwmyqKusN8yDxTji1Q3/Hl6v2x3
	 31KjvjI1o984STWVuvbn1xROgor1l5PS2JbIMjQRZ0g6QeVVuEFyOnTslo6Toooe26
	 CQtUXJhhh/HA1lCl+U/EenV8oquM13Y6D6aIMbn5YCnpArTyIbeVByak6W5h5+Vxbc
	 nkgbeX9xmAWSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F35C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174938459357.1516.4172465285457715971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c95ad893bd906edde86a45ec7132a703a99c830ad24d3569f8aee8484c1298d9
Date: Sun, 08 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749384593
