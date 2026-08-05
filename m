Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C0541D226
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785926434; cv=none; b=YLqexnHSnPtQcQ7g3yeGs8L91QsmHk4bDZc0TbgBxS+RU2EI4Fq+5NuNfB/nbP2wpe6f9Osn3eDoopsG/6csYY6UYNQZF/qgw6U6gnenRJCIqecald1gh7ksW1Cv6h9mvLNIr7SugG39c26umuCSgJCm4W5DY8Kkq4DwF1IbBXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785926434; c=relaxed/simple;
	bh=UMSl2gE/QpqFh2DWEjbgx8ijT/Cmhm/fA3gwQM8fwgg=;
	h=To:Subject:From:Message-Id:Date; b=il3GeAPObEDSxqeLlAono2b4q6r0+oMcSVFDeYH9pbez+j/xcSTNV2uEAZffghWOa+5QHRKgVMhXvSqXfIF6W1fvTIXIEijb4IVvfsm6UtfPJEJREvAbwBpS1tCDqYtU/6jBsxeKN5r1+hR93PY3lqNQSfec6MXmbnP1ylGzsDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGaNaMQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGaNaMQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C89C2BCF6
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785926433;
	bh=UMSl2gE/QpqFh2DWEjbgx8ijT/Cmhm/fA3gwQM8fwgg=;
	h=To:Subject:From:Date:From;
	b=hGaNaMQ72/sKtQoSRK8gyw1BBloXefkRjKYIlFurMIZ5q4GaBRDDcnV8XsnxX0AVM
	 EJeMoSStuD51n2mn3aGfxO7JM+okdW1lnV9D8zpxIvcAu7uu3P0ZwmhFMVlE0pXqyw
	 TXgHS0GGqqC9obY6K/SzxjuNgV+dth0nOoYLS3+bWCDDhxOm06D823RuhZwd7WQvZF
	 jxjcF7bi+SxgAPsqJW/8mv0Uv/yj5rWWx9esm7Kwu1xbyA8JRYSKR2QTEfHMVT63OM
	 7OX6viS8plibdpUkoH+q6+d92nhE09vQfLcC8EUgXZOwmDxgaI8RyAtlxxj/X77tAb
	 JZoFP3rCaTcbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB48C56203
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178592643370.12407.14888297752103907781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24fddafdd23ad32ff5d940dc35265d1ba2c14e0681b66a754c180f9be6deab97
Date: Wed, 05 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785926433
