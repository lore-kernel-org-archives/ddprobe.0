Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F40C2645
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760486994; cv=none; b=UJsQUnMqGq4Sm34mIYTOKDx5nR2qAE/o+uITrOJibuyL4MQlY4kV0pZIfnKl22DEbhyknkXXewU247oHC9uMpz37g4B9vxleUSBUI3wnb/HiNOX0D4MQUm2n9SPYf0dejTNHUoWK75Z69SisVQYrBm9XIVwrqH0/ny/tmwQ6m4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760486994; c=relaxed/simple;
	bh=jj+GMeZjjSvHzKkgklLeoCvxlvq6NqJr5siAVOOkqC0=;
	h=To:Subject:From:Message-Id:Date; b=P5fXaCm2cGdD1C3jSgATgGMMvxOxwb8dBQ5YW5VdWWAVi/Szgk+3JBAyvfZaHfmrQxegw6jI65xfIGkmvyz7xtLKcPu4n6Mk/c3k/anvC0TB29qgaU93qaGEsHMMJgANZIiQ7uE+ra/2V69NhuPYl7hTiig80ejqgzTHNcwUsy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQGItIHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQGItIHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CDEC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760486993;
	bh=jj+GMeZjjSvHzKkgklLeoCvxlvq6NqJr5siAVOOkqC0=;
	h=To:Subject:From:Date:From;
	b=eQGItIHpCmCuXu5YuIvdQGNyRrfrjp/tGyuR0ezzVbXZziwiRxfwQ5J4wFU6VPSla
	 h0tQAEre22Y62L2GzFE8Ca6X00jcWaPUwNj+7KBXh3H0zmBjA7tsRgjmPNEp1WGpzg
	 /H8WkAeJXdJDk1wSJOqjSjLdZgBXKoU1lZm6Xudz9YfIrDYA/tiSYpw0LokfVbNzlQ
	 ynsjDE2h9DDM/niubG1g8r2UK0qztF6pnFFxhx1kcqZPB4U93BHdMlvZGVzxHpbtqK
	 ydj6AffeOY7a4QYP2E1cOC21h8jrsyvnwIvd4bVP5z9csVTIEYmd7n2l+Ww2u23h6s
	 32MB2OnqLvahw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92120CCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176048699357.11859.5472597720160432889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f750e585ecb177650c02568b27a42ac21df811f83d555a522e7745b0e2ca9fa9
Date: Wed, 15 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760486993
