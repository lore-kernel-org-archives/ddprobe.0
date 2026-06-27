Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580053AD50A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 13:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782568714; cv=none; b=FB6YdWE0GpqZWWHHlW0R7BCLl3vOHdI4efMvU2cQ3vznocXMXJuk9EnUCURJSWb6JTiegtb3ze/00ggeBwSYTNVrClXTgQ1v0olX7MOZFzLfJCAK/HgKm+ke26c1n/cPAgXtbz9eNT2hf8B6mUdfkXVL0lB78gcX68esutU7QuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782568714; c=relaxed/simple;
	bh=kJS8r+E6E+OZ2jUQMkoc7Mo40Uo3YXLwdGttY0bBUuc=;
	h=To:Subject:From:Message-Id:Date; b=aj84OtTgFdgL6s++MTdAQlPVZVzIfvXd0xGvl9vyxNkzctwq+aEz8Ty7VvKbmClL4nced6i5kNkDcHcI9TQql/Mwvy2FDG3hHN9KnSVJD16l0jPqfPPWtKvN9kbXvOKseuoKDJahsl1mPR9K3Iz7t5RNF7+KKzL+JSMJT9M4XLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syb6a22Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syb6a22Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F361EC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782568714;
	bh=kJS8r+E6E+OZ2jUQMkoc7Mo40Uo3YXLwdGttY0bBUuc=;
	h=To:Subject:From:Date:From;
	b=syb6a22Y3bOXDR4z9Iihz/LYcUip6azGGfaZzj6iBOVUB6zECO4x0pWk4948vY+KZ
	 7B4o25AmeVCzWkx9VjPGmP6HbuxqJX3i+1qb7H9LpvYAYFYB+m+/IMZfQh1yNKQCF3
	 iIvv9VINYqVQ+j440k/t+/DEcWovjQ+qRLzXS86/sxHozKCD+HAhVbwWWWR6DC5AAQ
	 L0Uyf3p5KSuJHiUOO/qW9rJzFnPtkq1F2xBO6UMztKimu/SMkl27h69ye8MPQHQ6rP
	 axrMcnmBYwnTn+jxwsUR/sn1oJjFnjwLI+1KsIc5w6XqmSgccWMJlWSSQlNc5UaDlP
	 8/ABu9WQqXXhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEEA0C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 13:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178256871374.3563.3744173167474465944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de4ef5bc51c726690e0c79c75057442470f2bc86b2eeb3cbe95a82fd78e831bf
Date: Sat, 27 Jun 2026 13:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782568713
