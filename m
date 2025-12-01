Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2163A1E3DED
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 09:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764580974; cv=none; b=APtryebu6o6OQt6tahTBAyDmukSilDD57+lYF/01ghVBQ+Jvb34lMa2YBl+s+RMRmJmwMc/S8JsQtL58SfVpTlwPLlr+ozGFUrjgl+A44a1lEsyHC2CuLLLf2Q5fQegtMo/zbUDStS9+KaTj4nJu8BNyOscuuu9KKJy50f6ccj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764580974; c=relaxed/simple;
	bh=JoVS8EnUTYrXL1RAatUZ2CBfeHfKPoymlK3cFTOswu8=;
	h=To:Subject:From:Message-Id:Date; b=ZKSTHNxJPeLczJG/eT5/N4tPEtZFLt7Pkz4V1/PRyKkOjr+hvjWIBDQIiGMW6o9fblV3CoYjB+0+O+QIC0X/HnrI8vyYWtkP/5Mp0M+MUVhLizM2yJ6igfV/4iz7a3XX/vWgw33YgdJIMfxn8//F60g8QrsmJ/8Tbhtw64TNV58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IcBInOFk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IcBInOFk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6E2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 09:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764580973;
	bh=JoVS8EnUTYrXL1RAatUZ2CBfeHfKPoymlK3cFTOswu8=;
	h=To:Subject:From:Date:From;
	b=IcBInOFkJunbIxbNorl32uGiv6fd4Wq/j0P0tncZXG7vUzg9/AbhQc20lbRYgAELT
	 EBQOotEVNNbU5VCEAfhVkU0VixiTAPNeqKQH0nzcI7udEBrRTqWWsTL0H5n/voLBud
	 Rt+f2fvzk1wqLwC3ypDN23OWA8zhsjAKS0BompwhvZJ4yignQtq2zaKeImeijd0HEl
	 +nRVjwFEcXCL/w1pYcs06cga6hYHKeVjq6/ODZRtHLCBZI/nEY02ll68W1yhCsXf7f
	 RudZrHrk277wpQx2ZIFwpfoAIn63ur8g7I1vmWDlmb+xFjBN3wp6FLzKGmq/5Q0WSh
	 SHeSywJObp8qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E97D111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 09:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176458097360.14654.17112685509477479071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf257508a23091b171bc3d2cc081ea63d90d7ae05250331472d7f15a300e4237
Date: Mon, 01 Dec 2025 09:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764580973
