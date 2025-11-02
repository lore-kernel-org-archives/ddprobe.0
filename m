Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC5412D1F1
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762084194; cv=none; b=mBxkxR1PZe+02f0zeCC2PCNGYZp/PAJc/j7TFvpGeLMHHUDqzNQ7vHPv+WVfvd2JXKKj7QN+Iw4LBQGzdZ/8yq4W/lNhPe92fodfUmcKJVpaCQ9MYD5N7KdenfXbw7zyhRYEwaqLtwp3LeXIKBeDBhfsaOTiyFeykc/zasDFOeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762084194; c=relaxed/simple;
	bh=UMwlgzmpSzVGteVPq/AW6R5DWIWkQaU3u4CLJ1Ye/fk=;
	h=To:Subject:From:Message-Id:Date; b=ZbYHTNOIvlewJxFr4vpNtyWcEtI1QUgVbEiSRka575qXV8qDKrwXb2RPZxhRcF/mqg/fWMYliDbp/4vF3wSaLL/GZfjpjN7UUfniXMDDO78bGVJy/A9i0liazrhSedmJ8Zct97/9uxYRzk1vPNiHbr9PEb/4ZOqVwVdoz6j9eeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BkoGVQ9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BkoGVQ9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A6FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762084193;
	bh=UMwlgzmpSzVGteVPq/AW6R5DWIWkQaU3u4CLJ1Ye/fk=;
	h=To:Subject:From:Date:From;
	b=BkoGVQ9kEVEreymDmf6x7nC1Hv/AC7zdc/ASD7GBoxoviizKr6aQ1srDVBiKhXGof
	 ajNIagqEtnJcKzEihhXGKH+HFfGUOLXvU/6Jg5SK/mdmbClsvMSIviuPAGR9/jWD/R
	 dJRHUQQdsZd3jJ63ORkH8Q81WF4aeVo73mc/B8SjwL+JVm9V/XfFQVhejXLhRGNRe8
	 tpY/a9jQ0idOCVpE9ZVb6BUhwzkqP61tdb/TS5oSBi3wKhaD5iKYn7LHQpTWlhP5dt
	 HMeVlACBo5BxOh58UnZ8Tze29zGTl+evXzZIX5py++nto+jHnk9ZE2We+DIx3qobbu
	 ezXXDSk9tfzAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924F4CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176208419358.15303.2314038880738901585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea22b0fe84170b02fe6e5690604097355e0df995244230b31b8e53a878d11225
Date: Sun, 02 Nov 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762084193
