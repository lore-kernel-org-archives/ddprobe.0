Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C6CBE4D
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 02:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715481143; cv=none; b=sANyFnSlR8y74H3e8BVhYp4s5rFqU5/r2/hyVGtVlj+3ouP+J8+0i0fUp8HTHk5fmeaBzV7BNKO5j7Ja/edNHjdFNVAxnc5+wsduSNtcQMNp1eFVx1a+NLG9cKjiBeC3LM/pWWuKTMn8bYaDRzWMVnap+w4YH3l/8AynX6xkDps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715481143; c=relaxed/simple;
	bh=xuqmLJW26KJDrefbOFjIWAqLOibbYuwQuq1bDNzxIdA=;
	h=To:Subject:From:Message-Id:Date; b=O+JZLI4neeGBKPEH9zB9mujQ8Y/kAYkMQVOAoATQLnWFgyOXgLWXD2EEPsd8EGX3dz750IMvd/Vto2BFbJNNuQPg4f89REDA3THKDuY4FZCtJqUW0gqQrDpoWNR0VjSl/ZmM5Bj/9CkW655KdSilqAlTImncxnw49ZlsbpLnICM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rGEl5plp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rGEl5plp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E434DC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 02:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715481142;
	bh=xuqmLJW26KJDrefbOFjIWAqLOibbYuwQuq1bDNzxIdA=;
	h=To:Subject:From:Date:From;
	b=rGEl5plpL0J/911zsR5mXEAchW4Tmw8erCWtlkfW0UMePG4SnauOC/zx0Wkue190z
	 XAQsOyEU65IUbXGRCWY13uMXCakzhi5NHo86YMNO89nJJcBycadYjXSVjGhWybEZDS
	 7kL5UU+rQIxVQ7Rhx2aQONQ4wP8JYalVZxT+Zk83+jRksT1oH16DxF4iWxwlZmtArx
	 yatFAuzkpVcw0GP+ebs90i2yOAu9INrWVi+4E/dMym+Q7jygn58jxgrtRN+3o+oE7d
	 qLKGS6Q38z0PX96CBqAgiKNCFJMOR3Fr1aSPGyJDKyAIEL8GzPdcu+xCEOymhh+9+7
	 jGROHlrjbcXtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCD80C04FFE
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 02:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171548114280.17715.14942115929279291552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 181c486ea189a015e5a3a3f3e66538122095ada74a5ffeb745209fa50362a900
Date: Sun, 12 May 2024 02:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715481142
