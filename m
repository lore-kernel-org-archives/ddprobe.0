Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF9F2F60B0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755128395; cv=none; b=C0q00WhgdVQtuIRSzAY8dTlSkZ7ftJB0AjY5a61WTz1xmAq4ggLq/rGhUa3tftoeQMrqybkNQ96lmLnNJ/IkBRR/P9zshG4r6XHLIaenY86BwjFv0fN9RAZCU5vAr343Wy41PPDYH3/ckxUcTdT1XXwZERABbkZHTT4CYdTrDA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755128395; c=relaxed/simple;
	bh=AuWIr4zgHzdoRWkKGbpU2I54jNw7QjtYGntNeJGfcXw=;
	h=To:Subject:From:Message-Id:Date; b=SvjYATerA3SaiXt7r1ZmiofsO9ANS09vPrsn5xsdnwIZwib3Ep5D3YgErzdT87dcPTtew1/OWmUb6KnI1as9GyECLrGpEVJkfBXuQaNBqm5D9YpLUysEc4kEb1GkSHhKa6Zyzq/mc1Gj/uopVTjfwICnGWS8lweiVuhN7UR2cEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEaNCCtp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEaNCCtp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A048EC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755128393;
	bh=AuWIr4zgHzdoRWkKGbpU2I54jNw7QjtYGntNeJGfcXw=;
	h=To:Subject:From:Date:From;
	b=nEaNCCtpVAeTIEWqx38m70clpesBZsCCyszF7k30wOAOaBW9dsXXiMThrFH9SddAN
	 TUOP+f4Q8IT0OX9dF1oPsi3YoZ0SWIeHeL+DyhsnNFjPahMjDrK8z7xIcI+xMG0evA
	 5O9lNG+th2u3PGN2pw19/uP3WlmXvboAgCKsnWYnzt2DzqOjtQmlUtAvpWYfug62m/
	 ROCZP9i9XiCoSKh/CnqaoxM+lrD6bu7dl6zgdksDGGAORuYfz2r3j5OQgqF1peCrXn
	 P8assfu4+znbU8MbvC7/hROA3wrs+0kGl6Ys0H8odvRuWGmIEcpNfHedMpm8xZESGo
	 2/WLizkYEh4jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914C8C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175512839357.30420.1234521698433634678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 905a8ba845ca2b01ee84a8863f36598d795ae7462f0e0ef24a058508bee453f6
Date: Wed, 13 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755128393
