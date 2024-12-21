Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE14CA5A
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734777954; cv=none; b=AYAanspPvE9xBjP5pz9FQpIUcAPJF/UVfKuQTNlTDqA3wcf7DFIFXwhZKJ5dQTBM/0eXqFukP1Qhv5Al/KUBZ2tON1l9FL8lzgRuiBmEm1SnIfnM/mhRbY4MCK7OCjtGWzqwC7FPB/zyhO6ogJlvGAv4G0nyMdOLM6ZXx+UYAbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734777954; c=relaxed/simple;
	bh=sncu1Q/DCXlRtKW6DDPnwiGhT5xinCjt+IsSKIycwTg=;
	h=To:Subject:From:Message-Id:Date; b=f9Ks6mJb1EaTYoEZMEQqrtZw1yYReLZnECapY3pVItj94SniybNuIUxpiUZ/i/dS+WYA1sjxqmF2bDCKEZhC0txvIPnHJ8S1yNo+RwvqQ9o7qR0GweBum3EJ4v3N/lQ4pDHpnMK/Ro0/NeGR5GSSVhYpwP4h5r9dA77eBRU77oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PM4Rg5eP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PM4Rg5eP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8287C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734777953;
	bh=sncu1Q/DCXlRtKW6DDPnwiGhT5xinCjt+IsSKIycwTg=;
	h=To:Subject:From:Date:From;
	b=PM4Rg5ePVtOwnUx8FQsPadFQRhn+rhLfXwkrgRoQng4MPZmEwiDXyV2QffAx4yEnd
	 J7Vt3FsONhY5uDeTtwxnx01/SiAOTUf7/wVDoHVN0zvvCIBBaQe9ORuZMzaunTUak2
	 Zt42rCsICjmv5HKyt+a6p3CWRYojF5mY5ibaDALLMZZLRmpAqwJs5GtKj0nw06kUlk
	 S3HmqzXZe0fYiYZXkmGNfwkw4QFsjuSuOdtxn8jDyqn3Yd8OLegl9AkyD+pKZAVqet
	 iF+WeYcOBDxNYlPyMKR13qjhYUresdB9K6SBUJ2bjtoYrcBoz1MAhqo6b69jWArBWs
	 +HC3uGVwVCi/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94128E7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173477795359.30191.17488119793243568736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14b351d323e9fa24b4436dc753f288a00427ddfc6d453b49a14886e9f560b3b4
Date: Sat, 21 Dec 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734777953
