Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5792F190069
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 16:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719418403; cv=none; b=clsJXQygot0IamLEoM5QmtSqcbkPuJ4LEmUPRCgRw12RpSx+7ix0eQUYeQcHkyHmFkO1DokVvZMfqwjlpwXAX2toNU2WrSKX6eBvB90d8JONCCDo7cL6P/Rjmyht05jurrf1vqQIKgtLXAJ/nAltwP53/yFDHAmw+ggAXkttjXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719418403; c=relaxed/simple;
	bh=GPCua8cII4X1ue+PdfS6MG4nFVmajJhzP5G65AtyxRA=;
	h=To:Subject:From:Message-Id:Date; b=JDZStBHQgG3pZh40TRqe1QOOxLvssoXJws3LRn6PgmugBDJ3+P0lxXYRneULTBGY1/2QM2soTeuJQtC8nlI2waHtIeK+HFcLUwsSocpD7KaWT5Tolwo2GW7/pISbG4xEeARDA1NAVpcsD+yNnn6nL9xuQ1r7bwaS7M7oYtEwglc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8SoQgE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8SoQgE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39C3C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 16:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719418402;
	bh=GPCua8cII4X1ue+PdfS6MG4nFVmajJhzP5G65AtyxRA=;
	h=To:Subject:From:Date:From;
	b=C8SoQgE8BPu3bUzaGYkTu7nrCq/Tl7FH7i79o8MgT+rg10D16w3LFw8O4O56gwT4f
	 txZ9BLJB9YRCkq4iIHD9K3TVFrOdYinMgSVvGLqAqnoIxlAjSKftMIaKwje/yHVh1l
	 wN7lJpqbZ0TmVTSysRQOqXMhKtw44+mCvBOhbogd/Fafob0hbDzuHpfDTkrGDNThfa
	 koueyirqNWKubImhwk7vNfmSIClMUavexMda3LxxuQUo6iVTHlF5m0ZEQDwakQzBLI
	 8PIphh3eEBNRI7psQVF6WXCKhmJmwsddbWe0EeXoIMZvfkKvBYB4317O0pheqmWXA5
	 h9mt8yL2hNkkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3408C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 16:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171941840278.14349.15972404103456930620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24fac59c4e6992122fb3a8a23731e8a9d4fb1ce479c91fb3db831f36bb5edda6
Date: Wed, 26 Jun 2024 16:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719418402
