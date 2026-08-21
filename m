Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4936030DD1B
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787272834; cv=none; b=B2tquvEGxgnd0eXAyObJ+hWH7sYsi8pi74KkWUhKneN5WXtWGAMYlfeeZbrlaVty3TDWrnPQiQfR1OIkVq+KGwuDq9ZycKpAZPPHEW3A7by6inXm1gH3tSAA9TESVll2ZXkIIt9Yl3+yi3BrpAjpxlYsIYLjMD0y6BxumLTHVvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787272834; c=relaxed/simple;
	bh=pYPvpUmffoK4vmCE/GwN9bxnIEcz5zvERM+HaHdXNvY=;
	h=To:Subject:From:Message-Id:Date; b=NwfOmLC7FjwKtVWLbdheEn4ECzua6vRRFI+AFAinFN7hM+S7VBATahIi62sWYnPtgEwyDfg0taAqXaxUzDFKp9aoGG9jEzUcpZ6BqKkUo9z/53ZN8Qk/Wvn+p67Tb+TQ/nWtF6dHg5wWwqAXI48LYgQWsIpQqMZ0ekFF+zy/w0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CDhhuCRO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CDhhuCRO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF473C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787272833;
	bh=pYPvpUmffoK4vmCE/GwN9bxnIEcz5zvERM+HaHdXNvY=;
	h=To:Subject:From:Date:From;
	b=CDhhuCROXI0k9zaeBzy+vUDZOtD8DAEdbQcOIy+drnvJ1oDv4lwPMlPYxYp4oWRWF
	 tudb4izqYCOFx+K0A/vrvhOjPb32tX0GaA8XtjOoDZcVnXWFM4cap87VFeOTbZJNmc
	 7cGYntLgTe2Uv1Vv1QSHV8aGnsUhQ3gtb5sN2sljCF9WdhwYlwGjTEQYyLuM+Oz9O3
	 XqB+lkHo5oYQ9FgTJubIE0YT2UYWSyN4EzrdP16zumOM9SfG0/p3/iFbfqb4/PJVPT
	 p8JIrad9NxVpMyWPAzUcIMoWu27uHVZgV21Cylv8bw/E5v/JsP8vR4lZiOEdgAS7j5
	 17hSzHMrD1NJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4A8C5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178727283369.24650.16993574421201825661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41b58d59f556efc8d71d91a6b284f76021c02141c6304a5ef5c3eef515d000ff
Date: Fri, 21 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787272833
