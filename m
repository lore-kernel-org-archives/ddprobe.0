Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB67A2D
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725841554; cv=none; b=hwde5KT5EUQfyQyuyDlwMbKVMJRTFxyy8TTkEFv7uSkI6uojO+XFVc3knhY4Yzpjlz4AGA5EECXPaJ0Dqp87ivjGL9RCNRcmOWK2TS9fziOapF3q01BghOc/dVSdKjtMntCD0r1/E+GQiP9UfFKPUREF8m/0BNQ3UX4YP6R7BBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725841554; c=relaxed/simple;
	bh=tZ80ytO2lvvwDAcQMmbXfX5PzOic6D08IijvW8GoM7k=;
	h=To:Subject:From:Message-Id:Date; b=fGB9BMFL8bpWrHXSNTicXbntV0WlpQL3euNgeSXEiK/DlB+4onvppoC+RrP7Ka7+GjOBMNUZqfOeCjj/zL1elcwBPwjM3SUsaOL9Fycv8sDCzvIto6WeiQh2c/NiQdvKt9R5FEWIkjv0LTjr/6A1jkHWnDsHAeg6UvNVf2Z9ii0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=my726VbO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="my726VbO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7AD7C4CEC3
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725841553;
	bh=tZ80ytO2lvvwDAcQMmbXfX5PzOic6D08IijvW8GoM7k=;
	h=To:Subject:From:Date:From;
	b=my726VbODfBDtgRAf5RnpF3wARD4T6w0OmOHcOMjfCRPnVPXZHo9vT8Yd8pvYIB2S
	 BSENKTNeHvufJmt5wO2ujFjI6pvG2r4BmYJ/GsIF5bPoXpqmL6Mqy731XfHoxmh7xx
	 GGVbwD4JullQMPCQqN5WmUMYe/uSnaXxqpwGpmo+rm4cTL5mLQmuxZxNAllLAjN6HS
	 QZTNn229sP0RRY6T64meCXPF1p0Ipf8jeGfIXE1runlNXbM3NTO9KIbjyVOeHFli72
	 jmj/TmABA2zao2Mvge4ULueW6Km4X4q+kQcrv2/b4qzgWLqnFIsiUPDEYg4CZsM8MB
	 evPYgOdnVafOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F976CD4F4C
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172584155362.8273.4049898384534673002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98dbc7fb468d362f8a7446595578b3b1699157904140ad92d6de54a1251931e4
Date: Mon, 09 Sep 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725841553
