Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EF72798FE
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756762194; cv=none; b=kZjAy4vG0cWlDP5ZzbfhS6fkDmVhUlXCFcTGeRDntW+S4aUKTjONMsp8QpgnWY9n0XrNte6CHRpq3E91uMiQaM1vrFxIHN2yyHm2KoYaeUfRYflec42vW0ZrOx6NAvandKII2nm+XSqUUYUsVMiXZgsEm66A31BkU+0oGaXYXaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756762194; c=relaxed/simple;
	bh=lrQetxG17BDvP0SPHTDVdKC1Jp+AeGTA4N2kUx72oGY=;
	h=To:Subject:From:Message-Id:Date; b=oLd0sf2dVvXIsGrIwOKIBIzvujGG0MgIkciKonwCITzj1SC8hBNcKc70CVVDjwfMdEMKc/oB4LjdBgx/ntLGIyWOJuMn3PMw/Jg5SPY7V8XHak6VH7j/tTJXCvEQhkh1Ev79WuQ6GfKUGi1mWQS++bb3pfudL3OgXMqRHCwt50M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0zXw5g+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0zXw5g+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B46C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756762193;
	bh=lrQetxG17BDvP0SPHTDVdKC1Jp+AeGTA4N2kUx72oGY=;
	h=To:Subject:From:Date:From;
	b=G0zXw5g+Wo9olVkWA9Nx2EZ07m6ze1oTTbYQQzZkRRlCjUM2WQIz0o7I+tqKdc6Tj
	 i7ngeNRIsyt8XR72E0fe9tlSlP9Gl8QAqHf1M1Ue8VJ3R2iLgyIrL/qyUS+w/JRsfw
	 qroSg6qGBQ6s4hRPQGkzqDqPyXcqMWLEysNgRExwcIQCBO0nTmo2R4wef0bDL0Wn8A
	 TC8i+sOgci5km8eq1+UqOIfa+MjYR6gXUxInUPDFoYYR5GxVitzMScQH9B3n6ET6LC
	 UTB8Fa8k1lhUcyuU9uiR0ucBAWuKJz89kYROIgi6Q3Lns/GG3jFY5tAMXvqpEbR0NQ
	 n7HACsdtS+QrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90444CA1005
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175676219358.771.14143183310832564425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51fea7b5d0fbe62abace630e0f78098b0a1c4d1c0c6c291dfa0d7998686519e4
Date: Mon, 01 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756762193
