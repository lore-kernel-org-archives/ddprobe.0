Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA93205AA1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744817996; cv=none; b=kxezDJ1Xt2narTU2Rf53kQZ4Aia3Ut05JRb+eHlMiorgFSR51mGN6vmRYVbi68mKhiYaFhqOO48SUfxu8c1TWJCN//ZMZM8gV/r0MrooPHSowefG0AaEciEFFOEsGL2jxdunyNUv/WgisPxXtIcX7Gavsj2AXR0RUyOANuw0DNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744817996; c=relaxed/simple;
	bh=e1hYVrs1q27LFzbfP0A22pqra0ftjaUFTfXBICbBSPE=;
	h=To:Subject:From:Message-Id:Date; b=Nkd2K2A9PXTv2USdas2nno7ppVJ3so82a4jY9aiBbhgRw8iw0DqbYHgEeGNldoY84ou1VpVNQdHm7voMQWTYBMnsh33/9BKXVEZoUbzPjSkkJ0GJRD3lFNhf1EcShpg/pwF5OC1x6ASQYPFSaSYc5xdja7LTpyxus9x+dULT4Zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dyC9o5NB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dyC9o5NB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7756C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744817993;
	bh=e1hYVrs1q27LFzbfP0A22pqra0ftjaUFTfXBICbBSPE=;
	h=To:Subject:From:Date:From;
	b=dyC9o5NByQKfu6ZKTomY4r0i4lERB1DJ2UiXy3xzuZaRrzNZkpvoY6/smyo0oytjT
	 RQZ2Rx8WEglJHTHf8CYSVfE9S/TcYSMuSl+0sl4qGC/yeagKVwk0j2gXBoBHWSw4ML
	 k9OykI6BnSbkWuqo9l+q2TKNtXzS8Gzr6tYjfZYnQko0JXYZ8jsRgMuuA1e2pBIvcS
	 6unF/6G1HoWOIwo0q+yQlNWbwVAq+gUa5wKXjtomGuZSfPsE5A0/geudLzg9APZz1Z
	 sMHn80iewQwJThgoFiMgOfj9wuoUZCRmVcP9YtWvdGNCSY0RTM6NKlUUK7IgMz2TGZ
	 2NSvBIKlHh25w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E51C369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174481799360.25742.1915949937878177155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f48bb1a5d9d77f74bbc15a5fe98447b6d89a059d346e53f1a37b17a5f316a33
Date: Wed, 16 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744817993
