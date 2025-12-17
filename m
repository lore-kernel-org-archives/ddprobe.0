Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199B33D6F
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765930434; cv=none; b=Pi0MdLjjGA9BSsrVVdjAO0hoba/VV0RN6M2KqDQjwLaJCqcI8dnL8qHCZHqAw1u3hwjBbXNr1FE8HHcyppTV0Grv/iF5foWvh8M06AlqKzF0O1KRwxFaUY7MzO2WhUc3aUgVXiVy/gxThQ2esn7zkaHjUbr0S4ePgWOLbOHFF8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765930434; c=relaxed/simple;
	bh=jeMxpBUzyCtoIMxjtLQpNB4vIEr9XagK1VS8Z8yi8Ek=;
	h=To:Subject:From:Message-Id:Date; b=NremMMnMyZvXqmN6CulFLeGEepScRUnOc5X0/ShpFA4dGi+JeFKMQpf/7j45hjeU8JqxqG1dSshJW1cQrDL5e2LLDZBMGrMC8ZWCe+g4zu8OGHKfRNcIhmdCu84W639EsWGfUlkU5CJf47UNqNwQc+p3/KxeXMBYuugkEQMV3zE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I59SHoEB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I59SHoEB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66DAC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765930433;
	bh=jeMxpBUzyCtoIMxjtLQpNB4vIEr9XagK1VS8Z8yi8Ek=;
	h=To:Subject:From:Date:From;
	b=I59SHoEBYqrmnUBz8cuAkXFftkRtrVeSnlclP+M66sUgbzzDPL57vIfAOIDMKDvmU
	 baWc7lF1qOOGh6o44BLkZF0zB850HPzxylrzO9HY6Fyb/0P+1HNRms6Z/QTmA2vVxo
	 IGPE+TEvXFvBgjpUOhgmI9r+jlz5kRSo5uUfS9bqRyoT1ailOEJ7thNjoWDN7f4fn3
	 om1hRNLJElnEhjssvQu3+qMiWyZG0UlMVcDRWQYBeQ5Uk6K3HUXHwhanvlg+hhojd3
	 mMMpjNR+nzeReXyOqULkMUMkHMrZu1dRZ07SlkhiVMPCHDn/+gXNezoJoytHb7X7C+
	 zLWcoQczwCP3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964B3D637DF
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176593043360.14118.13925304419294415518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c02ea4a111618bd7912f2a8f9b5bdcf29cd68c1a9348dfb6206a2db6c85cd9e5
Date: Wed, 17 Dec 2025 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765930433
