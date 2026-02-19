Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080FF32AAB3
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771536894; cv=none; b=pmH3p2um5naJ6i0/whvtQXcT/YBERf9hb2QNl1KY22IrJOJqbxc5EBpIV+vGmrv9QPPHV76Yqs0AT9k0r4HmZTFc/yKO+0XxV0k1aT8dRCqhUrq1odbicU9O3MUis+2URvut1rVa7EZLh27edoOfabhTo6OxFRAeVsuD6BNyiqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771536894; c=relaxed/simple;
	bh=DoGrU2aG8yz0TPPa1Ow4U/oxDhRSgEIyNCrChgszDnQ=;
	h=To:Subject:From:Message-Id:Date; b=lBACdwwaJUyyiCudA0NGYwP2w7nqoTfAEUa7BM166vJPO1nvmfdX/jUfRSwIECAvuKE7ojrOBrsNcA6Yr0RrDlQAj5fzIUKCWQlugcAPBuNOQ89Kf7s3ErUxOAt8eb1xAd3B0UK2UR7/jYexmkfu2eoe2ttYXVTEkAyNAIeVT9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5Q6klzi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5Q6klzi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A601FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771536893;
	bh=DoGrU2aG8yz0TPPa1Ow4U/oxDhRSgEIyNCrChgszDnQ=;
	h=To:Subject:From:Date:From;
	b=r5Q6klziic6x73WlUi5Vd4nd9lJGLEsKh8buyVpKu2lXGY0MByGvdEoTrsam/cG5n
	 SGULoJNBcpT/IZ16LiFCJ1dkajAIzYiaG9asBJ/v4P9aIgB6yjiKC3E3VNYDTdmUqZ
	 bUgIrbfLJvI0wCAQyKAJwsOohNrPWxTZNo3x2Q0YrJWVlw56b9iVAPzQo/8oILWAo4
	 35iRB+lxJtnkH0+wQhEzvTWZZHoRUfqlx7jVx9NFBIueScjZrAjLYjvqnvwzYlD8qx
	 2M8wy6bilKKYA5wJhwTOq4k8hrkbcLJuSrRRfvxS2Fvf4QLtCcKtWXcHDs1noCl/Lo
	 YkSJq82cbj47g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9625CC531D2
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177153689360.604.17752399866335183493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4faf17b4f7bd847269bdce8de129c9741cfc1dcecde3dfc01ad811e92cca3a6f
Date: Thu, 19 Feb 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771536893
