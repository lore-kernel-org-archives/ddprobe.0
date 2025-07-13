Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331DF19D8AC
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752450594; cv=none; b=W2ExLhcyL1x/Dj21Z7tWuY/HC732Bd3HNUFgoARCx/TkGqG7H3LESSuGH9px0rbRYXY3xxLYtAoAYPoAsH1sGpyHwlMVG6YxNQ/joMfeLQ8lKg0xfmjaQE5dx/FXyubm4cusG85ScWo7gNYBQgdV/R0seQi26dHGTnQyOTlolJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752450594; c=relaxed/simple;
	bh=AFzSyZRghOscywXEBxpzQRxPoOWFT9l9tQq5eX/unQY=;
	h=To:Subject:From:Message-Id:Date; b=KbjSvRTNKknKW6WaWWtONYEGC99+1JDYXsXEL6u7NqI1tF2xkbHJBvYPphNuBtEpHR/5mZrSvhcPCz3aPkPTbfitqAY7e6qKicGFQ5PiuwgCmDbUDiEPBrhCq2dQiZ6BRycnIGCwOzl1htHWKzPKt2eiDcv33HSMSl59iZWApDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B05ogIRX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B05ogIRX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1500C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752450593;
	bh=AFzSyZRghOscywXEBxpzQRxPoOWFT9l9tQq5eX/unQY=;
	h=To:Subject:From:Date:From;
	b=B05ogIRX1iTC89rbYYVO53ZOkEmCL9CY0hNZBngE73jm3wwGDq1i0XphN1387i1aL
	 GIUGcrO1c0Av4i11h30/onTkbtHBrSAplNutSXp5XCKGohDzGA9vMXcF6skTC0JTM4
	 g0PKD2UYpBZZjvta2LkzLpMMhDn2cjEAgkJdwLfhC3mGFK+RmWw4QNmxl8lljqbXYi
	 Uzb9pEnyEfzHWP/FfC5lkPd8Po7kwPXS1tgYIU2CquICpj8yqlnEVc78T1oh7NXLnL
	 /ufZObne2R5GRB65/9QrPmtIZc6CmtcJ61HSJpaoI8tJ0jd7ESiE1TnGokvAswxWk2
	 M1+nCQR8O2hSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F222C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175245059357.17514.16389699879580059159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a8b4edd8b0709178d215c8f9f95cd131fcc0e23ec9ef8d2eb5daa091bbd9994
Date: Sun, 13 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752450593
