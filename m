Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D72C2749DC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784897434; cv=none; b=oET1vSqR+7c74sCqYqA3E3EaO/G0cbZT4COl0z93VAFzJUIn2ijdiviSySpKUHDDVAkDnEGod6zuv1qHOGw6rg1jVNsm36SzZvBLZ1YvN5lnttJghlsVIaFLyfG0mYnwhR+VQVwj1aR/e24MIZ0jIJmE3GVdGnm1rH2he9al5Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784897434; c=relaxed/simple;
	bh=jEqziIQXk7GXbNnCPN0LWt3aOnhJEtl5R1yPCyq9Y7I=;
	h=To:Subject:From:Message-Id:Date; b=ekJW8YArTNgOyZ7ZCAB28D3hS6HQVX6mneaa5SDXkvD2XoRWkt987ZWgIXTJ8RNN8yFTp6pMk8o/wqW59G+/m+hYtB/RRvoSWaLmmmJMncQwgtDmDUT7+KCiNUahVoQ8af+9XIkOPmB1+Ugm+m+6ftSZ2dVi1UlVoUCeyuvZ95s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6UZ79Ki; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6UZ79Ki"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0F9C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784897433;
	bh=jEqziIQXk7GXbNnCPN0LWt3aOnhJEtl5R1yPCyq9Y7I=;
	h=To:Subject:From:Date:From;
	b=n6UZ79Ki16TnF/6iXxu8ugWkGz1bQ2y3LZbwNqSGQPcStTkCRfE7B3n4b1aLd0U/K
	 sLPsCkVwBP15Zg7nKW32u1P8uq0dwE73AkVmS0vFEjG1klNINePgGDDtkwRhtIsZFv
	 l6MxZQPofALdX3zLwMFMRIH5JG4IC5g0peZzLE1cjQA03AHGHUS4oWT3gtzWm1irF6
	 OzDJVZy4KL1TfSubrSbK6+ajLighuBoinviZe4XBtVLgZ8UeW6AukqlZ/lyVwJ+wfC
	 +f8P4LUVC3OMRhgiM/tHzUbvkThZ+ebXfdkzlIVAFMc6ih3o2tvjRw0+WNK0VX9B47
	 gMrQRpBUMq8DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A86C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178489743368.25684.3907227301242935491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05ff031ae89048c6d1ccf299c4c9e3306b772f962f760afcf616cb633d3698ef
Date: Fri, 24 Jul 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784897433
