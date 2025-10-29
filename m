Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46EA2311951
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761727194; cv=none; b=gUhim+0bWk1MVPHxgkx1iq36I4dbmHMh+F3BoIOgh02EwGLRmVhcBfbcxYgbazW6BO2o+bPMZVUYWZ+npnsMTRDmjfJErf3fgdJBXMHzhFNmnkShC20YxqDyTh6L65DX1P9sya5NX9l6F5hrYGBBRbnONRD+pbwkCm/zgfcNQ8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761727194; c=relaxed/simple;
	bh=d6Tyi5Yqct/M6RLmzRmetUFPFvD9ZOukJyJ8+v2cyGI=;
	h=To:Subject:From:Message-Id:Date; b=I+XLl7mtT0ONa7zO62x39ljGBSIyFKIRpbSTsV8DgmlTox0Z0OdMfYyQMpCQMGqq3kDKTpLfTLmgU8yxqLCsjVfCgppoYee8pwXnPunkVnHKfY1m3K8uYnb5quby5O1glCNQn3xZGWuchfB1K7qT5+tkTe8Ut3IAM7nw5UlMTjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtHE3YDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtHE3YDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4AB8C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761727193;
	bh=d6Tyi5Yqct/M6RLmzRmetUFPFvD9ZOukJyJ8+v2cyGI=;
	h=To:Subject:From:Date:From;
	b=rtHE3YDdZuRTI/L4Za7zZNtNOCaS2fwKchhr2ZznGAuIiU3agzIm4TFxvFDLHoJAy
	 tOEwmZ5O4es4WFxwAWKuC+2KDDhH8+1TqGLgDkQzEgSTOGPZQVx8hPlhM1TEadsH38
	 rOWn6ZuR3smHqg9hKg8nLY9qPdb5IncG8qFR2+tBeeyLM2fmLygweQzd4orUjPyx8u
	 sqRn48zUXFVcLPZAi5TgqN36pJQ6EREc/QT+V90JZW9OzuJ/CG2ZbHTtwl8S30WulA
	 rmvX3ToWAou1X+p/cqDRNCi/hB6OrMjIMPBin5N6C5xbOnGMt9rwcYZ399foCFQQe/
	 E6GQHYkVWLIgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E70CCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176172719361.32105.12224722674758617020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ccb92510f9ade6bfb4c78cfe3632948b6732e01e3a37d8efd377a7f97ca8f03
Date: Wed, 29 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761727193
