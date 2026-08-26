Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D15E3348C56
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787773234; cv=none; b=O4F0wJOoDgAT8wGhzzgFo7xkXBpY7MSae0HyJ5+0XgOijVj2lx1k+g4hA7a6agCmzS1ouiwwSE+XpkL7tNyipiE4U4O3cLFbJUqiJKzNzVQshiYjx4gKcQdjJmdLa/AYWk62u0vQC0jSDTSsEbD7h73vBVcw2Xh2pOaN7RKLnt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787773234; c=relaxed/simple;
	bh=qdu3qPx7rFyMcV0krX9G0C9hfchxnZ2gS2G3Xd4Tfx0=;
	h=To:Subject:From:Message-Id:Date; b=q3psmrjvoJUjRS1rFgWR1hMK24tVrg4JtiR4rCMG7v1DlQmluHOpx4nPc05jrrzaRdCGIbic3xcfDrFz39QygH+wWqlT4Y6sfVr/TMFV432hPHzs1QF5FmKDh2gwSdvC7lOlyiviQN9Pc2JLK4uj27y76mOIVsFSJDAXJMpOf8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNbfQdY0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNbfQdY0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE976C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787773233;
	bh=qdu3qPx7rFyMcV0krX9G0C9hfchxnZ2gS2G3Xd4Tfx0=;
	h=To:Subject:From:Date:From;
	b=tNbfQdY07uGQESW2zXQbSO1oxW5GYlQlMjYlF9N4GfczsM58jTAxqaskO3LPc+s/d
	 rc/yrQF8xL8f5CwG4zW5thH/RyiTUScGUc9aPQywbtmrHF41Z5fA0C7aZ5vZAzYyvu
	 9/pASCtrenjTv0QTC654/BkGEaFXR3Ec0M1yUHU9Nsbh8uUlaEtcxnvRcCmZPBe2SY
	 KD2nmZQwO6wT4VBZCHvKBJ7i4Rnk4Lep0Pu532nrPGhV2ff3Ig1naNS1JbIXjabAUb
	 3WwnnEpi6eGXFrb0fOIyYwUo9jJqMdBexlDKJ8llkUj/6+wdh+/Xw0vRAEH2Ph3QVT
	 aXEw7lIKERunQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3C9C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178777323369.8220.11535093476592677334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43331581c8bd0caf4df8b35b305062df68f731335ac8d5b33c94fe904328fe6b
Date: Wed, 26 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787773233
