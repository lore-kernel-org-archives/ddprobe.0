Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422745588D
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 07:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717140863; cv=none; b=AArYOsiM6ggpCH5HvXS1+zHzJg85SFc6TsIkF/99j2ELKCgdU0QEkWTb5qL7k9aFx11UwrCLfPFPh8h6yPuCOrVEwe7h1YHB+7lhmyvouHHAlc86TddlJgcMo7cMriJiuhIi0pwl5l9NaoBhHgsKvYu7bJCUwkQOpgIgTaWWAIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717140863; c=relaxed/simple;
	bh=BUspDGv7P9PKE331i9Q40UDfpxFGAl3hNrTABoX1VAI=;
	h=To:Subject:From:Message-Id:Date; b=WZkX6CgM1/f/p/22ajtfArJwq7pqIwZIXN6NhZd6kCTC1+XCLBbRqahIjtnxdIU8UsxzG6CDQ4d9Y3DexngAa/Co9DvAG7ISCwYu/y4bVC2bS0zOVw/8hrvyBxICQd2MhbiJ2yf0jbC0VtxMaAeyh26gbMqKKPGJ8B9ZxJ3XzSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAV4qR2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAV4qR2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBABDC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 07:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717140862;
	bh=BUspDGv7P9PKE331i9Q40UDfpxFGAl3hNrTABoX1VAI=;
	h=To:Subject:From:Date:From;
	b=GAV4qR2uNw44zgofUav0OZM4bkcLt3R44QNIu834Bi9MbjyxJhNCFlDpyyFdzo3rt
	 aTwNLKnI2LyGL+ezn3WI+gWZE/UnHpi/aYLra4vePX1TblHXYk4JN7a2PtaR3mBAmL
	 XnK8aipaZkoeOLNmnALEFHWyIOchLiUmDOtTKvp5OfidBwL6cKMCimH5i3BAhE6HGs
	 sm2MSdto6zOeAyn1sqa69w+J96j9xJ3Q7kdh01Q2S9f/A4JtEZWgjoGtlUHZnmqUwd
	 Fqe+fJO81tgHtVELiZo5C3m8hPRfzXfQxbBXrVyPvP0zvGE+bN/RfIRayeLlNMHPFf
	 LxQgwtbgEVAcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC22AC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 07:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171714086282.24296.9682579839755909523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07aa9728c279c3afd136b0f4ffe9a9a3a3d4f6aafdf512e1f398614a6ce7fe9a
Date: Fri, 31 May 2024 07:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717140862
