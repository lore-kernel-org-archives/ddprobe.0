Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4527E303A28
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 10:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764585774; cv=none; b=EHX0QtBjS++2chCkxkVsvgfd+gLMpX4ErNgwBKzDcFgokzx0E4gTYZpCX2MUCD4YkLJKP4W3Bakq4bZqlTdXh/Mg3FyyozATIMAW9TU0XhCPQW/2TkKm7yrJgnKjCAuYxBQFu775oB6hGmLZXiKh7bVk2v3ipwdOn0ASydvytSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764585774; c=relaxed/simple;
	bh=w/1j9AvJ6yprKkbvnO36snqE8M4KvhaO7oNTR2uiKvI=;
	h=To:Subject:From:Message-Id:Date; b=Oe7arHCy5UtuyBlvSSw8tNKGbiZdnVDVxRHrFYXKirIuI9Wl4yu6ZTOiFfSgkTLHXFNLIU8EcOtFHIjt+eOqT3T0weP/piQXkisG9v98zXxCiNLBk40ElXQqFsAhpfmw37Bxr/lCoXvQ7575idcUc7fxDtl/arx0LJGX116QueA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3HIpPXa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3HIpPXa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EF9C113D0
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 10:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764585773;
	bh=w/1j9AvJ6yprKkbvnO36snqE8M4KvhaO7oNTR2uiKvI=;
	h=To:Subject:From:Date:From;
	b=q3HIpPXaLaFiWxEtXHZP0RtbGXHLCmSoDrjEQGfJr5BtS+bUV2OgBuofWbzVkU/6f
	 se56d/dyQTeqZYj+CfNIaZRC4gIzatVbnBL34inG1ISSQ2wi0PRO20NEpYwDn2gJRp
	 EeeSsP4r4e7WhbRkX2Fr79Nk7sgYm5quDLM6y/gUaWdjyCYrXekz2UkZy/54XQpIyF
	 tYfZH/XxDeoMVSHOBtAJbugVJua0PpFFsNy+qttTEaknuc/DNdKwg4eBRLn+p5G7H8
	 cHVS1ULOpZd/eUMPNl+Pxu7vXifpiFCY2V1g4VQeqrk4nhqRweJ1WotNvcIT9Zq/0V
	 bvhhoY8U5ie/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B1AD111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 10:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176458577359.32736.5613644207834319414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e58b4950fc7d209a3054e699827e2bf090368aae647dfe0f1e5b87500b492913
Date: Mon, 01 Dec 2025 10:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764585773
