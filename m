Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BF31B960
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 06:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720076123; cv=none; b=dXCvVW2dsRDee8FKZlZFYjv1jATeLj/VDdiRpZ5JaDziCqe9z6O0cet5Qh7wyRKY6rZwDF/G9hSNd7OZC/od2FNx3VJix3pIdfFfN6h6ZbrEWjy249loW+6ju/z0oM/pISy7WqstRTH37J7BXlGg0Vbr51K0dKQcZPXxtEtdFlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720076123; c=relaxed/simple;
	bh=73JhpGWqoqbtWfXryrMRiFgwR3+F53aX2D9aE+YMXd0=;
	h=To:Subject:From:Message-Id:Date; b=hE2l8+EONyIJSjVUkm/lPm9+P4+br820GOX1QSYRGPcO3DNveFb61FkNfiwYnFlKSDg6aGAnl9et3tGlb3HRlmRjpBeHIrVwOXvz5yNU6shICpGvXA1yiqHZigNzx9x1gL3f8QeXHfSGAK+vdfCPIf8WFe+uekuxcHviUrlSdrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6Uk0ADE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6Uk0ADE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2170C32781
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 06:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720076122;
	bh=73JhpGWqoqbtWfXryrMRiFgwR3+F53aX2D9aE+YMXd0=;
	h=To:Subject:From:Date:From;
	b=s6Uk0ADE4+NbYzk3tJpfwPd+sclhCjeqSluh3YGtBgaSZJRYwXY+3SRVXhp0IQUj8
	 4T8yXPiOR4gSuqk3+YnKs0bk6yYzTTZQ96sXq6iR4aBJKk/Myf4M/mc6m0xVJC4vDP
	 L6Ukcds33dHuFz9xums/JtN/M5t9TWhqtuYtxVdwaZWqCytcPSccdfh/Ows/I11Qh6
	 ZmLnRIu9OQPA0N/1AGzECRiygwJaRYVYF1nRVlusOaqRGoNu8WyZN+XSE8+Wd05vXL
	 kUbcvItzUvpubDQsv/52KHkh4MLmvn8y0x7okmT6qf4fxTHVuEzV++utgMU36pgm8F
	 tMrCR77gKEn5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B80C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 06:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172007612277.11257.9026402938577831727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03cb531489df711de674352479650a5292adae8ab40e0c6a4ae929664337f04e
Date: Thu, 04 Jul 2024 06:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720076122
