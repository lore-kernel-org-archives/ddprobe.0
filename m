Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C41F304BA4
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 13:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763989914; cv=none; b=QDbK3Ff9KwWTHwoMR1xz8eDmLA+oIe0mYJje9e5teQKSW0AA6EGreHT4l7KPVPhtr+HoChXQybc/UAISYyNu1wWROSEjFnIAE4HPutDuLNw5csaCHfrgRqfsDiMOBuU6Ls8M2ZGontol4gxJVFDpNV/UVDfCpj1i4ME5SKUqAwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763989914; c=relaxed/simple;
	bh=/Y4sOvXCS4VhHiOAi69hOVxSEoB96h7Ygvb6/GyRND8=;
	h=To:Subject:From:Message-Id:Date; b=dPlIZvv/BFm879QSFHPD7OJLlC4qx6Z80pV5AcuQlROdVoiD6GyAzqyz0d2Af/2Puxy7HuUm0E5twFiJNJE1rBp6ykV1ZHoT3JG5MIWfFaqpL6gb8Ieq8pN254KpGD1GqipV1x3vrVFtSR7IApmD9R+m49RuG5T5q0a6RzY33LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nN7PjfF6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nN7PjfF6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A652CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 13:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763989913;
	bh=/Y4sOvXCS4VhHiOAi69hOVxSEoB96h7Ygvb6/GyRND8=;
	h=To:Subject:From:Date:From;
	b=nN7PjfF6ERGKRPwFyVnteRIfWO1PAdvMqmhT+i0wfUk/lG9jqlY921gDTt6tzvy2D
	 04BTe1dsw9UfPvCO1JFNNDWcrE8tMqB9YbL52O1NKfBkNolpVt73nHwelt2cfRb+aX
	 e7K8ugDkzt0Zd2YgLa9Yv7jT80EBaoGlnkz6h9zZZfUHYGxE75whcAOrZHvPvaN3os
	 lQhhuHPffCKdkN5nboP0OiPFqqL6V7hYluukjNQRYVvSaSEw6Xd/M+vV7oMCQtqL7Q
	 v1WEIn8istAMcegRSziwuuuedDYdATGNN5eLdvMLgcBxPlDwBaWajPnHIrtaVLrPfX
	 ny7zXm7d1Ux/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9332CCFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 13:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176398991359.4055.16817946111223665162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73d5801ac12fe54f99a7a3500cff140101e01a13815c1230ba5b61c8d9b82a93
Date: Mon, 24 Nov 2025 13:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763989913
