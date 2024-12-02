Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECEF1AD5E
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733147754; cv=none; b=kTPqY6l98kTrVKZOIn5zw/OPEP5ppVzLURp80w9o0YZAtMK6haH7lhfIy52YQe4DzRqK1xWBh5DWKF3TUH/fclFSvqmYJzf06Kqo3wEnr0baE9nruowkw7VwHMqTloxrXtY9WwqcYF5Uc9+YiLDw4GS1tM2meM0RLf2l9shkuX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733147754; c=relaxed/simple;
	bh=X3yqU1S20ZtOh9JuiSBkvqhchVjPjG55XPNv2Kd2HFw=;
	h=To:Subject:From:Message-Id:Date; b=Y1SJlJ+BCQfnjhsceJrIPumTAJNxYsUq49amI6u5yfONq/kITZshyJGIoegjKfXb4D8pl09N1gMKJtOVFZGkxMcU8qpRy5urMjqZYhhUHwSpyrArq8zUGWhA7WAkcTUWU+ek22vXACDENMFG0REBRFKBHpaVdM1e2m3pICy3B3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGHLlUNN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGHLlUNN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B550CC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733147753;
	bh=X3yqU1S20ZtOh9JuiSBkvqhchVjPjG55XPNv2Kd2HFw=;
	h=To:Subject:From:Date:From;
	b=kGHLlUNNDY7RMlxTragVuYwsvxlvobEQdf8OjriKhrOXcUoNlc9H+TYF4SrItWcJJ
	 Er1SGMcWcEcn/a2W5l6qmDb8BzqjW+PDfX2uHkwhQzOGPbQqX1c6U9YEi9qx5ST4A1
	 2yRE3CuI0o4SsKogyKpCMqpPx6UnD7SIuPfs8sctXOe+153Un2GcJlklUSoyElf5NV
	 A8BDKUX6FvAsch/boco75VgKgr9mzcaFjd10IffuRKX9nasTrFQCofE6725MoMlWLM
	 pyxMD/V3h6fOnGwEoOTHxxQWm21i9mVh46jkFLIxSqVvFqoSLKRT/Cs8x1XQWsaT+D
	 3uFozx7QT6mKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A071CD78321
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173314775364.26553.4151848336953523469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20f99a14f6bbe3e6b1c1db5b432e978a2fde99dfec82f28564b9aa8dbc13be09
Date: Mon, 02 Dec 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733147753
