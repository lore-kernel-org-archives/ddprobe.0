Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3DE3366575
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768916633; cv=none; b=GaL0L1hcEYvOFZG5uiefWNTpowH8L48T8cYcfcJufYXMAaGjncUuoCWNFWtmeqRBlX36prJ0EuNudSol7iE+BbJ7PsKPl+Lxkqk/olMrEw8kOcF/fRiw+E2daSODpA9KB+JVKJX9EHVIMaqZB2F6N2s9KwFVySmtlQf4HsYMgOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768916633; c=relaxed/simple;
	bh=f9280xydAu+rdPtVualrFbnutR0HFxtHEkB1b6JYdPA=;
	h=To:Subject:From:Message-Id:Date; b=cLhTGyNQnC1REPgCy6rQZyQXSBDJgvEiEyXPetAgPEW1KBTuPFwstMWEe1mA3wRy58+9qCRDo0SQNGXgE6quxOWpr/aBoe+hH9l8C/qcYWf0SzgdDl7xAhPz/zC92UpFh+7LgN7ePghJQyU7XAzVGpiN50AlP+gsglUkozBv7RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYhl5jBq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYhl5jBq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F48EC19422
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768916633;
	bh=f9280xydAu+rdPtVualrFbnutR0HFxtHEkB1b6JYdPA=;
	h=To:Subject:From:Date:From;
	b=oYhl5jBqT2rp3Yu9yMWfr3wu58aKWItS4VNi/RM6ppFPKwCTS/LMe36448B7/Aidd
	 zafpH/71HR58EOh7im50eREEeXfSdmRltpqoGNnxAoIKR5pqqpYNfzBXJvIf343Net
	 l+B3vzT8Ximv3rQWYJ3/nBXWyt/bf95IEZYt8LmXRJT3ovoQkh5Wy7NQANFyas7cZV
	 yAj96hwWJPZ0tm76UoHj1YNEUP5GwOoTWW2Nk0HcFf9ri1wsj3mUkXdh5iFnR8t62G
	 D5yaOIeggaNKk9FW6pbpQ40Xahc9teeGGypBmH6JY8QuiPBrqw7g0bvolvZMuyta/D
	 qEhTWQ7e6KXvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F676D2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176891663357.22293.5121582598456599775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2fe9baedd971c6d8b40eb339af6a616c3efd5711ae7e3a9ed702a2b1d3ae2f
Date: Tue, 20 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768916633
