Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF7326ACC
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777610854; cv=none; b=PKWxzpzL1BJhg27Qsd8CqFcAcmX76F8TgCeQGtvoZN/rvRtCfuBK/qsceC7vizJVZbjEh/JnetrqHsJEiihMsmHTJTUhk/Y240il7Z3TDuIhSag46DcGOV7+XcTfQKHd8cBLE93ZGwGln4JQYicHH7zOk0jxvkrKhMhfJW2LkEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777610854; c=relaxed/simple;
	bh=3fncPkaL12B+asCoLZUbNr57lSYWrghSD/douq1xxw4=;
	h=To:Subject:From:Message-Id:Date; b=HRfgC0turYJ27jqT8HA98WcDoavKSMIf1YtK2ZiK8uhaB08ae147FM6VPMR8usjtoXmt9pPi01hEUY80aACe+Z0V/n8vTgn39dMjD4bAXjPBrRl7MNlbvMLKkBnHI8X+xmB/sbvD9Xi5srbctY/d5i1PJ6N7n1x6DS8fZ4TQ+YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bwmGCnpj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bwmGCnpj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE50FC2BCB7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777610853;
	bh=3fncPkaL12B+asCoLZUbNr57lSYWrghSD/douq1xxw4=;
	h=To:Subject:From:Date:From;
	b=bwmGCnpjgvrVuowGerIQEvbDs/CQriZ4rH8s0P1aLnnnLhWH3tCKZ2vLqFVfnYnr6
	 J0U9SaLKlCKPj7dapyjcJjkRHoy1bSekeLdKobMJCOfpEbxNWUA4wJUBVg5hAgtut/
	 QIQzwVP53ELTPl7JF77OvzXjtig77KADdCE7z8HXs89gBoShy4lJX6jdqVUbDtQJtq
	 Kb2M5YorVPRsi5CwtFCJyfZlv1G+8nPKLK20u4LnSY1417y6nA/Wn+1c738umF/vJq
	 Qq/LEicBoOO4sn6ekP7NMGjeyr3kIq1T+HRHlOtbTQwWE+6QeBUZrk/fVTbdgDbU4H
	 sikrjPkTn3OLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD262FF8864
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177761085368.1606.12880666919135462311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d4dda0c3c9a9fed6841b7b3bf7cf9dfa51c626e4846f119d03cf6790a655790
Date: Fri, 01 May 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777610853
