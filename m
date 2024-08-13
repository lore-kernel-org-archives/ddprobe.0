Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C0459147
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723544154; cv=none; b=kBwLZH6r7LzhSJnQMjMFl2pWtT0G7+EC1isEUtMsG/kgzuaafd9KNbytuy+6vmKxYi1K1ULxMogi1kz/Vrsy2EV9uIfFK70kzR+w6R9BcCKOMuSdp9BB39R54YX95bR1YpjU1smqRvgzboeLrm+YiFO+Qei1sJfFzGs0IkRxUDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723544154; c=relaxed/simple;
	bh=X5njtpZZvxWGykiBCq1oiVQmNb0iIJZM9/IatBMw4TI=;
	h=To:Subject:From:Message-Id:Date; b=NmovQm89PAsXBHc4c9eYiqEwjdRVRK532dHxo7iIEGmCGBhCDJO5cFVDZQDNL9S+1Hr/hVD9lj3SGZS37Y7V8esoVtFubCkVZkPHM3FNBp3NrxmuekGvdYFafeWeGA7a+h0J19BSwf7nRLV4dt9QCA6ag1Lu4zEVMQMU3UagxpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UoltMTVg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UoltMTVg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28E3C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723544153;
	bh=X5njtpZZvxWGykiBCq1oiVQmNb0iIJZM9/IatBMw4TI=;
	h=To:Subject:From:Date:From;
	b=UoltMTVgOrsy+qexDoqFwpcsWAgUzg/xtmWJgnwo+cDvMcxVfm3hT/HfAlXt/8ttH
	 yJum3uah0NKLy6eSQMMkWdaMkwTw/cnJidQZOmori17uXJQSB7Iib1u3vgfplyj5ly
	 OEAgLDvOPWn1QUVsdv+Pa3Mo/lCbcAfeGS+T4Z5qVapcNpPac5NhiwBsLVQRhTWRf8
	 Vhp3q8qzBcLKPAhmu9pq6KobB3xA2lzfjDS2XB6IRfIZvDrRAd7dn5wO1nImNDOsMG
	 bQ9MSf0SB9+jG6CK85H/Zh4mNVt6IKUX4zD1YSfQsbURn15tUXYqrxk1Csoam2EHIX
	 7KRbTSgiAYD6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C78C52D7B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172354415358.14345.5877489129344349914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fe16626d9ce30880ffe7e728bed810e35e9f55ccc72d1539e396750c2ca5349
Date: Tue, 13 Aug 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723544153
