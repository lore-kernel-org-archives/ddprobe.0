Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C580757FC
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728981954; cv=none; b=Y0kF8Xau3yQTOuReGl9xXCBTA4s6xXXYUQw76PSJSUltEp9licM0ewi03f+V8JXU+f11RgtQJynoovbBQiJe3xAfJArPP9w3xIgapBadANfEGs1EVnl7fWvfo6Xkc3wsyR6hCUFhUMLAaSUL67wGButZ1CFEnx5a5nThF7Nq5cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728981954; c=relaxed/simple;
	bh=DGR5xLlFvXarnFy+5JcQKnLj1+DuJVjdoXKymVPEOmU=;
	h=To:Subject:From:Message-Id:Date; b=Py60yp7Op3txKD9sCAEgpUboWVlKZeY0a/rFeNWEfkJuUzaY5zRhWf865HMHbVhaxnLDQhMy5lhzz35iYfOPNuvFWmfPJ68Q1cKQx6rnUnep4R9+p65M8lkp30WQh3DQld5cBAa1q9lYg3CLsfO8o14YYKO4R4Vr+dE3fKQ4fPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjrYFZ86; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjrYFZ86"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA28FC4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728981953;
	bh=DGR5xLlFvXarnFy+5JcQKnLj1+DuJVjdoXKymVPEOmU=;
	h=To:Subject:From:Date:From;
	b=WjrYFZ86xqM9K+HTJpBslWhcJrQeDgRXte8U5Z3n606cBcSxgxQFS6Vq/WbMEkMzH
	 Fi1c9KB8uRZR1L0e4vUKgMtWvhamcLbMGFqIg34eqN3LHciF4yqNnH2BXIoLDlnuDI
	 nDUv1T0SjPBKrW+7M1oQCRf45pvr5YHaMI3k+b4rvc1J/lxPMiPYb0WbdDJq4iKNtr
	 IWNogbuVLU9QNQ/eARgKrji1tllk2eMe4gaT0QjyytOjP4TTLsxP8WkarzfzZWdqSx
	 ldTWwdhy/VMi07oOwgwYCqGp/hLhXH/Vc4fjrcaG6kKRhrV1pWbDdEKYz5y8Mz8Y+I
	 QOFup8qcxek5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C2ACFC278
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172898195359.1491.6303535357757685464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 730847caaa736d0aa81d3e36bbf584bf3259ad5e27d59d3e476d0cb4ab1c543a
Date: Tue, 15 Oct 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728981953
