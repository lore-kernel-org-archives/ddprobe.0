Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E17B18B0A
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 02:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763949714; cv=none; b=eqK0kKOIKjhTlR6iNAu9j1v060DLXN45JaIdvaqFLMXM76KMhYN63yjzBt1QOV4aRfKokAI2f22oVM0xfzSdeGww9skkxOOgOJAqkWO9BzNndTIaAhrcGo9daNVfcDvTtgrR+oBfoV8x91X/rASiekzlicWyXM64lhYN96LzQvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763949714; c=relaxed/simple;
	bh=bRIaojN9U46XnkWlkoO8zXuriK1vqRvTyFNqtBAbyHc=;
	h=To:Subject:From:Message-Id:Date; b=T9uxfooYgPktwQMpNBd11bJLuBbGJKdzqz/F3Q+xZKCexVkoTNMb6HTFQj9wPF1XuYtnJO5GxL0AcwhxIUB0sekxd6JqMKSKEefpY2pxZUVLJKQYEThprE7aWBkFzUhOinpW8JFG34JRjtqXM8E7lhAFrLrQeE8tgRXNT+9KFig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4SUcVFC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4SUcVFC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41BAC113D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 02:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763949713;
	bh=bRIaojN9U46XnkWlkoO8zXuriK1vqRvTyFNqtBAbyHc=;
	h=To:Subject:From:Date:From;
	b=B4SUcVFCG4WEGPZIMjt7xx8i5rp64Hw9ptGJ4AHtfKByUIQ7tp840FvQOnZqsBPtY
	 cWDoQRE0UvkUKn8VbP3zfX+gYMBPhujP/CuIvl+kglMHLd+7CaKpzkeoan/SWO1enN
	 jNaSPZ2Ym0BicwZLI8vy6yRXAqIUrQk4lJfApCt9sxFUupzfrwQqca5pQpJYpxSuyw
	 Iy4jxb1eQC7q8EFiZobMeBI9UTitd3BNInEs10GRs9/2Kk2uaRzFKpGZlvHnqKTqjH
	 fg6rqv5D605m/ezGiCdEd6WNEs1QF+VIG98ajD1lON2sVg5cArOGAvBn+GHPHBvUaL
	 DWTHlqP3OlVAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913E0CFD2F6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 02:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176394971358.26553.7385167751164443751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 401b64a5cc408e5c4f36849b225ab57f73636a83f59f39182f8f6dd94300e20f
Date: Mon, 24 Nov 2025 02:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763949713
