Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3CE2FB6
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746324595; cv=none; b=GfHUKrtXOzFEHFX7+VNoE0ywu1M+z0b9+iFjaOd8vY5TSC5J5kQ3nKItpUrs/8gkUZTnD6oEWGT8bNpooj3cHkptYRXq9jJCb8vL8Ki5Li95TfMWReCwcW9Jwmm46b52m68T0pROoW1ncAdp+chnu/bRmbR8pQ+TpoDUxZtvJyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746324595; c=relaxed/simple;
	bh=Of7+QjZwkFuqFMbdoJwDONVOr1ZlljXVcLNyp/WT81Q=;
	h=To:Subject:From:Message-Id:Date; b=Pz8q0HKwKLWXHEOPJihS3myWokNn6zSxWzjUtXa0tKo6mZHiJpmNHQ/zdFYai3Mjew2S+Yzbr2xBz6scfJltsXnjMnjuSvwSEPj0W6YIcDiO4uKhqlvPTgp7L5smYeVgJ1kSdMoLmtmQ/yDshcymmojMqwtHf940Dympxr4npJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adwATNbn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adwATNbn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEDEC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746324593;
	bh=Of7+QjZwkFuqFMbdoJwDONVOr1ZlljXVcLNyp/WT81Q=;
	h=To:Subject:From:Date:From;
	b=adwATNbnzXsTWWCEY7vRVlKDHNZccPIHhWqUgOECQ+sFcIBWLD8bn2I+yV7V+judJ
	 kXFj3iaWeVE93xbD8sJzinV3huKfGclZ+lH2rqtSPSMbG1E90+aZuEp/IA/RybYRKb
	 dm/P6ylOuBOWE7/lXfglapjSxu+3N+N/Nw12v+zRIsw0go/wzTc+zhOWENmiVKttb2
	 tsDH0AXnuDNhW5ugS3JzSfFoaWRcip/RX3tNKMgANN8GEoXBJVK8hlffzTYEIjTwml
	 JwY8SBauI0FXUk3L9RfriuE7RIJHpgFeGXy6Jt3paodhHpqHalTCuPunP0rtLUj6qU
	 0DFrV4p9VWiOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932A0C369C2
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174632459357.16780.17909630096596891877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3bba3d43206c4a4463d576bd65b24ffbe85dd844e5f13b6b57281bbe90ed8b5
Date: Sun, 04 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746324593
