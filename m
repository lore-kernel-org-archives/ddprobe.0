Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A851249F9
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 21:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719524063; cv=none; b=D2Rxo+CsYV2vXw5DCwTps+fCFPQwmgEIx4qHtiOoHaJvsNn5lVS8o+38iGVtsVtX7EQ3sBYy6XzJx1wqeL9mIagmYQkRfrdCKxqw+L0cngnTy8JJFc2OWuod2djslPml41k+GJR6CcKqSOtWAVcXV7Tc6QOCMM9MLXb0peFKtbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719524063; c=relaxed/simple;
	bh=1P8+SkvYFSW2efUrxjDu4wXsY180ACtSseRI0bbbAd0=;
	h=To:Subject:From:Message-Id:Date; b=YW1244AdqTOcNlTBnFqe06Y7jc9t1eR92aHs/z3Cb3BVobhvhsji9yMTrxSTxzYSJCa9f75xdKiewbqGri+6Fa4IZZSCdOTfQK2LZxgaN3LuNO2HOUR1iKKU59gzOOHdN/3ostAEohAvJbEal5awHcHJsyYjcfv7I7K5MpHkc7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQR0Ozme; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQR0Ozme"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2A8AC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 21:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719524062;
	bh=1P8+SkvYFSW2efUrxjDu4wXsY180ACtSseRI0bbbAd0=;
	h=To:Subject:From:Date:From;
	b=PQR0Ozme/xYQCL6M/GUQB0WxTHS+98Ou/gK7CkCBcvCCAiqdAlihRKOBwy5sARfKm
	 XtcMh526WSUiImoVP1XF0p8a6u+CYKnZcqovL3pwKXRTKbXqlQHyNHdhduv8Lj6yY9
	 zpikuXk3ov86GercOslbq5xPZibVGUT1qnfXlh5PzYfuyEHjp2QHI01Hg/cAgHmx7G
	 NexvLCm2kTCsMQIYJd0IaMteuc4LJT+Ve7KIpSXMRUPMUl052pJrlAOZy4pUbPALFu
	 EE7ovrBG2CJu9sJt95NFBzsLFOYczcLW8EiBU1rmkCUzY2yJedoawuk46g8injvfri
	 3dL0iUxLfH2mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAC7BC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 21:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171952406279.8060.4164603471267774359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a185cec73bd9f0dc1f20bf2dc4b237436effe95f1b4b59115c3ad35b7fc9de99
Date: Thu, 27 Jun 2024 21:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719524062
