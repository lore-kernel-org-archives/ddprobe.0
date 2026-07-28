Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CEC437875
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785243634; cv=none; b=Xs4UnV84nzKdjs/LopL3ebBA+PMxXaJnv80gPrCNa4wm5vQjOUYjhYCiwLdf8rl+Y0dBy16JzBUK/om6mQVw89FaFWo0pUneXMN1VBEAuFP/7Io9+P+73dVeCu/+5KlbJGTSoOzFUt05SwGCtZii9cti+BndAcwNw4vh+Y0bPkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785243634; c=relaxed/simple;
	bh=0sbcyceHMN+ay8zkZ6Agi9++00XwmDtKfciI3aEMOXQ=;
	h=To:Subject:From:Message-Id:Date; b=JoN8TW5HJtOmrvwVFcutQ2N0FMx47FM9ibpDBSguy6LwkrkasaACzi8DqcstjS3IGEfqM0Vk4IIm9ZsTEgQZS+DqjJMQq7BGyBEbAgvReVA3rtP8+wba0Hh+rADmuGrU0Y9GD7Bl6QcjwUbM4mQ/WT35Kpl3l/A3xTdhB3tzs3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpE2PWRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpE2PWRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27E6C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785243633;
	bh=0sbcyceHMN+ay8zkZ6Agi9++00XwmDtKfciI3aEMOXQ=;
	h=To:Subject:From:Date:From;
	b=YpE2PWREF01mar178LLDtHYHwDDH+6jOMdS+xyYfdFHa5GXybJhRHb27rPKx4hymb
	 OL8L8ZmWFL+hJMrKxbd3GN791E5Z1fgje6Vm11pz3fdkAUA9jFqAyQvwNWH333QjV0
	 YQin7uUvMq4Nhicjy3526xcFuFw5kyLYuGK85PkNcM94dYxw8urBWsH2lHXDDQnm3X
	 ONQN30ghJGJAcgRz4xLCjiwpUAw8/B9y6urAMuYlYaOA4eNsKo5N3FJcj7oiANgv7o
	 SYzhx4RkcaEE69rJUa+MyspHf0LTsRFtCNrz9e4VfXZ/HkE6mpzOSSMsz4pKDZ6tjA
	 NA7nIVP7Z4c8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC55C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178524363369.10949.12393468558596756800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5e6acf53477b41418355f32908907f99554dd1b19cc55f67ebe5a606dc0a8e5
Date: Tue, 28 Jul 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785243633
