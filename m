Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498121386B4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743476395; cv=none; b=PTZbD21ss55y+yovWdg3GK4VX399HR86k0sOG4CfdpbBFTHOAEAFtRFt3h+rp+EmPZ9S8izIzj2rVxTXx/kuAuIgBRUySNVRDl+PJyzKJDcaxGGhrbVR1BoEQmDC05EBF4hyUKwUGcOlKDPFkPepsp6D6n6oHD1GKRVeqlqIWqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743476395; c=relaxed/simple;
	bh=MzHEW8DVG/3xQnTPVP6i716Jyxb5uSR1PWXnPxiyAZw=;
	h=To:Subject:From:Message-Id:Date; b=anZ/Ig6ItEaYukQYF1Id/A4su7tDkjiUfA4vxK6Ph/6rqKD/nwIiZYpe61y8NBy6nZB1oCF30hm4kFY6qK/HQxRLE9t3M5uqIn+2vEaXgHCmDIy/3ttMhMoajseUJ6UFUA/xcKBX+eB2s2HCpnRyVuS1ewEFi0UAJs7B5ty7N7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zhz6a/eQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zhz6a/eQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B092CC4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743476393;
	bh=MzHEW8DVG/3xQnTPVP6i716Jyxb5uSR1PWXnPxiyAZw=;
	h=To:Subject:From:Date:From;
	b=Zhz6a/eQEnXqCB7Jg78TzNhENuLumDeh9LhTW0nIF7kBg8hYXBPIsMWHNk27UCC4n
	 RdkINv7MlqBAzhJMRKl5Gw6qmjTv9/DUTsJPBz3ppenvpCRZEHJbvr1i4Z4E8geJWQ
	 nuDvj9+LDPehtcwTHc2AiZEYSbKkQ/KN8xI3rNmS21D5avdxJHJCffy8/9RYerb8dC
	 Csk0SLgVDCSdAwY9SRiq6nLAN+JiYSjmEFjrurQNKg520bJ0F5dVgQLm9bq8TgWlZo
	 lYEAOjnqB3GuJsGIXOCrv5KxRiopJdwuW0NPIMJKoKgsuexnOkhtlOGlIDAXPlQDyh
	 EutskrOp0VBbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9662AC3600C
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174347639359.31058.8667440526280782952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e15e6306e610c6521682ae65f917fd1607a4ce68da62b4fae6dc7824fd64b7b9
Date: Tue, 01 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743476393
