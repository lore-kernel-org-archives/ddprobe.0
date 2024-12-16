Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BD31B6D10
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734353754; cv=none; b=r8Wl0gDiWRULtPPc7uUtYpkUvLWxWUJU2NeN1uml+LPe+y8O0vG5VdANPgTUsrQ1x6MPhzjmHGqezCQiiFpzWA+t9WUhAEd/qD2qyRKfV+eq5JtWLppFRimv5/QVZkqFt2qK+UtBqysXJ28a0qZSwfmd1s9am0goyWoQgwf7AVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734353754; c=relaxed/simple;
	bh=QNyK0ze/B5FsD6OSCO7xQl+vpFh03BCbNA7kE6ZOi8c=;
	h=To:Subject:From:Message-Id:Date; b=t7qlOx1avUNtWxFVeRLXUmKxWkKna+dNZpBWpj+GhoW3VDMLzeYMn1UWjdgtDHZTZ4H6QZWSgNrRfvHdW469DBxmSSbiHTfcnqlsfhkt7WUnkcd5N+5WcFj8//+mqGl9L9jzuXkihXQAElIulqFZn63I/bR0imoWDxlfof8Pz8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkhtX/Rx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkhtX/Rx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EB3C4CEE0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734353753;
	bh=QNyK0ze/B5FsD6OSCO7xQl+vpFh03BCbNA7kE6ZOi8c=;
	h=To:Subject:From:Date:From;
	b=RkhtX/RxzbGzKd7/52dXV9JSElpUqrCqiUGkDP8mlZOVu6XjvY0LdSF7m9+tC0Nk1
	 ca8Oi1BBDyr0BqPNs2rCP7QP5Uy1APGth+ccDBOMAAk/1pENVdl3kljzA7bON2afz1
	 Z7wAL5SjDafYw5/NGpa0kLaHIaaYcVgfYBV2KTIAcoLMfL6VZ9c0LQFg81HCrUSYOb
	 aTGEoBeSHPa6C4yrg1yQc4boPg70QC+AB47pRuXviDkt9SvhtMrx4xn1ChlR9JVXMu
	 pjG6nz/gC+Oxq6ollgXEIzXzOhc1vJ8fenhqhef+mOrKVBb4yT0J7kAUIokVJn72eh
	 uiCtMuWbdHzTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980B2E77183
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173435375360.4022.8993053231281613749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee69840f0d472ee7aeac12887a8d5849983449dba40597273c52a99ca5c14f37
Date: Mon, 16 Dec 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734353753
