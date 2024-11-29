Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5118345BEC
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732897554; cv=none; b=tpvrcIAUOCZV8WJju9XXpxjL80iNnuRnFeTU+dWwJF4h3ZQx7KyRyPgY5L38KmBQW0MDjsFL+fPdsXthIu95RcQ1L5fPbXVRDEI0SG1kyTysVI9ER+h8ZVu/VV91GdMg6ymqW9ylbt9SRSyd/cz6T764+kpcjNn/vxwK9nkChuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732897554; c=relaxed/simple;
	bh=H6a7dsBtZIB5kz8dLO2I7P9axEO6uZcoCVqTrS/YuUE=;
	h=To:Subject:From:Message-Id:Date; b=qIZmZ/NXLzRYA1V3fbB5hKmydx5FUXe0fNeUFM69e7fiAfalv8RWwxZxSoK4q/Ixf6BXPQswddY/Mb+Tu/jsTJrM7briAPh/20tRE1NOOhJHBbVKTm4IAK49Qm6g/T1wSS/KwuPDwV/QX7ccNlpcYz2FyfI1EhFK2ML3Oxw/+Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byseMIBQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byseMIBQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C090EC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732897553;
	bh=H6a7dsBtZIB5kz8dLO2I7P9axEO6uZcoCVqTrS/YuUE=;
	h=To:Subject:From:Date:From;
	b=byseMIBQQg38w3JCSmXdPmPcBT6rnKYUUBpekvlr7ALvSUNri1p68rSkaOrYlSkom
	 joFDmEBn08l/Hfzesx1qe7c6Swhcnn1Y2eAZJ3yGZrYvlm79LyXmINoIK2fo6kGWKm
	 BkCSBUpAx9MCQzKvgwRW8qJLrWbMMKuEFUOX5ZHyPASfOkbRiOEVu3iAUpVG8gE5X5
	 6pz0IWdH9BdLdVafXlZL+x2BFNYgZBPzZGMI//s9e7UaPFQIYaNDrHMGd/IFyWSeQJ
	 8g/FQTaM1BAcuPLZY/dkMaR7sg6HFKW49XvMMhxkNKkKjqm4pr4o+nf94w82B6XI5v
	 w4qJOxSPuUg9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBB0D729E9
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173289755365.17107.13951338117062417057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e3821e9dca305391ed029076036519a3160ecc8895632f6693f40da493b9139
Date: Fri, 29 Nov 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732897553
