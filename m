Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DA326AFB
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748195394; cv=none; b=AMoMOSYjqQ4tJo6vNkh344qSsHZZmXPN3h97vxLmTTkbpCEmYKcyZ/DEZ3K3KpN2ZHl+hy6848qqv9iLqK6X7WD0jo565CHhzIGDcl2Ry9cFeJQUu2FzYumCDAF3DEOoVk2PIgG0OUatA8+zTNCzOTEviE+ZwUtP/g7GRizd56A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748195394; c=relaxed/simple;
	bh=UV7RaCPJ2HES+hS0sZsaOvKbRroS3E5ZrCCebD+Qp+I=;
	h=To:Subject:From:Message-Id:Date; b=fuhfJfsy7ayID0JQPLoCcJxw1F4+Ar1nhJG1U3f4ZjWRSgNFKCFepfVBFvnAglitaSfVj5fCi/o2tCUXkIL/Q4c0RQiRzBuTbsNMHFdcb756vUzjD95vThnI2m1KWVkBGI96Mn58P1Ya3DqOQ9MOvh59WMRsDmR7tIt0dVUn0+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGJTOGsz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGJTOGsz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5301C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748195393;
	bh=UV7RaCPJ2HES+hS0sZsaOvKbRroS3E5ZrCCebD+Qp+I=;
	h=To:Subject:From:Date:From;
	b=ZGJTOGszVMU7VIG6YZ4O2jRkQs64FykhFNx4yzUbvxlzp/IbzR1yldCi9Kb/n36RS
	 WfHv1sg6SB+7hVA0D8yNryOlJ6xt+vgT2NWKShoUzLr2A/n56Z58nde/nFEYn27d7H
	 jg1xQU3Dyoc6s2sJBTKZpo2JJBKBf2Mt5tdJSB5rX5i1n0g69GozRSBXAzzgczi+X0
	 P4RFa0xcyKn0A/2/0/xv6WpvvFmyADoczOI4zYZiowy6esgqo0jPfCv61ksf77y4lO
	 gO9BUwNxoZ7EgDWk0Yd0Rb9fIo6IDMkxJAdEUYMX+tx4yOmyKwAdffNlyrQYhoEi+3
	 ZwqkBK9jh+wSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DD1C54ED0
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174819539358.12917.1728870568360385912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4b95fb7dc869dd1690a63da5cf6e1ae025c0d33e8bc32c2db1936bac61cde83
Date: Sun, 25 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748195393
