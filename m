Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF72262FD0
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774728894; cv=none; b=t3ZJlM3vN8dZAw3wxROhKh8bUR9H4SV7GXf3RNGcJyMLWNCYwf4rUfbakUlRrA5c5v4dfudq9bQNcmgIvJ2H56Kg18/4eHXwPJYQLB//tkvJyysiaE1fAIFKePgFCer0P73OLTT3m/T1tCVi9yaEMl7lXfC3onbOEu5TBKvyJ2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774728894; c=relaxed/simple;
	bh=IV/3ekQW5QdwiR9/CBkNmECu6xe0+8VL5HW32OUZ9zY=;
	h=To:Subject:From:Message-Id:Date; b=YTlPVhOTaRyJpd5SjP5Nmsd1PHRfgi0zufNyqkDwfSgse86HH9BEuHzPLlzQR8FloeGEbI5vxFCcI19R4lj30D4ELsch5wvAwPn2tg7vbQQJcWcxjx3y28e/rpVzTV8NlCK0W2raMr7QlHlLnXaMBuWpwGP8uMsRN18w1d5uMxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tuHiHUS4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tuHiHUS4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9861C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774728893;
	bh=IV/3ekQW5QdwiR9/CBkNmECu6xe0+8VL5HW32OUZ9zY=;
	h=To:Subject:From:Date:From;
	b=tuHiHUS4JiJ+BiEaKkV9IgK9ca0NfOR3lkJZQ6x9Bp4A72vPD+q9ySXMbO9kZQV9S
	 Vv99Ll36DsutE4ZszEsoim0/iSCiRo8VDOfzZ/eG4tux3kmah3eQa+hd7oYm++K1sj
	 rzHEIMc25U2mxxymarUlVgCAgmF9BwCgDRQwEoLlwoiG2zfzp4sRbwRHL2ePZopd/T
	 LC6OCghls8FZXKDsheNFIFyC8MWGYkXAhoxgE5y8FOncpNH12ACRrHvshAgOFc0UEl
	 hi1CRJVum7CsC3LmSVTrkeCUWHs0bHeAyu6rxErNWldHLVimfFq/OjQZzSzp0lgi9S
	 MJsw42CCcBDog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AEE10F3DF2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177472889358.10457.3839734167780632648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6181b67d7ff85cf01dd8b61f2b77c1beaf0a5970fd8bf14f27ea531e565d625f
Date: Sat, 28 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774728893
