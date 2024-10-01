Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E02199927
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727750754; cv=none; b=DWA5PjdGFERrYpD56Zp7YHzUMwjmNSo9C0SpDwOcGDxx9T8JGMddHKfvXQPqQW3kgkFUAlJbrUx4E7PbHgo4sABSx6WG5J6fnOZB1VGU4+kpW4vITZ0aM1Iid7lve+hhFX8kGnULIPmJPI7BvHZPWRZ7VyFrTTR306o/swn1anw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727750754; c=relaxed/simple;
	bh=gmSSIgwFXdIakjvyZfLCJR5wVukkCmWBCRYdGzEQktE=;
	h=To:Subject:From:Message-Id:Date; b=pgWHREe6kb8ss2atG0gIOOGcWdgFQcAJBdgtOWcktDfR+x+GhshNOulpORA5EhSN1YP8nAxtvh5uu+GTG7ifzeJdXlWosnLIW+uJNU0DWIalgbUNYR4f7LXMYExQIWq9W36cccU41czc42ohoHQ6BGnkd74672YXsJiRRlu/Kwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+2FmJCJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+2FmJCJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7280C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727750753;
	bh=gmSSIgwFXdIakjvyZfLCJR5wVukkCmWBCRYdGzEQktE=;
	h=To:Subject:From:Date:From;
	b=m+2FmJCJv9vMIPQpsWKuxetTlRZa7FY2H0voVYSabBJj4p941QfDlRNAH3STaBsEe
	 t1oWHFT1R1OwTCy/c7Bh27xbDXLjwDi3nqGy/13K0dojCpToAsHbD2SEkLevngKzn9
	 7uWJmI8r6/WypQKnCxag3/3TlP1j9i72kN7Tig9o8fOT9HEa6qhrP3jWBWuYb+UkRB
	 VAfoGlGk56SHiHPmBwUuTRZwZ7MI0WU5V9yrGhhjESDtSEC9zuGRZmvPuaP/dOI4Jv
	 nJkUX+qURCpXd9749ROiAF29zpkzTH/t36YNTpRaPRY51hsQnZ2nvNl6eFAaLtJKXF
	 ecQWxIFGiBG2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9262DCEB2DF
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172775075359.16024.12527004262435734215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d5394556f799efe14177fc19fa19128e1f01d3e3fb77f5db69321a0d4eb4995
Date: Tue, 01 Oct 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727750753
