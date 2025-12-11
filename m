Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56ED319ABD8
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 04:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765427574; cv=none; b=QDtiO8ZXEXq3hkZFpUWTRm6JejFh/oAQazVwfneTrn3mBb9soH3riX1bM4ECwaliDXkmazY3U2RQab+V5Ep7rbYNkjA4yxFPU64e5tenD2WAKflikjQCQN30Xeq8F+kmtTw1ipm8DOvSFuSyiiaZ4tLdxqh0jwXPNMtypAlSQs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765427574; c=relaxed/simple;
	bh=iB6rSeVtuQjHgJRkBMnRnJxudjk9/WUy2g/urzdtHZw=;
	h=To:Subject:From:Message-Id:Date; b=l1gjhDqKNF0XQphpZfbqDyDHiLzFBKCAcu8uBEkURcogXITCqWfUcoa7ed4lMu//78m8mLbfBCIt9s8+fknBYqXK1ewvYrgnHarMXm+ohaNB5gQYBFFc9C1JnjmxPr+Y6LlXa56vSav8GR34fHjRH8ae7LF+PM66GxCo0ILZSmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCofvlaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCofvlaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E01C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 04:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765427573;
	bh=iB6rSeVtuQjHgJRkBMnRnJxudjk9/WUy2g/urzdtHZw=;
	h=To:Subject:From:Date:From;
	b=OCofvlawEnAKZjrGeW3x/ciMqBbwthargFE3zrkUyq2LZjFImEXLptgGMOfW6EEPK
	 Mlgm1qmAVGgIC6+nZcqyFDP1+3a9+bxlXkAdBI7yyvFSSi14UUOyeWjCsY+O7WxV0A
	 +vkNDMVD2tygiLp0nxRSHDGc/tLp5HYy6PneTV8TAoZn2D1f2+fXekGLm1Czg93lZ9
	 TBJsDZjJwH/eRuMym/a1pwbCYXYqb3uj263Wa4D6g6xZ5HQr+UooCCbBO8ijt5IElw
	 t4mOkTK0SrVNvqeGsjJmSAg9g9TieyCJFUlN/CRxHbjZzmmzEOKGEQHIzlCsBME3MU
	 z3C4fC4MrVDKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA42ED3E78C
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 04:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176542757369.22736.8813510831879297793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c09670128f403847acd88082bf06bd2f140187486700a4ee33f33b5276747e2
Date: Thu, 11 Dec 2025 04:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765427573
