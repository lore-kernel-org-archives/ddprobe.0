Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7552412E5E
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 05:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715923343; cv=none; b=dDxaCqKWFI6x1jcnr5Bkq+uQtTf+/juXW3YGO3S10HXS7AkPXHLXAk2On3kJ2PJuFcFYwxpQ6WwPxpcBRMoFXPTT7Mxmrzt1TspAZ2dps7Lq0NSlplM39yd+oSWXH8sMvEsR5J6n040jLzV4ee6hKYJV2xYKAu1se/ogbblzZLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715923343; c=relaxed/simple;
	bh=lDtbBEP/uUNfE9dZ2SHZNdLmpOuKFiOcEPv8Z9vmeyM=;
	h=To:Subject:From:Message-Id:Date; b=e8fXfd9l534lCG8ebpgwwVSz1FFcaOSWWg+q31HFoKKD22plClyF+xxxGivnrY1Nef9u9aE9/wMu+U6FLRS7/fwUp5wBJIkaH2kw3Mm7PtgVXxKIUvGYkQcaNC6tlLDTgoL8+J3JzCAzhUQiHdlW2GGHYAgryHET+gw3YhCEfCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2o5k2BX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2o5k2BX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED2FBC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 05:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715923343;
	bh=lDtbBEP/uUNfE9dZ2SHZNdLmpOuKFiOcEPv8Z9vmeyM=;
	h=To:Subject:From:Date:From;
	b=o2o5k2BXB5BjZTjtVkr14PfNdul63robAzwW3mcinDtt+5qGH9kolsLgMS/usi5Ct
	 ttY3FDysp67LRGuu0Ola3yVq3D95cmi1XOUr6xgk4w8orOZB1b80tNVXWOVSl19Yk3
	 8G23TZAXDYVVpkQHHjMmaTlwp5QeUOVN8ZDu2N6Efw+UxWO42Hlsvtzq8qjgdEdnt/
	 at0HUQS+PyUAYG7QFKb3XR5VhbKcK1EL96O7KsFc63+6Nht63YKksALC7he7jQF8ty
	 pE36TiDde5cqx12BzbcdZv3aAsPPH8m5Qvwrkuz5i7Khn3hsBtv8JuUq4Zmpy8wR4G
	 Ogqxih+huioug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC570C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 05:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171592334281.10192.2679767363888855057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d0c68d764cdd728964c1062e0aa44d696eb4b6bda388be060871ed317a50f7d
Date: Fri, 17 May 2024 05:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715923342
