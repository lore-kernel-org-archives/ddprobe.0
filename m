Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348B321E3C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729037754; cv=none; b=Bk44/E6laLsfEfp8rPXbaYXbx+u3dGaxvCU/xprl0WsrSUBDsa/Q1tHwEb6MwFxDdssyt14yeNbCdYMisPz4xKt2Djnwof3WZj/XS4ENPTxlgpxt7OOK2oe+PN/dIa+4sVBj6hHZBb3lIum74MfzvDcdxskOfggNNSSndz99i3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729037754; c=relaxed/simple;
	bh=EJJ3xvfa6FnujlNDwJZEiy81izxYcqBuRb+nE6hIy8k=;
	h=To:Subject:From:Message-Id:Date; b=JO9fInweoXHRBW/Cbc0Re8zwXdI2MuQiQLLmRmke7/beYVxoO0wmd4LejEKzt+BEiE/mrQmDZf1AFfh27WXd2TzuUI2KlPBjJDV+5xcLmMTyX0kZ8UuEQn9Bepc9D8fVgXHUtoXD3VpYt07nmrT8SFpQikSy6EFW717pU0faa+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N16687fH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N16687fH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C52ECC4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729037753;
	bh=EJJ3xvfa6FnujlNDwJZEiy81izxYcqBuRb+nE6hIy8k=;
	h=To:Subject:From:Date:From;
	b=N16687fHQCKj0QZLCiSg4l5k0nodiK+XpT6wSfNA56PGLS66Yqf5kAc/HHNHJ3V0q
	 EvnGfpZW1ZdjXoKSc7vmCaBFA/r85UjmfP2BidZ9vb1yBp9qxzBuenVVR7YAIy/LKU
	 ScMW8euIOUgjjyEN8FDaSgLNNxrmKAUM8ESXIxT7NEvp0/gvsyX/dwrT9zYvsSxZA3
	 NvoT5o/2iLhZarOdwSb+DgKeBouaO02rHhwsGMemjPq4/KsFKOSjkV1CWXmnkK1ECC
	 +DftOyhBteR0boVdVeOBGMdsbiRHhfxa6NoOo1HjDWBBc95GETW+w621nYyh337KPh
	 nNEE1LEitLaGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10CCD20686
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172903775367.20594.11029867104080251845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 270ebb3c32a85fd0a8a0ac4167b9a1beaaf6d18904c9648c2c279b8f1c481ed6
Date: Wed, 16 Oct 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729037753
