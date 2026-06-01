Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45930334C3D
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 05:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780290274; cv=none; b=I8NbzwDEMlt61zb27QQG5Y90lMdhJ6Xr1zdGxrUS0Zv/23CRxb+ZqK4yFPrIFyJ3+nKB2Gm8MqB6r06Ltb5HPXNMUvTh/Xw1sm0kFOKYb/HnNdjgX2fbBaBTyMOuFEVijzXY9H2HkC51m9VeUXa1qCH1tQD69Q2yIatk+etF2i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780290274; c=relaxed/simple;
	bh=v1JokDxTSw+g0IF8lOySZM5dC4c/zZzPVOqkQhzN0fA=;
	h=To:Subject:From:Message-Id:Date; b=Kt92BifqrEDTEjEHK3MQioK9ixXj6aJF8k5Bb12OJejNVa3lCp3bN7Zosua5Pizv6yPYnq0nTmxRGJIARmnAkbvBOLAin5vuf/EUJOlfqifoaTHlFpK/MsBEjXdVoKSOO29/4Yz7WBKs9dPBMcVtRFNceQd+0qr3KaZbnalJubY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQfMUUxO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQfMUUxO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF736C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 05:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780290273;
	bh=v1JokDxTSw+g0IF8lOySZM5dC4c/zZzPVOqkQhzN0fA=;
	h=To:Subject:From:Date:From;
	b=gQfMUUxOCx8y5BaKxoRICJ0DUsJ60FhUyA2kW7q55Y/JQnTEzTzRf8OXYZP5kPBiH
	 97D/IccR9CJGJgQ4HHWtdVhB9XZjURitpe4ktpv+CfiShk3mM9Xi1EiCRJn5qtofzN
	 tnqtPbaLC4YopZFdvLMEbDwfrqDCIGNgfnSzKaeA3qTp+JJUdxbK/s9c+GbyM1khzv
	 rqW9jvcMUdlN8PF526k+Ok/73QFXmQHHvExghjKI9mpzuc69ZnWnQlO4Yy4NOKRf+9
	 bSm4FA3sKq0wLntOA3AuIXr9nGZxVMTN8yCU9RpEVkW+3+OXq5FIz32yjkfG8rMg8Z
	 q/zDy2Y/yL/TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDB8CD6E4C
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 05:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178029027373.31191.17644874845839501913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c580285b5cc391de45e47e65d4644645e8ec4d768b221b1027e920de0d1e0b36
Date: Mon, 01 Jun 2026 05:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780290273
