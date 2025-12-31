Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6B62264D5
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767160434; cv=none; b=BDhGLttWrelV0yr4nuV+ToohzyNAT+mVKX4Ld361qV+elfBVUOHj5u6G1I6tmOMTuq/JYkxy4BGUl+iXzhnqrUkWvdcnQCPUPInOVU/rg3EaePOuK9DJTWZRzNU0UWRkUaFoxbW+WlcjXRbuBCwsFnxwEHhefbxt+aA/B2DiYdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767160434; c=relaxed/simple;
	bh=+ZG8nTqVHWElz0unWmKraZLWLlbrp4bTejrdGDXNNts=;
	h=To:Subject:From:Message-Id:Date; b=fodBKhpTpfh9jgOWCyaHe3mbtAstqM4xVHByFe54/YJnR3qLXLY8aAJYme76PD+596er8sEVqYnW/MZtRCrw62kK5WQirzYHdg95eNba7GDlj5HXU8jluOrk0DGrDeSotreEL1CS4GrZ7LGZI5f41tc9EmlC1OraGWucsMC511Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qdvz/duv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qdvz/duv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5969C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767160433;
	bh=+ZG8nTqVHWElz0unWmKraZLWLlbrp4bTejrdGDXNNts=;
	h=To:Subject:From:Date:From;
	b=Qdvz/duv4bBOqzwKAwuhwmRjvurB+XgaxEjSw2cLE7iuNrkZ1zOvckA0bd4W5jBYN
	 B26GGoAUt9cEAjMUO4g6ox05PhmuJUDw7QG3ERZfnVt9GuzjnwinWqURgQKHor9e46
	 4dYphC0Gg+nTLOdfsWXvYI0jCaYmLT0O28y80Vsj0d1SAQeC1clvyIW19ktXH8fXpq
	 nqzfHEaOtOhxlbDfj0CQMBSumGuggevlmY78GABQ3VFBnK2x9XqWX0b7IFeRmQYIgz
	 Vy8VPHYHXsL2bw651fRvsqqE1Dqm5mAKbUANdtoUu2NbDX9rkhhVNXE1aGvLkMDKh4
	 52HrOCjIGndyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925C1EE49BD
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176716043357.1407.17158414866282382258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f147bcdeca7ee9b4d9ebf9fb7de524b28caa73aca52ab164e48fc7e3c327cd0
Date: Wed, 31 Dec 2025 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767160433
