Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480AD8460
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731632154; cv=none; b=W9M39eZq4wbI3en8zic52bo01M7UubG5jtvEhkxTJRRwFV1rnCC8wxATmctm10IXQX+0lgIBY2VhJ1rU+W0bXnhDHJhHC+lZDfhPHj/lssGziphg7PwshAwitM07RsNhHcpdxnEZEbyYCs1yXTjfdUO9W0sttZ0EA9B9HZIbXzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731632154; c=relaxed/simple;
	bh=2VzvHXWxXHkcF+rpMrL4M5zOcsMWfuheV/tG/spkoqk=;
	h=To:Subject:From:Message-Id:Date; b=bLTkfyvbqiGTQ6O2mmbFcy/0osQj5S4NrxK1+jljz/DgrOFllLUKoBzqd3ciZOQ6i+VIv74TxezzN+54bHfAYu9YDVf2sJEbPXv1b/zJHV6gttaAnKHSdFgjqV9942yaWmjHNAJv1kokySEufrnxoVS6cY2c/whNXdGsFiBXrNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBC3SL+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBC3SL+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF67BC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731632153;
	bh=2VzvHXWxXHkcF+rpMrL4M5zOcsMWfuheV/tG/spkoqk=;
	h=To:Subject:From:Date:From;
	b=WBC3SL+C6wBtG2hdqDwdZOznj9stoU7nSzEZJ5fXnKINNoS6qUFMh6ysOPnEHfvJV
	 ffAn05qDub03/EdOfngwyAJ/oB/4NnRuP4CrKgYWo4C7NwNA4d5Gm7dIY2IES5J0OX
	 Ojj2O9GMZ99MdSHa+hGX+7hy8/bBId+h9V1Bnz1dJ1ysMtyuGp/cmuecf/JCApHiXi
	 gVVxv8fO0uGBc/kWWEtfWIMEGkIWe+IAaYBPTO3/ruwbqBsBGOkD3Hx2xzlxRvWJ1R
	 MgKQf/BuQOl5gTyVyvaKOnaFhnDuVXl2zqOfMpbgouKVojFoPuiQbIBstJRCnxD4Sj
	 +YpNgazTbSHBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB03D6A25F
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173163215360.23450.9600982958653604382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11939f27383a3d0df249e23f552f38d6ff72c63502baba2d79e2293c7422d5f4
Date: Fri, 15 Nov 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731632153
