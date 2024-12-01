Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36471380
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733022354; cv=none; b=KucP6EYqDON0XM2Y3+gKdB38h7mk/4muo6xlYTpAWn7CI6QnGnBsq1bKbhf9il7DxfSW+Xmu9L9U7k/ClQOxhkpxVLAamnilRnvlbW+PGaQS5bwkPhstx0yAI9FqAe/ua1443nfJ5lpnpjEyTttRfWZSHkQ6HetnGKdDYggCXcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733022354; c=relaxed/simple;
	bh=dvtqLRDE0M+mQsZ8qA6MMQalXJ6j2PDWdlAI2Kk3M+w=;
	h=To:Subject:From:Message-Id:Date; b=qnS7gaPhQt90YgNgKq2Fc217+mABHJ5YL/RmDLRBP0weUTs/xI17u76sBk+OTO1y9ksNW4XLCZIi02yPyGOCjxoy2TFq0k0HELDJxGGTqL8ZKNQuUPna04jo9tyLz0UTxCaWPm5cYZpG8Czzdw6FufedHaDH9bAYVF3+6uXk8xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xe2JKnvQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xe2JKnvQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4BBC4CED8
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733022353;
	bh=dvtqLRDE0M+mQsZ8qA6MMQalXJ6j2PDWdlAI2Kk3M+w=;
	h=To:Subject:From:Date:From;
	b=Xe2JKnvQnGNDB616Xy2umrl+zbM01E+BKQCA6Su2VofCt+IG17lTX4IxzGc3eiaCu
	 7/1sYg+IBILXBwRFQCbwinObYT8VJz2PqV4Fl+1QlFqO+eP03C62Ne0T7uEpq0dl7S
	 VB2WPgncBXpwSqleu6yoUsnsjiJ408Gjtvmcl/0jc6VKoYnNMq4ootai2mg2U/p+dq
	 MdjmnCh9B80m1SqhEwvKyrYff+u2x8y5P8E1/T+bKKFBTmz38CCKvyiHx7bv7Ybxtj
	 H/qzjLbZAUQCWf2pZiI8sXb/KZ+Zf4QURjSsl3VY1yKFYSDoj3M3465RDJstp2+7cM
	 HWTNb+S6ly55g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9833ED7361D
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173302235359.4718.6322111795766693064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd837fd61db9120fb7c636810e83d564bfc732604c92d96a9990a9d67166d44e
Date: Sun, 01 Dec 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733022353
