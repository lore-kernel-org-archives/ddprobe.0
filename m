Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AC63BE651
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 09:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778492434; cv=none; b=X8FxGHBtpARyBUUXJqIIz8QCvUcuFxMDvQrJgJkIlM1cTvM6iI/HbirDKHr7bsgc7ML1CAdaToyZzT4Q1SaW5WLEIcKIfEmUaS0HAhf+cguUxVNrXQLqhmafO5c1JiYZ4GAkOL05Uu/83hDwWGWAQ9pFmZNu2PHVAwHsXFcolFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778492434; c=relaxed/simple;
	bh=GCjVSUFn0LP+09k4K5PljCik86rBvcgr14rpqC1OuLI=;
	h=To:Subject:From:Message-Id:Date; b=A72tlxTLiODapFXi4cPgLKnvY7e93xpOuUZuVEUAZn+JwsSz9wjWb2Qjn5dvdV+Fyyc6yH73kvJYoY7L536NWhuTnIrlW85VCNgUqFlRNRVG8ZqoH9Y5m4HUH87d6vdni9X7i6kJIXoNgxSTqklzgfqSf2K5b/wuXKFkDluIk6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4mni9bJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4mni9bJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2E7C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778492433;
	bh=GCjVSUFn0LP+09k4K5PljCik86rBvcgr14rpqC1OuLI=;
	h=To:Subject:From:Date:From;
	b=G4mni9bJyBn5lIw5GBdOtzkz2n4nQxioxkWtyBnBhVqEY0XXZpjrV84uwhZxZlXXm
	 t0xJCWptikSXAzLruN02kO1APZq7tNOu06vslQr9ayu421FEUbBFyGIk2o89fn1edV
	 KmZa9KvokCbxFiq/wh6M+4G0cogt1ZsZaL4azXBzF0/pGokV4Wo2LwR7gYfzk4WjLv
	 LB+G7VQlTYsidMwzJNowAXofO7HUfy+W8zEHQSJLenjHAJyEScDScSx50ETXCGcPn7
	 agNa4uaHyEQv77tZHjTPA6lFvuUPW80LfjQEiOhXgNbUjhz6yBF/K0OYhCzqQujc5i
	 zT9FVVohwk0DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB43CCD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177849243369.30306.10914348068828280924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74a4e8a42bf5339842265ff0a0055babee90830ef76462420c209017906330f7
Date: Mon, 11 May 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778492433
