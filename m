Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E927A18DF89
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742833194; cv=none; b=sTWkPWKpFRg5tS3v5StpOeM1IaaeZOyiw+X9dpkTXCsgpIW4e0AyvD63hjuP6iPARKuzQVZWeDLCdXUXAvlOGDrspCDJ+82ByYtUFs5YEJmo6W8OdZAyyt6q3XGeMT1NcS7NYNKq0TzqHPUX/NfJjKaq8qZkgrCke92w8ugwteg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742833194; c=relaxed/simple;
	bh=deUO8wrZDFZdiLNxlm80OUEDcPd9ZIKVhMVQcA98+bY=;
	h=To:Subject:From:Message-Id:Date; b=jl1iNLbxNusCkgFG0ziEPr7h1lsupZqwwvFcIWC7zLDTcfdY9MfuB9KRF107iB7yrnPSMiuyNCPdYXfDI4D48drC3owCWa4qkiEV/U9lrUIv6TkxGylLZk1o+hjBQVtSjWFGKaQXzS2OLhRS3NSCE+7IaXPoRt/Nvl290Stpe2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XRYhGoVc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XRYhGoVc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF16CC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742833193;
	bh=deUO8wrZDFZdiLNxlm80OUEDcPd9ZIKVhMVQcA98+bY=;
	h=To:Subject:From:Date:From;
	b=XRYhGoVcN7UB3ga8OOrATQdVra0g+8QnoX9vBJ8ZVXhv7vPIhmmszziMmDFF3RS1J
	 MAvFzkTs9b+TcKZ19bI8tprvWcemAFHXNTES/fOcsk6n6rkRi+qPmvJsmkKY7fawiU
	 l5oVpzme2KLzicum57NBfXdQyZlWh1EkQ1SWqI7UEElZYaAnxHg3LHfom6oY0jg5B8
	 kf/bm7a2ZKARG7jp4qifcnwf3FKnwdW+B7UmRuvWG0rkpBda8wwN4rXvYsVTp/YjcQ
	 ypuRlReHPU/67Og2PrW5yQoTqtuq2arPXaaByC95YakkyD4Bs79iqvDDpR+uWAlO8m
	 RZ2TG/W0uctVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDBDC36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174283319363.8863.8352977505820386491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ad58533cb77a4b77488a17a406d25c32a43bc3e3e98fd3a33cf00df590f015b
Date: Mon, 24 Mar 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742833193
