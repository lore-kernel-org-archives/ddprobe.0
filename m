Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D6F27A10C
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749538194; cv=none; b=txyyBXW7ylCWk3+Tz9J8FnE/2V/e5B3YB17gvQVqbgSY/ugR1c/XPqJd+EXjfhGr6PODBYFWdAR8NnM94DnUlCivH8ErshrfN4tH4mRiYaUcMkiGsjJzJ6hvtOOxcHRQ6M1GmYJ626d81Mbb1JDOAo+TChUlsdviAUMP64KCYa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749538194; c=relaxed/simple;
	bh=TcI/2aL7AM8ipASlXDZyayWRqElluVC8+bzWKAh4lzg=;
	h=To:Subject:From:Message-Id:Date; b=cmmfOVxGuPBqlHi8C4Mm6ZmPAoBcFdz57HpGBo9KBjKIJgcB0EfWRLffeeLvFYHM0adVbSVg5XXSvlriywgLLWq6AtQHsUdhaoMQWP/qprA+eEH6GPNNsbpCQm70ZngyHwTOS+vKpbCGseXIqXfNYHeLVL+qyAJpl5hPP41++TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/wF0dSn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/wF0dSn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1039C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749538193;
	bh=TcI/2aL7AM8ipASlXDZyayWRqElluVC8+bzWKAh4lzg=;
	h=To:Subject:From:Date:From;
	b=K/wF0dSnVK8QZn2tcZpIixK+CuAadvfdn6ftry/HetCFNalGOcWmVnV4Al9iNvCc5
	 38HzNLECJr6EW1RGsxf9bVaQTC+uxqMosbbfrdIfHkpQwaL4kmgafUQciZwQd4nljp
	 tfLcYwmmb9MTkbK7yiWzEPsBuEiS0Ba7ML421przIJoTqpYMDMytlpPVKS/OHb2YpY
	 cmP7xWCaMuL/tCZr179TI2K6K0Gcb7A+hz5YzUWhZZjwsiw2xHLp6PMTpg0Equ9ak3
	 n8kl+ET3yOzYp3w09USthJcSzSlnxdJLxnshuwxuqWHhVSFBC/XmKOUuHKxRFfM+Eo
	 DphxVvUw9XHEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB6EC5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174953819362.30720.15227110149586741556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5e0cb8f575adf7cc54d6cf4fb052dcbfb7c5f3ce9b70e2c46bd11a61592ae9f
Date: Tue, 10 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749538193
