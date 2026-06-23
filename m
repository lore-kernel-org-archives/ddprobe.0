Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270F532860F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 16:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782233794; cv=none; b=Y4Ll6Y9y2St1Qy6iZNS3PoVPB3msL2qklejU+Hv0aV4d7gUfUNoynMzvwqy+Z9MckdOUKRqWBw9ZC8zPTQ6roxlpJxMzcIoTYSvO3nnv5zIOy56FIDLousbj5gU7eWBuaHs2BBRwbYWKyKRwLEwCQmPYnu+djRYYFivUjT/bqKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782233794; c=relaxed/simple;
	bh=c5DJIPtfM5fKfuwbTxmKvWgTQeolI9TkntgrJ8D/OwE=;
	h=To:Subject:From:Message-Id:Date; b=U7/PkTZEheuOCxRi5/esLLuRgFlkDjIsQKbGkp2LNZNj1mj23ETBxL0IHhS+GD9nZCCh/vnT4AL6UZ9ge3KS9hAwXLAZW7/PuohpWN5ReaLoRYA1bqANUHsM3Tb4X82piG76kxU0/V5bB9o+mkpA5fpurZsgbmwE3gpoUtQcAgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPmVEL41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPmVEL41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98D7C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 16:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782233793;
	bh=c5DJIPtfM5fKfuwbTxmKvWgTQeolI9TkntgrJ8D/OwE=;
	h=To:Subject:From:Date:From;
	b=cPmVEL41/qsMmoPMCreFZ/NA1l3bIaS054rJbwSaNk+459Hsrc+vD8KJS0KEDiRx/
	 /uK3Ouelos17P+ORnE+Xc7We4soDD5OlA1eJ52nW+Bsi/GvbD2m2O85TtbnBg1yvG6
	 RjuQtnILtkzxfN89vHBALR7qYF2zh9tev7PQc+kXsZ7WxpHfOAgjq5aBojd0ypS7rM
	 jJOlwYHZLoBmOgc+KnJbXkB5Hjimc8RZ6IqGzkhPg6yqqgnu7JL+DvV2yEXQyUr3G/
	 ypFp2DfMM6Goek/YNrixlofd5SQn98VjgnWEv+gqiP5iWOjlBjakp5bYO0La6HFgm5
	 11YgKWDnDXrhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA64BCD98F2
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 16:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178223379369.15958.8545236228192917191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9c902386a06c82ab1bb69f5ea055ec63ab89b65ffcb62ff9444fc7c53cde877
Date: Tue, 23 Jun 2026 16:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782233793
