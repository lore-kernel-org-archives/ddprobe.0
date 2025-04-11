Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF1B4205513
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744394994; cv=none; b=BcCJEdIJ/V0jGrZewIQ/UDDqinlY65e111/jOIH8AvLPVKcUAuDqoFND+P/wFxxpQ1eeA9zby67xKjDAUieD/B1voay6hvZHKl2lO4YjFcYN5P+TD7BZ+Nx0atyrCbg3r6ZDstappeQgz1KcxSsQCdB4Jb6XZmWnbKYwHtZsQhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744394994; c=relaxed/simple;
	bh=d0UNRcHqNB1rKKEP+QmdvRvfEZ8IzqbElAw4zU4zMtg=;
	h=To:Subject:From:Message-Id:Date; b=PbnAUCxLb9L/g+Bie7fj17mPvO+D+mIjLuYg5W4DR4ZvWoQcg/zL2XLjBsVttoJ5SqYBqy3Ic/baARAmcYOFx8lbFGxUBV7dD67Yz0rFr3jUSBmWkkY+hKyYuxYkGiufvQFnnFTTVydNYlbcKXp/5YIh323D2DdCWVybhV+ZtPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYGTy98A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYGTy98A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BE8C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744394993;
	bh=d0UNRcHqNB1rKKEP+QmdvRvfEZ8IzqbElAw4zU4zMtg=;
	h=To:Subject:From:Date:From;
	b=lYGTy98A357QdO6yv9pc0rVodCAerFFK4eKKEtbsLggpd1LYe+DAzCJpCpI6/75qc
	 W9u4Si2xiwWqS3gBeyzEV/vOv9nUj6A4oXuQHkRpjnV6f+ajKJjJEyrO5eJzUj8+tJ
	 ZT4VTgIkR/cyzp+EeUNgjX/dWAqz/qKbzIe2Zq86xkN3zXbDhhThrz1B7/3Txbkb/L
	 NX+EHPdG78NT+sUohzjuoIAS9htfsAt3P//XHLsWim79ezmqyS1unD/XGp54TlzM5k
	 n5wLEsvIXFlGUXvbdlRSH14ZIQZHIWjKVNORml9TpBwq11YWCugvH5nrqu05CEG4y1
	 wsVutEbSvFTig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1FBC369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174439499358.13468.13439239983670967369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6ee7b20afc9146c1c211bff496ce60138021fddf1273c2b84c585373c43ac16
Date: Fri, 11 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744394993
