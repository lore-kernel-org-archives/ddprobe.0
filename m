Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBEB2C325A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748897394; cv=none; b=ufnTpdAXt7ouv2BuNvBF/UZlI4mvAlNRGWOHG/FDr7kEIyFjoHlMo5q+fzoMKTkCTjuMP2TEdS84AQSDxuVtu8T+7JUTiVFMmiCnZ5nQ70AOxf5topOAM7u8JjYyb2bZipB2raFOpWbCQgxgQ2uMMheqKX9OJuzSF6g07oHF1uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748897394; c=relaxed/simple;
	bh=Hc0KCpItF0yXCoMz6xBJejZtii89O6YH3YpL9TLYZ/4=;
	h=To:Subject:From:Message-Id:Date; b=MshX89BmETgC77CzORAimI9cpJ6+N8q7MQkIyWiYIOEfc5BHNA/suMzwUbnP+L2OmXPZpHhSywYkG/zDvJ+tiIjbyVa4Wx+ffeYqFdqP2KVnNw+IJX6BdHaSn/SGThIlnrGhZABC+Y8cH7tyWmRALravt2cmh5xpADqm9vmp2pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Psor6lw8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Psor6lw8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BC8C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748897393;
	bh=Hc0KCpItF0yXCoMz6xBJejZtii89O6YH3YpL9TLYZ/4=;
	h=To:Subject:From:Date:From;
	b=Psor6lw807EPtgl2qy2qIMqB4UWzG6sijSLPgJOlgV1Q3R1axecFLmG5lqCfqx4Pn
	 Q6gogF07MvR/M99I/cIBCSH2guEiOkPaN4AQqCHbGm/e9WuXbcBL/kf75BW2i8/3gm
	 cFFPwEjW7nfxcY90DY1f8SCebvAlaIes0gmeFLqB9S0W9nsJOCDLxvwOaegucL5PX7
	 b6ntTNgCFWqS8R/DRrciY2fGh51aZTfTpp2eoDU0654Ccxt13TjQ75eEz9FfYXbPg/
	 jJjjXKAkms2QLsF71Nf05nAh/U1VNBlYSsyui6pxppRnRqeZXsa+I/Kw20+qykbTmb
	 eHBXREs3r8ImQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91431C5B555
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174889739358.1953.6621133971138474543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d02e54d4711e5e7f971d93e60c99545ffc74f943a74684916324bdbb109938ba
Date: Mon, 02 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748897393
