Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1526018035
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724985954; cv=none; b=goCQElAYqMLoFFjavDM830aPXjayAxyWNT5tqnxCSlgM7QNHBdpw44lhzC/calId9X4nQds2ZEo3tVGSeEkubka8EJ9xIuLSM3alImwRQCh8mbsaXTt/UpIhfXkX4N99YFrf+aYTpFhbOjpQRfNftcbXy0nkhlvNSvJIujJrnCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724985954; c=relaxed/simple;
	bh=nEJIYQO/vtfm82ErZ4Gk8vdKmUIXU5O5kKhWVpcVYyw=;
	h=To:Subject:From:Message-Id:Date; b=qSlSgHMFqHoBJxZpHQPbijCGRWwf62mVAjOsjapOpz/vIrE/74T6J+58K0M9cGgbHYtCtFiDYSSq9No0jPKL9IQ7Mp2xeX4rxm2AFXl9gDACjMFphU2naATFjIKZUs96JsZebtjVBSzrw2KUCO9LMYwbV9gp4/NInz5E0dvYhNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vO4OuMO5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vO4OuMO5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A7BC4CEC1
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724985953;
	bh=nEJIYQO/vtfm82ErZ4Gk8vdKmUIXU5O5kKhWVpcVYyw=;
	h=To:Subject:From:Date:From;
	b=vO4OuMO5TGXVp7x/Idcr81+0pVi3JFPsUPHUSpAPODP/AHEUxaSJI3grG7wFeJEv1
	 OiVzrrvS8FdzlEiIEyY53r9rO+n3R0aUjPEWNlzQtUJIVW+HuhPpwqX97schVDBJEq
	 th6N0myroR2EoBg+q4fGVN2UPShT0N7HajUUDudEQLR/bjnjq5sP5sp1BxK2fL5NMm
	 Dge0i1a7FbGBXzhaSLtGv4WFMl6CC5fxuS+qxMlahHmwK1FAdzOOiUqZhJWdfUA/uK
	 HKTNAZOCPWgHQplx+VvlMnsGRB1zfPfkxSVDHsMJYHo9kJ9oR/V9aDDqsndBDbp6z3
	 hLatoj5yEsToA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F1FCA0ED2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172498595359.14305.9852463918837351646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71d1022e052657a3b54f8b596147e82f2b859c4f3c0a8c5786426222b7d1b365
Date: Fri, 30 Aug 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724985953
