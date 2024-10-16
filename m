Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2BC42076B3
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729092954; cv=none; b=oFh8wwHWLVi7jtgKtokF4hYiAn+IQs3tXOu6JjUh5LRmKl2nPgCB/HPrDzQyQRE5HMP3NN5nPwpzQiGPkGezzatXNgMLLRYcpqVkEmFn3Zsa1NAlaIELfYvTMmhizHuhhR/Osylo64QhuRWQHN2PogJ1N3K3r1VP8cQeLvphPHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729092954; c=relaxed/simple;
	bh=XjMiFT+0EPtvlRHvOwTpGHIOikrULZRH+gd7t45gVSU=;
	h=To:Subject:From:Message-Id:Date; b=RILjzRtti1pg77CSwfv4jeol275i0XXEhrsh7jhrWy8n9Rxe7JMr5SihNcLAklt39+1QMfMH53v2lmy9JI1Jpo8EIEqjlWaGUu4V5AO4MoKZJO1csfjrf3sJ1nvh3bfPIei6bWUjA7+9cKrP7h3ud73iuO1MtmgLVoERRG1tdMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WkgggCt9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WkgggCt9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54B1C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729092953;
	bh=XjMiFT+0EPtvlRHvOwTpGHIOikrULZRH+gd7t45gVSU=;
	h=To:Subject:From:Date:From;
	b=WkgggCt9fWF+va5BN4NNCcxx6SJl2P1i+95ziXL8zqwclPe8yqwKPAG72dmNa2G0T
	 TkoZZ17OM6IkfoAVU561gdtSWPgKLlagtDcqca9OGJ2OQ7D+anTy4JmSWXy/m2U4LB
	 fWay1BATLJrjm755BvgxSVAd5ZPk3Vd2ng+kE4Wg710MhTKyzq2CxpEz/Z6ujMJyo7
	 kOkZv/5xl+2+yLh1eW+KFJlkH7WOPA7bdAqA2t1WVKImbKiHYFWcNjd+wGbfMyxVpl
	 jNzVEuaqJrPs7qbOsieLzcb3TUatGgxayiYbHg8KW97SH/pfx1VFu0tTQWg4mprTmS
	 nNnBZWow+4dBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9525DD2A529
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172909295360.11645.6537892320319629778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f629f80d462e1b6f20af3a68bad631658110d51ddf65a8d694225419c1ccb18
Date: Wed, 16 Oct 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729092953
