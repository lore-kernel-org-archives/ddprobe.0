Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5983F514
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711053497; cv=none; b=lQChUKw9Tgk8h174Qjyi39iTwHwdktYLD9ccmXpBED2gprWKV9fqlOc4RKAOZhH4k5iy681WfAbgl/ru1rxcbMuuZs7LCVgHQv49cvr/adBLrzQTLSrYnF/3TiCCcc5X3QdwFgLBudL5LCqRLt/Xw+4URW3/9Xx8bobq5uZA3aY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711053497; c=relaxed/simple;
	bh=B9d5ala5wMqgnZtzyDintTsR27rDVqMnbz6EnyhOV1g=;
	h=To:Subject:From:Message-Id:Date; b=qTK2uP4kyQ6QqSg7po6fuhjQT9RcsGFAdpQHwAW8fqXACS8vCKLwPs+cNckoabhHwDWctFw+Basu6xqN8NanB0EEqa7G96sl+huwDNn3xi/mnmpr3uuiGsCSEVXOeNua58K10QBIW02OtGb7Jy2P+AEIzOJSYUWF3yWalcVTqEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGX7RiQU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGX7RiQU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79AABC433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711053496;
	bh=B9d5ala5wMqgnZtzyDintTsR27rDVqMnbz6EnyhOV1g=;
	h=To:Subject:From:Date:From;
	b=jGX7RiQU1YD2Y7KUueZag0BoSe844WuMRp6RRqqXhtQoNNHKUeCTTa+AJsfN2iUVy
	 fbBYoafBZnFImQ7x8JXFF4aFtWY/pZzenFqPyJ8FSUbm23/V/RGrrWVuhiZ8lLS5+T
	 /kCvkkD1PmAOj3OGUzWu94lncPQCv9yAN9aNX1PRbdXylgAJU9KZMz6nEYWCdF3hYZ
	 6r1R/zbvlDkH4mEGvleO39AiS21fXr9Pj8t2Vl7s/fX/KDC4K/imKxtnj5ZztjGEru
	 R2P/7IA2z28nVWiDl9QmYJP7PRS7sZeum79ebWd+d6nRRRZ9bL/LUTcar+1GqKUHct
	 27Mj9sQfIh4Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67074C54E58
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171105349641.5486.14474515166111683188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49c5713d1c457f1ee53b9a4259fa94a6ce2bc3b362a17c570f6e559ff3fa032c
Date: Thu, 21 Mar 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711053496
