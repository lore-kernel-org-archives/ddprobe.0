Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600C5366045
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788978634; cv=none; b=VS0iQbx+j2QS1yPHvJXzXOWERZpawhbjvvj8vO085lyNmoxkgQrG1Q+tdpCMQKCVi84bNQDwQzgOblLBR/IBKxjQ0yJlKl/SZiPhxTtb3EjkOSyzj1zg8RnpPVBioXLBwxbfq83a9Hckkue56e8WCSWm4JpdP5sP7+81F5v5H9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788978634; c=relaxed/simple;
	bh=3AgpgY7tTiPIzZUFss5WRzUUEPwXHGnTM0skvojVQwI=;
	h=To:Subject:From:Message-Id:Date; b=LNkvEu+CCG3/4P+PyIhV6B22YWaclmq7IQQUGrAAdzOwGB7p7ISaRWY0/IqDLX3O8lA1XGdEilSOCyEHE7KIJdFTtg8ezFuQ0GFyJJqGp+foowysoZbz75J9nQi11PerKkzTL2mz/lh1ssfGu0haqyolWsoXJJLIyY8b8ohCSxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l33wRMT0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l33wRMT0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D787EC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788978633;
	bh=3AgpgY7tTiPIzZUFss5WRzUUEPwXHGnTM0skvojVQwI=;
	h=To:Subject:From:Date:From;
	b=l33wRMT02NeyAQE4G7i33RKR9pDAuznz7V2xEddcrDzR71ING3nGwLbGrxgCQ3EA8
	 TNnw0yK6dGuvGbAEIPQBn6U6r2vwh+lHpZDVl1BHOF9PLdgJQnS2jE3HPLSeis1QSB
	 xmrPoWKeJa4lv4vUVg3HlNPrneE/Ffaox9n0tKryYuPhSajt1KwNpowG+BA4KZBRGJ
	 bWPYrPUPL1JZksha55kc+Von1+xleEoG0LuFarXOu4Et3uCKZRTVxUSXYuY9gUEm3e
	 ExZvGgDgQ+rsq5wGn4vAD02blGjR/rEzdhHEeMChR6V7qhZ6DKhcJxr21k1JXc/j7E
	 s2Z/sS+FwSPJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF616C79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178897863370.26859.1776240971866904381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab0c969fb781a5661617cd485d5f50631479dff8204db0a2a527a965e46953d
Date: Wed, 09 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788978633
