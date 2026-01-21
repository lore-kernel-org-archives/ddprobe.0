Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381BA280324
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768998234; cv=none; b=bnsuntx3ZSCU5Qkr7mr0uTQxJwLt1sHtrlhoc6+Gup/OPBM6qp3+ddEtpE7tJttWaY6wf4yhXJGL2wT82mjTyQdAqyKlEVy/MlJsm+gsI87lxVM5xR54kKK8e4g0XXbzBhWXPSki76yw31zLi/irGgfQY3Gh5UbapGcjP/IX+IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768998234; c=relaxed/simple;
	bh=s5mr5khVE1s69U7oCTkIlyh9LJvhjElKaPPN2bcrhEw=;
	h=To:Subject:From:Message-Id:Date; b=H9sb7OLUegbczaD9wZGoZQ722OwopIQYCKNNmbQ4Y0jQT9U9OaMKnoR1SAnNL2M96xWY/KAeGWncX9leKMhQw1Sh9q3cXYArf5frY8VZORLKKoFkws1lPEDc53ehyhzk60BFNx2wypktNNY6AXeL/DxaUGvjpPvXjwC55cwT+mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y547ZWxu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y547ZWxu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5AFC19421
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768998233;
	bh=s5mr5khVE1s69U7oCTkIlyh9LJvhjElKaPPN2bcrhEw=;
	h=To:Subject:From:Date:From;
	b=Y547ZWxuS+/uZIu1WzOWNZpLW1Y9SuuY8xxGGIukrbBFDbov0YMhHJtE2OYpN0bkW
	 mILDnddPsrlxCCBx+ZzJWaagWY8v8kAyW+SUPVgH/2w2e87mVvEbbhMNq5ybRZ3KHo
	 0iaTs3j35Mfyb884PbaA2wEmado8vLM5yiAmY7R+2AzmPueRxdqTgCez77LKV7Lhzr
	 /3b+Pi75aV+7utxFD9rdR29/X/Qsaw/EBg6I2ej8vZq/BwsEn1G1LLuKHA1L//sp6v
	 SwGh46lSeKZwLbTe6FMIlLgXFirrYSw7wfYlzEMlYc8uRGS89ESVs8UsaFHSN0xbmL
	 MxRcvThcE0jdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97093C4450D
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176899823358.21025.8627081090308198738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5344aca14833c365be2918cd8b21aef195f67b69cf9e584976ca6f0eaa5c70b
Date: Wed, 21 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768998233
