Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E730513AD3F
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711663097; cv=none; b=qZvdhTPxEDvrqvhnyFHQzPKvqbPDXhzJSOPIT2CTijNKSKbAss9v6cR2yYhgrxZ2lymGDOcfFrygNDI8fgOOaugiRXUYiWFjs3BuFdgzG9fmic7nlF8I3QEgY2G/Huh+KTLZlWf+N/HJbIDNU7Nr4mmZf1NJ06guLL+LN/WZINA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711663097; c=relaxed/simple;
	bh=RPRCPjQqLpEjwwE2RlybZ4xg1ng3DlXDYIn/5nRWyww=;
	h=To:Subject:From:Message-Id:Date; b=InAHycAAhbPb2O4ICp8ZA7kRDYrMMEWVdmsRm1zf59r1mdIOKQ6IaoaeNdT+vl0KotkTM8sDoRodghRwEipglsyv7SNj+KHXVVpmPuqJ+ZSXXxhIlhFVEnnNM1DhHLLQhiNItFS6isBBXBNTKyRzA2RWJYAz29NIY9ZksXCK8ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+FmZjJ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+FmZjJ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79C1EC433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711663096;
	bh=RPRCPjQqLpEjwwE2RlybZ4xg1ng3DlXDYIn/5nRWyww=;
	h=To:Subject:From:Date:From;
	b=o+FmZjJ4usxU/e8ZeVvv5TdXjdQw10XgHk8zFaiTlH+UBXOYy5j568Afhdcg9DGdv
	 TTCuQpcLozX3E73YKuM4fR8kFxJKgO/Qa5MIxqyz3TvcoBGiC55oJ/XpgraFdvyby+
	 Nv6eRIOF/RCCxHqfxTJ+e7UtagN9Dsmk8j+z16oPYga5wFv/aOBYrhoOzQAKi0ZHpW
	 ml8CEWjUVYAoMsWm8KwjPeUOnvxug1/FW63HMUDBbmcFeurYmCIrBPWPLwNzZHJcyk
	 MquLbOozAwb8n5DPLx3csy3AYSpxrjoYDxbLnrCgp9oUwHMqPThKmK5ukLgXMJiuCd
	 e6l80f1Tzgdxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 624F2CD11DD
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171166309639.21889.8834166293630545339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa9fb6007aca17ce28879beb189b234b5e4ae1189dd32cc2a3dfd085f82b44e1
Date: Thu, 28 Mar 2024 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711663096
