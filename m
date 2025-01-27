Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43585156C72
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737965754; cv=none; b=HcQCZ/+6BWJ76wiiFDMQrtNEJB1LiXU1eV4/4hFcSoOEXbd9x/zjIh+xFjD576yP5WV9nKLBAdYSk//tmNUmmLdw+kZkBIihSMD6PhRGHz8Sxjtfl0eMdegeM7Xi4bf3nhv3vNAZcnFEAASEIn08ctrHhv4daOgLsLp3sCzUGTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737965754; c=relaxed/simple;
	bh=bXE/pH4fnI1b8p3TB33UcYViS8tMz9GwtsAO9PKe/sg=;
	h=To:Subject:From:Message-Id:Date; b=f7fa/zTSWKZ7WkgRQRvX/HDlef+K4kEnpNG5cAdZTW8pVkqvPadjcSo4PoywlCOScyl22eNGG1CR1VlK2Pj8l1autIabVEiJuMnlFhqBTwBrpsL3HWXv2W8oNAj15wbxZIYlDQ8eqC2494GgQ49p9+WfFh3gWVTdKRFwp/nKZNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnN896kf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnN896kf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EC9C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737965753;
	bh=bXE/pH4fnI1b8p3TB33UcYViS8tMz9GwtsAO9PKe/sg=;
	h=To:Subject:From:Date:From;
	b=JnN896kfQwnzf3rq1OLauDgCkGv2ZuivZrzmiiVQf0hRsCXafYteDz04ESJdbtFax
	 XJtQPe2n8C7L8r93fkTzW3PARbC+EYQBUVLoOGdzdqs6FqaC2oaL1zuaQsUf+G863A
	 1xa3JZ8UdY17jpK6i7ZjIWxcR08NuJDA5VPrZjrQcPw7vPYgRmWsqgJULORVqnTsXw
	 7oMEaya93zG0nBiQTjMDkIhII4Zsdve5GqQ2hCATKjpoJNSK8XYAHogpMDjeaqxB4W
	 YXbtKR07TcMlOAmIFiPUUSDl8zB6nP6D8OWJsHg5u51lcsxwCB1a/882tM+hIfOEcB
	 vh3xzyswYujgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A09C0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173796575359.2167.7352851963678427291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74d20ea5518af89f4ae49dfaa2049399241c2ee1c95e99f9408fa275d9c17561
Date: Mon, 27 Jan 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737965753
