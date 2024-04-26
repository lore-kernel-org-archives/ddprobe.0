Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B6E26AE3
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 06:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714111343; cv=none; b=P+jTKHKzG2rKyFsyl8U+q9au0wWgKMYkSwoaBGYNWxZh+Qv466TDb9V1poy0ucRPr0K2V1JnmF/TKHV0Cmm3RShp2prlusBPxSYtOeagO4ELnDY810Hs6pnw+LX8FPBgnCrJHWlYnldCAuEdxhFM7eSc0XBNq2M+XW55++Lmhqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714111343; c=relaxed/simple;
	bh=aTWmCwg/A0Im+9j4ktA5RIWLMpbgNQ47nA531lGB5ZI=;
	h=To:Subject:From:Message-Id:Date; b=T+kjtEVJxe4pcMj2hvhGyQJ5v4ewqDMqlOy9/rMZxZ7DrDTk8r6STxML7i1R0JoS0m272hOiY5wyCRGcI5urpCh6teKkeeiJECxBgq+T1VxR7Hcra/yNW3z4LzcqN9bToZpJZz4kA4kv32ju6TFjC9zf592FgxZ7DGXKlpLc5Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJZugQKg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJZugQKg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2806C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 06:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714111342;
	bh=aTWmCwg/A0Im+9j4ktA5RIWLMpbgNQ47nA531lGB5ZI=;
	h=To:Subject:From:Date:From;
	b=dJZugQKgBD0K8svXxy7s5PeqLtPxrPdAo8Uxd9rOMbcMQ9GPQxX3wGOINi8DjurOV
	 LLCDKeeS2LpQTMVq4buFRFR46i1G5B8TD/nMChVwSu3IrxeRmRf61yNxNco5mtgxEb
	 InZAUs6W8nFRPWT7oYNF6U7ISz3UdCeoMFGTjoNVf2sxYtyY83Cv6pvfDCsjBccIzS
	 KhGCIu4JKXNYNnwpGGW3SjcYsar8fFUBRXZ4M+dH3DVn14LVdt4vBEhDc6X6l46rKS
	 I6mdy9E8EVo0hI9KvGk5X3Vr7ev6819TC+QzOsmCBiexYEL90uDo9VzutMZIhd4ivS
	 vC0NWqVNe05KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0602C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 06:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171411134275.13648.1429997020504107576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aedfa8003b2a7f05375a350f715e355d7b8f96d025f9a9fcd7f69632e90c0e47
Date: Fri, 26 Apr 2024 06:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714111342
