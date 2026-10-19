Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4021846D543
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792389034; cv=none; b=ofDy/8csufc3Mza1drrebEfrQOCWB+8HBW6gN1y/u61ydqJ+eJ4KTy8l4XgvkdhzL8h1oP+kY2Kbty+0scUb6AJ7I2+Hwi6qK3mBrkVNgw7bOboLcOLAZ4CekNsSGUqKCzvyj2ghNxLOqch0/D2Kd2OMjaHEZYw/Z5qeMqPwm+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792389034; c=relaxed/simple;
	bh=6b/WLnLwteWNRqR29BTXJabCtqpiQv4kKPbZdlaq3Ww=;
	h=To:Subject:From:Message-Id:Date; b=PuDeF5Oj4gVTMp1v+Z5RUz91ruB0t/V1EMun/1QwPQlX9Clqkvrndl72BbXpKSbPTX4dCIrC6ixGVZsv4d+pV/oM1MdlZKsvKk6FInQOjtyKrwNZ7Y1ooiDLIK82k419uOaMZPt4W1EkqmRXLUR41dGBliP6PkY75zD8y9Dq2js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EiPwRXE5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EiPwRXE5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDC5C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792389033;
	bh=6b/WLnLwteWNRqR29BTXJabCtqpiQv4kKPbZdlaq3Ww=;
	h=To:Subject:From:Date:From;
	b=EiPwRXE5JpwuRKDbsdw4Ca+zf11ihzrjAiP2Gz1n9Ss/AOTYWQPGBMJZ3pjbv/nl/
	 fFc5ED+r+a07Ny2RqXPH4DJX+/nbDWUdG1zxWOtH/yMCJ6sirW5QBv8WgUtnhZEk6O
	 Un7etKTjm/7fwe+/EgUDOjwCA2JsGhtQSZauaJiQtkmjT00/TAVoyY/KacOLY56TJl
	 +6mI9AS+oBi63BLSa9DmAURtCa7iAj3jv9tKhLCgYU83j3KH2IBbs8Uk5cxCkLSUP5
	 yzkHHSgLKlxTwC/rHoBMNia+Cy5kw3oNb7RwVcmzcb8fMG955QUoMaX4Ps0VuA5JMd
	 LZKkTR45RToxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B600FCCF2D3
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179238903373.27469.3447175145618884283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c97c969203ae7cd18794b13334d7e27ae1c66daa3dd4d0ee9edf734a329cda
Date: Mon, 19 Oct 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792389033
