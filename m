Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90459385529
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787797834; cv=none; b=WizhunmS3VbWBtybod6/rglWx5jFabIGtj2OdwR6ldfKHs7dbVfWzSIOTfB0DhvIKg7bKWd7BymVZcEX2FJ92zi2EjxMRB0Fp+powCE7DpORNglI29RJJ74r9WxedMQMiTAEKDcqFjwsaHUUUjaOdx8GvCn3cYWwqORAf5j5JOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787797834; c=relaxed/simple;
	bh=05ctGmieqoEHgSxKq9SB/KoH2k+ZAkSA4mhk1cdZ7bc=;
	h=To:Subject:From:Message-Id:Date; b=h3qtyOQArec9D30nFOZmBqy52zKkqZSmcc5lv3XvF4ph3iurjVTCx4/1T2s+KxuF4/gx5NLod2vWZ6YGg/vL98b5EeNZfbyTZbz+RA7j3WfeiRzSpxUs0ICyOUsT+n9rBtITTafnIqoJQM2ZqpVY9SfzYG2VGmApc4CowLKmknk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6bt8aXN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6bt8aXN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D3DC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787797833;
	bh=05ctGmieqoEHgSxKq9SB/KoH2k+ZAkSA4mhk1cdZ7bc=;
	h=To:Subject:From:Date:From;
	b=s6bt8aXNYtnYN2S1bgkCkrS6xEq8h2YDj7raRr4yIy0wJ1YgGnTPSZWUSTVlWI6py
	 blJezD5UOsrxKQ0qgKh/AJMDiYVuwY8l+M9k2ozNyoP4Q1tV/NyKtVwpl5OUvXw4HD
	 HvDKWujU87p5DdxVqwN/cmWL5GiGUz1jmWXMH++1ulhd1vLgjN4S80bZNUT82arKf3
	 VqcHC/ayctMLf9xJrCzYgGgpDmGy4gLZ2DPN56LdYVtmLSBFKUJGtHyRx+hUsJG1ZX
	 ikyItWPFI6JWX1FCxUqcHNZv1sARuc3caBvF1hMvb8cJqydFfQ5zY6RAmWuFWWLNJH
	 SLnbY5cISYB6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD49FC61DBD
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178779783368.20410.16091828960598313088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 439d42ce3980d4f72d955511f372e455eac125d8116785b9f646415a5ae9c892
Date: Thu, 27 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787797833
