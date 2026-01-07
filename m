Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEAC313539
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767781434; cv=none; b=SFYtVqWmTdsyNfrO/PDglqNqKs9+plbqB6NVH/fRoCLQQH0Po7nR0qkr5QDMI/2tI9bhfIGmbj9HLnZSRRxI2gXlscoT4terKA4bIsdBXP5Tb2J7t5CWR1plOnKgWa9SJ+D0IgHy5frPF2OMElgk+A4OrNuO8SV4nQTbQKStP1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767781434; c=relaxed/simple;
	bh=8sNDbWMgdK9YBjNnne6JZY5InBCT9KIMhkUpWI/5PII=;
	h=To:Subject:From:Message-Id:Date; b=XeLAKyoJBnes9fo/J/kvgS6H9OP6QBQ1JHNnXPPV/qrvLX0fWjbCKkhHLUtToyInM+SRJWA6KWU2V3IiTtI10grTtInRvfdyobv1YDN/MOuDlkHVqMH3iNCYUskeuJMnB+HxIM07bQr7Z/+IwqK9YV9HcTCrnXwZfvtCLed7ZPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+9sDcRp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+9sDcRp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DD7C19421
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767781433;
	bh=8sNDbWMgdK9YBjNnne6JZY5InBCT9KIMhkUpWI/5PII=;
	h=To:Subject:From:Date:From;
	b=L+9sDcRpSMhduh3tft+XcbjOfEvm/qK5yTZHxZiGbWWfny8UQQ15oPDXvs32K4y6d
	 cMZm7muBaRtdn/8ff7tTZQlGffyZgH+xqTuFVzDKq2n9pDDT06I/mzqxXZJ/L73esI
	 a4gpHUAwffX1IXIcOk8Nts8Y0kmHVXdhwQe6vY4Q6gD3jEMmc2QykMidOFsIAvPerm
	 m99xjx3xr783zNsnFq/e3cL5EwXkxsrnard+CKGagZN7cVzGSMtycUG1BcDTnb13wX
	 TZ2YCbhySw3Wl2+AmPedW/DGrE207iJM1YyGzBs7PH/mGjqCS891NEEltwvXAPSu7x
	 kU/qSTCh5ttKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCF5CD582A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176778143358.550.16901765640635665057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f2e167a5b4a83bafbfab39836f9657aa6d22b182d78ac0ac50b8620e6088a35
Date: Wed, 07 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767781433
