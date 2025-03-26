Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3265E18027
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743016194; cv=none; b=fBi4c2e57ZzqRCKviIGiVCny+PrQ98uy/CUIyrQePPGMhe2vOK2GbBG8DFGzJVfrcV8p7+VrWydrNndJSsi20KcMIpSoFA7JxRvHruVRHQejumJo8obakkq4GvnJKguslunm9U5xTrzyGUrey2QWHkXjkXnyxJczoCAG2scM3hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743016194; c=relaxed/simple;
	bh=tgKK5qq/8BAJbAwkzeKjNDGFFr5UlhG/aOXQ+kxb62E=;
	h=To:Subject:From:Message-Id:Date; b=EnJYrocxWmf6EHWShIhNy/5OTk0kwRL9LzYmOWCDxFgYxYeUgFeky2PVYJMig4U4S0pzDFaoPWSEPrcG3YB1dkSGJQQ1jDEt9/0dkxwXUg4MR7XGX0xDIJP3mM/Vs9yJGcQR8E2BEVVMYgIHyDXSDXY6DiYQpCDV0HA9l1FX9is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UC0TdvpD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UC0TdvpD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD16AC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743016193;
	bh=tgKK5qq/8BAJbAwkzeKjNDGFFr5UlhG/aOXQ+kxb62E=;
	h=To:Subject:From:Date:From;
	b=UC0TdvpDUrCtEPWSUokX2rQScWBGnHPqAfr24OAcQeafnptBNa7fKDnoQuHjl8rk1
	 D7F7Dx/fI0zZudWs5drlZP24BaaaqhYsNDBQI9mNc1JdUWseLaceI/5uJN3t7O5Lhk
	 5P9PIolZWVHFoKy1m6bY2RZWxSUrW9EMQYO6xKuF0EAbAgYtYRr+3wOtsfDzk6kzzw
	 10ljEq1mXVL+JRf8rPcb4h16PKm9BNtvQOvsXcGjPWHmmji7y2fGqYG4YYYxNgXB5p
	 Ez/Y9AiJmLjN1OHimxA3ecMeHbtlTSgJyWhJgxKe8mlZuCJGrFgW7l8aRMvsHwSQ4p
	 8shwV2qsxJJ6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D492C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174301619363.32600.9786497447973102224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbdc3a5da478451e74ddd6537aa61b3591234eb1c39fd8326e95ec902196a584
Date: Wed, 26 Mar 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743016193
