Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5020928EC
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743106794; cv=none; b=gsDa2WlS/HvkaI5E4VPkhLRZIsr75QYn0U/gEyhOUmmwApY/LQk3pmWdo+c2qMv9t/9ExsJ2Quwms1SCFG6X8z3jeteF54J5oz7NZBSBr/xcsaEVaflkKjhbOcgzFzk4614+P+c4MEyrdwQ9HDOtt1FhN8+ecV47SuFH/9Gh3Bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743106794; c=relaxed/simple;
	bh=4qvYYlMebdV5/mk1yROMfV7xvnMFrmHxkCILQVoc2CI=;
	h=To:Subject:From:Message-Id:Date; b=GnvF443kGylnXt2rOnxUAHwrZNfgg5EQOVUja/U3KGg7DkryTmvMQ+zPfysMuE7D2i3EdfVIzrxzBwpjRZpNoZ0tYenQxZudqJni9SpTA4SQAxsMINSzWJ8w8R2SxDSdqnWMucZdWvrH1iAz9j3D9me5+UlY6UUWKGxs2h/XIOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rI4RjKEp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rI4RjKEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF9AC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743106793;
	bh=4qvYYlMebdV5/mk1yROMfV7xvnMFrmHxkCILQVoc2CI=;
	h=To:Subject:From:Date:From;
	b=rI4RjKEplQjTf6CYiuVON7yXAcLL52xj62BR2fI4w5220l0WVJZFj2Eeg1cDUe84U
	 zh++WLXu04g9ho7f4sNahSkzgjeip56Zk8Wslhm1GGBey8nKcvGqXLu1QzJpQmd0Q+
	 qJQxYOwtcbxX8oOQQ7f63Crq9M3SJggGFrIhntSAYH5lsq/W50++OF04KL5oYsPOLZ
	 dAI/pv/2ugr9CqabBGEPmnKxtyhCOuaUkBV7+VA3AAQwixb3Ek9FH5SKgNtXoV9r5s
	 Ch1o9IkFtJOLdolmlmf4+b8F2ErGYZtDiKUP9ycbXjWaVvL16071Kd4/VPdRhLFcNi
	 HTZERtyQA42Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81CBC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174310679367.5782.18026734913197756261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb7c138239fccdb2010baa99a8c6f4b0e62be697a7bae5925e112329d1d98654
Date: Thu, 27 Mar 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743106793
