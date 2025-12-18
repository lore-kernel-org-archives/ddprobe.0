Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21764328B57
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766060634; cv=none; b=bLDeODuUtuNEWe/DIsQ9No8W+IkGoMxZ4VSJORkfzt4tLuFbp/9Y0OrUYelv/rYrWvddTDyOcZCuh0B1x4GWff10brRITeqBtGNnSoiMtI9tSBsv+r+z7u1f5BHDGhEM9nHRt5GUZlJ0g3eYuRiqlOz5mK9R4bHF4A6hpYJ32vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766060634; c=relaxed/simple;
	bh=qIO3H0+tmJhjxeTeA2j6Qrc5xGyX5QgpuSO11LMLVJY=;
	h=To:Subject:From:Message-Id:Date; b=p/PePkSjxlVzSpbaTUcK9cFgQEMa9yZf/cf58fvLD+ZJO3oADI+yVfkDTgBa8U0zIgvT8tBRuFdOy04Au5a35zpxjkOxFiVqvn15q7hiOBxnH41jIfmSDrKyBt3gtFl+IVnuPZrr3Aw70ELI8JySS4/TL9YBsHTXTFt0VahgCPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFVXjJZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFVXjJZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45A3C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766060633;
	bh=qIO3H0+tmJhjxeTeA2j6Qrc5xGyX5QgpuSO11LMLVJY=;
	h=To:Subject:From:Date:From;
	b=AFVXjJZ/ligrukxnAKMFr7gFPxuoHX63UBiDOAMdBb0BztEUlcoVZ5uzYP6BUgXXl
	 6FV98bvRvu62ngo9BkjKvvet9sExk3/KyBFV5KZnMeqE05J1jfyhRehI3XQ0hTxCXp
	 Njdu/OBzckC218ThcVzEHXM2Dsew1QUjbjshXVJepfgWb1+1LPLWsXzHsMBHYoW8qd
	 cx1Cu3rhb6M8h/+Y7O0F9yJA8y/8YjhtcTWECEV21wBm1qA1HiaWsIE8CKZdwsCcRQ
	 lsigROIOeDRTsnncSjFosiBRzQ6p3oGWFnrX+Y9YiMjxQNjqh78KefrgfLdX9krUZK
	 2FMZofTGUQAzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A6ED6ACF1
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176606063358.6491.13276265390870605692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 878ed63feded8c88fe1ea644e25129ed07a837c9120abaf8534b9b1e0bea05b3
Date: Thu, 18 Dec 2025 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766060633
