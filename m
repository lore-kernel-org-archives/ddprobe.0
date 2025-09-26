Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F56CC8FE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758851395; cv=none; b=NtclqdYk9YFVIFtkvSIYa5B6580+ZFJcm5+8WKZURV62VewnkvAWfozYFXHIwSJp1ucnaFd1LWDhWSBGEpohcuqAeXOBP57Vu3eJ/w+hTPBfCrV3SkTdG8YOnHa8KgS4U3Pzb19DVMGsbDTgHkF+12E+8mDR9/G5GUxWGw7SqeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758851395; c=relaxed/simple;
	bh=csGXpzE6hsMry3UVEc580/03bGnUwC5IFeLNzBVN+z4=;
	h=To:Subject:From:Message-Id:Date; b=CCvZwiUBmS1nAHEF3n+Xpg4cPgXcaqpTI/Na7Ps6iTYQE1B2v8VUkEnJV0w58sClYJFlAd9NluJEtOX9M5LqaNYz8H6NZq/tn3733naPFDYh4oBnbU2WbtpIdomQEP+g7TFS+nVRkeIGwm8X6/IyWYJruL38UOEFxgWX8LThRqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okHTCfyY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okHTCfyY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46ECC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758851393;
	bh=csGXpzE6hsMry3UVEc580/03bGnUwC5IFeLNzBVN+z4=;
	h=To:Subject:From:Date:From;
	b=okHTCfyY5rhns+hyXSf4iN3SnUv/WdXC7Maj7wc2sTEAoAkiPcVYfzRK4i75J5o4+
	 pRM/3PQPsEAOkJF5hwbVPSDa8GuYFi1ZJblASmzXMVmdWyIJnrtXdqtam3/RK2Zhb7
	 chPdJ6NfK2WA9Y7dgOjGb/X4s7H70PJVLnJfpK/c4OZOv3zJ7fgMATfP/9gZypOyWP
	 mxMfG/4y377nD9FC+azkMV3YKSNerFfEUM0GzQ+G3sUcrUZJC2NlCSOTNJe3n11Ic3
	 Kr2AeORg35BHntZKZ65dGJzWR9bBMw2qknBNizaAzLhvNlIcM3hEJqPlRdLuEDRi2i
	 CY1EL3tfK1dyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908AACAC5B5
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175885139358.19809.16925952311180390420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdf4e87d061ad95e60974bc7df31375ddc78d1ba7c10a744c7e053372a7dc28f
Date: Fri, 26 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758851393
