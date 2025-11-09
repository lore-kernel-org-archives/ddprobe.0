Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B66149C41
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762664994; cv=none; b=uqoVyKcEe0crddv5rLp+A9CnTN1cgB/CsPY1ybjOLMt/P6Ee/uBcUwJc/3EmkdrnvidFg/xmorY/t2RZzidXKbEb8Mnn/TZE+weLptNBQss7lNpppQzDBIoc59OTWT4HIoxAWfyubsUSdiko8IzDDtklR1qKxwXjfiG6XiiL/p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762664994; c=relaxed/simple;
	bh=+PAxRSD6GO69D6XPlb0r/calY7X8bOQ07oC9Y++vDJs=;
	h=To:Subject:From:Message-Id:Date; b=A+Ro+h4cBsqkSuVjhJImDgOjOtZp+UKzrp37JTblCLqZnVS0pWBVIgi4k1qrETMWYDSsTcbHngzsbMYcCfKlFvo2Ckhj4fLz4OlhvajcGWjgF5tEyokQOKvbJ3YuIm4jVxAlHyP49DNidO/Gb83Nms/Zeqe1SaRe94+toyvrR94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IE0lvX4z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IE0lvX4z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4A2C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762664993;
	bh=+PAxRSD6GO69D6XPlb0r/calY7X8bOQ07oC9Y++vDJs=;
	h=To:Subject:From:Date:From;
	b=IE0lvX4zUEKkGhLsHwebrKGycn34WwOhgcgtDepxx0kd9zblh2PIVGAYwiwrnFIb4
	 Mh/DAgTkTOudq9ZpBUrFUZwOGXBLjzPVMYgFXAFfIf/c/r29ujBgrwlPOc8vXOJ4oR
	 6bgMtNctCuTVFSoN2yD2qKcpQIwyNgdBDF6cJHgtfiAJc9XuJ27tv/i0YKekyQ9oWa
	 pqX3A3mU6VG1vBVgVvI1NGu/9tU5vJhXksQFoud6HQNayD/XyDv1xRT9/iVhPp7VjY
	 y1VE849ltTCBYOBFLyR6nU90fOKnWNuAq886oVtUCLundQ+sj+4SmpBAsCiKbYvco3
	 6AokRk1JT0ygA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5CEFCCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176266499363.2815.3823558867747188939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55de705ad7e515a07555ccf03e74a02675518007e931e85319e0e5f7fbb747a3
Date: Sun, 09 Nov 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762664993
