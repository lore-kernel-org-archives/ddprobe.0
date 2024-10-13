Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40138137776
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728834954; cv=none; b=oRQFnjW7jXQJ+j7jKKmVDoL+X0Nye5btqdhCzC9/+yCiiq/1LBZvccdqgmxM3or6UmZK52nVLiak7wvetGrcZ2SWlhHk8e+sUEpCt2+ImnQFNNBESZ6PBcNga/2w6Gs8qJMxELsuCFKXetTJqPQsa+z33HGjXk4FrRWhkGTR5aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728834954; c=relaxed/simple;
	bh=tI6hWsZUxQBhRmtauZv8bpjXDP8KFTx+SvJVkARVl/Q=;
	h=To:Subject:From:Message-Id:Date; b=uAajte5feQOwr8tjX9upe+jkgMaIYXDJD4yULzOM1UusKdPW1i3UNFv2VK2L3XaOcVFCByKhY4mdzyGAQD/1g4oBNmFIkvtFvHdZKgtoxGTzUovz/fM1o0KyX9uBiVTBKcezTPwdIuAay7oBI8iLaPOk0F7ZLjVAqbnUc0AI/KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i318U0Tc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i318U0Tc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B280AC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728834953;
	bh=tI6hWsZUxQBhRmtauZv8bpjXDP8KFTx+SvJVkARVl/Q=;
	h=To:Subject:From:Date:From;
	b=i318U0TciPXzwhGHILmWIhX2v1FOyuMk+9H/RN3rC03iCVd9AO4ERczuuMRF9zOvz
	 zqvrsaEXvD59CmvYzKSGNR9CK4vzKlsgoTeXYvmF+xs2GG9NZfheIUwf1u2KIyNJOV
	 40dJCvTFUtCxGg8/Dve8g1brDzhnBeKb6wj/yVJOMQm3u63D+yuZTXS3LzWqkQVrl3
	 dmXjlr9xeSqeux8z82ltdF47WVgRYnvwkD8BB//73JgyzNZ66OKSN6JXXQDnxA0erm
	 d0cLEmyxbAUSM/eqGkxZKlkVJHoBwWr85jpD25I+U2Y+biXYDlc/posuQ/882QAV5x
	 LZvMJv129njLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A24A3CF2579
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172883495365.15373.1025656616155132359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad622dac080e7f3ff8c9cba7061178cacdef6c328e82ea6108e83c5483fea484
Date: Sun, 13 Oct 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728834953
