Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A8235975
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748999394; cv=none; b=U0ykEl8qs5K/aKjf2Prhsj83dmMg82HmMcBdtfmQbBYHEpWgzyqfhSyAh7rl1SQ6Rct4DYFY5T4sy6DxEmcC42Wm0gtaQBjS4MqXwhSYexmibPs0DXo1/AEvYK8Gl+NzFW11/N77OlWTlSTl1ymdrKXJsiGFbsaJSYsVQneQlt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748999394; c=relaxed/simple;
	bh=jfUHqIOeEF9BkcPXwxE8yW/JfICfGKXtR/fw0IgTylg=;
	h=To:Subject:From:Message-Id:Date; b=H5HXj/kvGrmpdTYQ0MLxOuvGjKJLYpX3JmT2yGSJnPjSJrVTQJvQa+JvQ1xaY8Cc8GSO0H1/AzEQ1gvWeZgtSBZrgcrImGiA+WjeEjyj8RXBxKhgwsiSrIWH0HfVkIizKYpVMiOV7wRvDSMgf0B5Ep1rPdqpSyGJ1KOTHQmqJ+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6G8ge+A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6G8ge+A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB72C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748999393;
	bh=jfUHqIOeEF9BkcPXwxE8yW/JfICfGKXtR/fw0IgTylg=;
	h=To:Subject:From:Date:From;
	b=t6G8ge+A3oDvwQhoPMl93AwLP/TajLcNPn34AOtIh0B9iy/qPVYG4SRXKbifIYHWW
	 btN7IID3nCatRaAp1iN2MeyxM8XOjEbAeCrC3XX7nB9FDXnYHCPVOkcDZ4hCt+eX6f
	 sbvXOGzVZFmJy9EPyjrS9tX2zxDVkzBkGFJmGYV871s/5BmoAASsmFv+B4pbnlhtlD
	 rvi7zcOtiJTZoZE2Uz13KYvhdDfW9AGjdW0OOuGVfBmKxOUMkNArx5Q1/kgMOkXVZL
	 J0q3H+8joeZ298/mx1ZSy71vgJZg6aazEiOTHwAmdnztRjeJQZDYpzyPOAjrvNVd+H
	 r/kdv2TPJo3hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C6EC5AD49
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174899939360.20974.14410464979373780932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8f7ec60d945b7b11a64d609f53ff1919029ccc0c1039db9f6ff33681890db68
Date: Wed, 04 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748999393
