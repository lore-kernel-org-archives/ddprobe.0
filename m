Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C9E19006B
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747317594; cv=none; b=OSIEWcrKwzrC00om72cmtu1P4QCp59RFkqPwQ1T9YxGly1B1XmRcuhRf1HiarjZrJ6Hd5lOhbnv2FsKUYdqHlqHhjBxO2ZeuA0bZrnjPxYY7khjytw9gla6g2wFBfFSTEd//1Ldq0WCqjTaCY0OWzjiDmdcZZqzAlmWmbXy3fdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747317594; c=relaxed/simple;
	bh=2t7R0CMlFqbmnlj2uR/HOkqS+K20xUK/TsBSp8CzI1Q=;
	h=To:Subject:From:Message-Id:Date; b=u9SEWCfw+47Drt68iN6/qTiS17o07bLQaqaEjkyOauy0jk3bML+01gqyymMbWwNs4Ox6fZWYNngLqknX6hjGNT1nOvUKUDfrSKSWfI/ZVQfDZ5LE0wVrH+R3Z3ZZaLCGOw+VIm6ugbLgk2SRdqn4E9nbJDRHY5i9s4egkALwni8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+vFRUNx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+vFRUNx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCF5C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747317593;
	bh=2t7R0CMlFqbmnlj2uR/HOkqS+K20xUK/TsBSp8CzI1Q=;
	h=To:Subject:From:Date:From;
	b=d+vFRUNxGABwZb2BPppBoBuqkAcyg/kwV445MmEpXh+SOB4HBCQJXe2emK9rZahX/
	 8VmZP5QrMQQkT7Xh1MPY/4WiQJUyfANcgM14BE8Zs8ll6MB61mgVTRvciLLxL1dIgx
	 rtLOGtAhwxoQuVCPdEfe/a8oPPXqnbpBIcgsothymDyjsN8ANzOvMxt8Tr91m3PQQ8
	 UKfvGnSctr3waGWvJ1EwEriv9S84xIG0TA7uMjzjeNiQD/5+UGe5jiOpKbHbT1aSzb
	 mHJvC+jU4thcMMtE0aqp2aJ1z2082j1FFtCIWhH1AOTXsWDaZS9sTzvR8Y8B2TE+uR
	 LMFNesxEt7Zjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C5BC3ABC9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174731759361.17339.1132313642800185912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c1530b4070a69f431267745231930bc568f86e9d4a5037f9e8c38d53a360c90
Date: Thu, 15 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747317593
