Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092DA1F3FC8
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754782794; cv=none; b=C93UHXjWCpTQEapRINGFyI1g7yDNzdQmO9Y50R+ytBiMIh3ymH/Y4iyDMLXlu7XFz0zbDcK1Ni8XAaQo9PCBugKE/ooZRpRQ8PWApGWU3cgUxXZamtXLE1+ETyOTCnFIJecAHXgqNzLHnv8IJTOKw1ZqsJbVGn9FKiU6DFSzycE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754782794; c=relaxed/simple;
	bh=qeOcB/fT39of7+3QTQHs2cz/k4hbjn6TwaW1Bpk3JeY=;
	h=To:Subject:From:Message-Id:Date; b=TdFGAcatwW2GpVRt0GEdfYKZFUSYRsyJ3S03aQTb7S6nL8kEq2CMzSjgJtyDd4wRWMrIjAJHVTgoDOAJq1Gh/kXx3Ks0P8ikRRnELFX9kG000Kr6DwpIPJKxynzZdiOwDZgLgeGeApf64rF8104hh6FuUqKk/Myd++VuEQ4GqJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQoq9QY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQoq9QY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ABBC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754782793;
	bh=qeOcB/fT39of7+3QTQHs2cz/k4hbjn6TwaW1Bpk3JeY=;
	h=To:Subject:From:Date:From;
	b=NQoq9QY6KjjfW4f67iwF4zDGic+DVwEPGeQBSaxn7svp7L5JG0dnpSMQI1y0hs7sC
	 P2oDzfmp9pLZbLWlVkLYyPO5GxqJZKQqfbkukQtfcFl0N2NZDF/l9S0bawj45EZmIE
	 OXkvyIuulxqF+P3dhNF2NxCDSRgUs7NZSIJ/xpUwd1dfZKsS7dHoruNiWF8hPgNqE5
	 5G1dS2r68RT47oiNufYDhT+SnH64LeZ1CIA9Gwjj6zJxVtU85XKrfNa+tEK9l6CxVV
	 QCK98yoSX/hLnAGrEaY3FDhYwO0/8TJ3mW4agaxpsnJmimn6MuBWDQKCDXyLNuXib3
	 mfVSCzjSdw/mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912A8C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175478279357.3673.3465574842436636260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c46d6eb28a5f4516d786a1bb295b508b2ab7da31c8784afed0b8936d412575
Date: Sat, 09 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754782793
