Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D54C8DD
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 16:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716741263; cv=none; b=gS9QfpxZnJ2M/GW/HrVxr68192mVMYW1GhsVYOWyvP19T6UzmA4IHThkmJsNf3gc9j/RsXRH403YI9uB5/GCONt2rp0MneHnNpkRi2qJbDfjTizHxrOn1r69ZrpWdRQUTiEJNHjDWuR69po4S6ZCWoT49O0WpM5JV1n8ZaLwA0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716741263; c=relaxed/simple;
	bh=N1IZ7Ek3nHTb5OkIW+xGIdu8CT6hy/Vj4WZL12fWRQk=;
	h=To:Subject:From:Message-Id:Date; b=sZopO36SUJFDQqH0jbsvbMYFpJ0CCgMsAItA69DV1aES5/JMw7aWF81praiRiahRR/SBA61goVZ1aI3echn7OvulDWpICckDURgrseBSrIkoblonWkAJ8DoZtm35ngNRd7h/EudEv9EsoZ3vG6Z+1KpeSfVVjv5g6qe0W79cLrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPjm+ui0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPjm+ui0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E01F4C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 16:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716741262;
	bh=N1IZ7Ek3nHTb5OkIW+xGIdu8CT6hy/Vj4WZL12fWRQk=;
	h=To:Subject:From:Date:From;
	b=rPjm+ui0kyXObXv4HMKSnbjNnFUprgtRBd7+sdNhgrMTuteM2LIwqcmG2stTzWpcE
	 Ab0i+0CYyCPbaTMyu8cfxFZ1lrU6MK/2FdJ6ns4lP+fbBwEi6rSX+O5lPK/VwkOqLX
	 BwMduateuYndYylltAxFlNtIDTnHX4cvrHZH5d6wlmbNqFlQctAnYYa1N8TCT9IiRc
	 QpF/frkj//N8TQcyXDvF4fmPcq+y6dK9AvVbumx/XcOOwHJNBawCNjYegh0u6NPfv5
	 X3k5TltxOpHO13RlhITpj9dwHTagWESvTU+KH3XPSVzKoQAMolW8yhdJ/O6ynMJ9Wt
	 ZcwFdiirHf5qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C961DC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 16:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171674126278.7869.2459260311077018133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d99d46ae4b93263aebd2a208012b479bcf36bb865b7ad0b734c2cbbae5c7273d
Date: Sun, 26 May 2024 16:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716741262
