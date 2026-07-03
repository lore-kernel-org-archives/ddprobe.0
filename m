Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4140B23395C
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 07:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783064314; cv=none; b=fwE4TVSPFVrHbJAn1KNg9wTiQwqfJWowEA53gGnKC8ssHjKoXoKqkbSkPREuX2KagXUx2tEsmu3MB3esgvAK7L0RTYEi3V4uyAT1NIexVlgAjsBNh/et9GlOUH1rM0kUjKjDh/pO5RNgO+N75WTMDcIfbZRGfsSk9x19tvMRhrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783064314; c=relaxed/simple;
	bh=EPw+l1dLS3h7Fg360uRCfzBN7CYZ596n8I1JQmErTbM=;
	h=To:Subject:From:Message-Id:Date; b=b181DG/ZX2BsEsfpbmxemIVL+85pw/IErL38yUoPf9MuSZcbefqOUSuur+ae7pBSry+6itbgr5uL3oVBqhjDpYhS8AVboTeEgfONI+CWN96tYsGDKoglZqnBoAQ04gH7CagVWq0Fa5Htx8eW5+9plGzpxoQl3zLlgPM0m9FHmtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q8UVhBrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q8UVhBrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB69C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783064313;
	bh=EPw+l1dLS3h7Fg360uRCfzBN7CYZ596n8I1JQmErTbM=;
	h=To:Subject:From:Date:From;
	b=q8UVhBrqo2yesz71nOguoX1q3GxBQikoiUs4LV0XDDsC2FKZqXMqZfQWLE9+QlJj6
	 uxoumND3vFaZ+jcQYEj865dcIhjjoAhDLeMLS5laF+hb94rjgOInBMszRUX3nMllLw
	 ZOutby9HSsl907siw5b83mIPqB017jBMgGowBRYY/y+n/75j7kQ86rUNx6i/ipcfCs
	 0O2HFEqrAywEBwM4r4UuKcJmpxdHVD93+ekl81lN4Lor4RZ1JiHgrAwY28mJMaHSbO
	 9LQqia7OKIrGoU2J0BojuwTUEGh8uzwoG8bsHB3ya+MdMWBXvwSaFNrbu/RQKbqhny
	 3C2PleL9kupVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C08C44500
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178306431368.23254.4646103640768459149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbffd728b3d0148063cbaee98397556c07d879385131ca7cb18e6be8b81902c9
Date: Fri, 03 Jul 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783064313
