Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4316F36AB7C
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 10:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780223674; cv=none; b=eDdsXJXPgI+Bc25cf3uEQdyX0d8LIiRROsl71t/aH61TyLXbYVX2W9Rhqz00dOtq6JkgI0QoMUgFKckwhvTQU5bathahOpLYL/2ttUu8XNtOyexIntqWs90pVvwolvPEBHt0zHL3yNjwntg6rfU9ZeF3NkpWrt6ZHVfnGBSTR94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780223674; c=relaxed/simple;
	bh=hrDGTasAukqPMm7mErvh+NdvvkdfWfvWEsLeNcWIZzY=;
	h=To:Subject:From:Message-Id:Date; b=AgF0lOjOf0+5sj1iQl9Wh/OCsuJR0b8/ADNC2urHvRz9wDtJ6semaIQfrB7mpVCwxR6O8SuwjCM1BmotdJRzRjrB0uXsOcQiYQken39NXp9uadOIMQoGNe7h/6RxhA1Zpt88nAkfRovUQ2rC8rAbfqGUskwvdwNm4ypEBBvc5dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUHwKYY3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUHwKYY3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFCCDC2BCC4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 10:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780223673;
	bh=hrDGTasAukqPMm7mErvh+NdvvkdfWfvWEsLeNcWIZzY=;
	h=To:Subject:From:Date:From;
	b=fUHwKYY3V5VyIy3Ss9zjjqWEbY4NudB5pafsjfAQNdd/ok4BaSUOt6erbFlQQvfvO
	 b1LbdG+FrWLWp6+lNKk4SPMd8u5ndQF5X3XTmg62973OufitELAaV5Q2KA9gNpYCqo
	 3shCQyRrEhlNi3tRXayAtpJ4h2cUdMlSende9utlnabbWDEaYuaBs5tC+fRMEwbQZA
	 XeI/IvTaJYVA0Mw3TT31AnNBOgpYKisgy6yLW8HLAShbcvz3EX/Jmxy8Wx/CczahVy
	 ZONYZr2QAW8xffvuWkOevmP9I7w5V7yf/blRcpfnMBvSCan/gNYf0/0P0jzrvQfMkL
	 X7t4bGq+zQUWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8742CD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 10:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178022367368.17159.5216270232187454355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ead2771d11a45c4f6f24cfd89941290137df10287405e31d7073f1d9b0ba2665
Date: Sun, 31 May 2026 10:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780223673
