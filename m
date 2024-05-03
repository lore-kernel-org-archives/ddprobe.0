Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE191E4B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 15:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714749143; cv=none; b=mDXUjLIXj6iSzwQ7aiqQmtk+c0vOV1H2Oex+27t7AbHUwy4ER+Hkvb7U0aJPnVyhtApa5wPuJvcZT7Ar1Kl/Qf4BJWIcEmp/7Fu7UZK7daarbXMKFF7aldWcyB+tby4Rn76nuHdPBg8yJmeYidSkXizr86YNf03gkYAEpYH/4BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714749143; c=relaxed/simple;
	bh=+Ce1n9yYJtq9m+hAj0EP4e67Nak2ENxQlHKyHS4zdaY=;
	h=To:Subject:From:Message-Id:Date; b=YhGCS/PxSObUFV4I68DR4ZwO5y+G8xG5Sv3uYitIu0V4Ov/FoQ3R7EuPHHk6LyCZ2YUaiPMRIPvCB84fYdtamRAuQCEAuFhbrjuVsUiXr5KBPbrPEaRZyrnNDBftrS9CvvnUAGlwxqRIMKU+WiNKG7F9/MLCbUSAXezo+H+T0AU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufNxQvRn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufNxQvRn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E592FC4AF66
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 15:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714749142;
	bh=+Ce1n9yYJtq9m+hAj0EP4e67Nak2ENxQlHKyHS4zdaY=;
	h=To:Subject:From:Date:From;
	b=ufNxQvRnivPVgAELbhm070cmmNJ7SuvBOhw8AwQN/3vt+g0sKB0HAbgz4JiN63Njl
	 t7OtDMHVuEle5uQuN0H9XA88T5o7EDVPxJS8GILFBsiA8mBnJOI/HnsD09+cjE1wUs
	 xHM53z8i1eWhqYjr3CMIQra1zweFX9vx7a13IOw5zOeIxV1HIJA62zwog8+eoq6lbj
	 8LcP7CLWZCmXy5+Sp/oBhOb56XfxE/JRCGkUUu/oF6U1/iMVLWKPo9l9ZyzRTZfJNl
	 YDgH+wHR4Ssc8lUCaEZ0KbSO/PibuCno3JiZnQ7SDDfzNfamMPSmusrnbUW1l91wRi
	 OoYE+kxwdOJBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDB65C25B75
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 15:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171474914282.1348.9991920801246361581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae1f060d14075a78ad75ddea0ec05ec1c8455ae5bf170619a13ffc8301a36f8c
Date: Fri, 03 May 2024 15:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714749142
