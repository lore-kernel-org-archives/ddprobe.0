Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6540E38DF9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 17:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738343154; cv=none; b=ucFHSiZPYM/qtvzPpryq7Iue4c2Li4jc7/L/jpxTKkg5RO2rHMkdwDu+zE4ZcRpG7KZQjoPIHCkljbContVaIwdr3V2nVdBlp/NPuxQ/DQ9hJPkLzolcMNj39y3qe2bB+lmZaFbQ43oQjtFnAP+pn+LsKuiTE0mZ9DmaVut3BDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738343154; c=relaxed/simple;
	bh=a9ks0CgQqLQdN4fH27ji+i2MqHNu/GZttfE5rl9hOgo=;
	h=To:Subject:From:Message-Id:Date; b=QVWw3+H33a0G6V+7AhuJoo4qmtoqqA8ynFwEN2x05YhIhhNHkVm4jNdTGhiVHwkFdW4GP+nOBQwVkDUAjRsTLeqXaczsqnh97wInX6LlNCq+hdHj/1wDxodTCoxjEGqKvqPCoONLGGArecZml6pakxmx8bnfSagbUcggh+6j+yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rj/ydqwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rj/ydqwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E22B6C4CED3
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738343153;
	bh=a9ks0CgQqLQdN4fH27ji+i2MqHNu/GZttfE5rl9hOgo=;
	h=To:Subject:From:Date:From;
	b=Rj/ydqwuTv+unx8eU/0hNf4gEN+sJF7I+EZHP7IA2RH52hejEGPv7HuSrpIAjGt0u
	 EMJIezwjLf51LGmb7jt8ze9Y4VZ77F8c98bMpVheyEpUJNcL1rx7CwzKplaRGPE1gc
	 16X3w3ys1fYQe/qIgNnd3xenn43L0ct6ga1FZira00DYQwoJs0bEhcNgYkS76AsQMO
	 1b/SYO4YoPvx3SGZtGTdf8J9E5Sk4Y6pAP2znTTn4ZL36YqigGAZKpiownNlkx4fTY
	 xEloLy69ap44UGAPdSnp7/D3UD7xx/QmyUaSYmekiCAXT9YPK5Y++q0pYTES5aSxxm
	 +veX++wXi1sAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7411C0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173834315372.17516.14154543193187347766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700f0c733621df258702a0707eac24d785066a70d2a5df623c1bc4e53c78e3ee
Date: Fri, 31 Jan 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738343153
