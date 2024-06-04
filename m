Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579CF13CFA3
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 14:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717511783; cv=none; b=BoCRft1ESCAuYRX/avFKZSoD0424Mz9e7IweOwsA0JgmyGWLexQ23Wh+T51AWaO5rAk+m6Y5+xUeOo2ZIgefZrmpErIl5WwHAkI1PXf7ckUPG6FAhkfC6G+vLA/8GgxvWwOdAtvTKHmbF65EEU1hDgcZ8zKuxwZUJ8caUsRrJ/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717511783; c=relaxed/simple;
	bh=79l4zZywfY9yThGpHOR+EhuopQChgO/qrvW3wPtomRw=;
	h=To:Subject:From:Message-Id:Date; b=FNYPDm4HZi4WCfmng4Ri0+dWUVEbaTv+I2+ZiE55SROOZDKFZVH6PpK+UWYl8QZE+rotfndjwL/ZdoTKkZyCV7RXNqj0bhLia/YLEYKerTgwLN8OLH1TZsD24dGqWjHbeZehw3GwbU6xAR9TX6TS7qPM+eflMbzanNDBchHk2Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbxtTmWw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbxtTmWw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC611C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 14:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717511782;
	bh=79l4zZywfY9yThGpHOR+EhuopQChgO/qrvW3wPtomRw=;
	h=To:Subject:From:Date:From;
	b=XbxtTmWwftsEjY3SE9jhtMcOPEzsJkuRhrfR6yaVW0Xa5J7G1Db6zc98gZuuNELB/
	 scmnJG84+yQ+38QUfDVnBpY19aV5ZPUfIG3aqA27YRUJxZS3PpYc+8GKdyP6F+vYzc
	 8QFOlXW3oiMdb18GA+nONhqIsLK7bjRD0FecST9gfYthiJdA+whyueN7KKZTCNQqTT
	 S8DcQsG45esobi09HxrJ8UdGvjZRA/NPhz43aJVV595isF0ir5xSEJwHRiyUeBd9ab
	 e5i7Kv0n9zvgjYHGo3dmtWR9+qP5S6UAhgZwDno/06neBZLclL6mNz3Lhry0f9T1ls
	 UMjY6rq9gV2Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5895C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 14:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171751178279.18270.5610261753001183893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb8d8000bfa2c8c007d564d5a991a7c749076256eae45bb13af82ef5473deed4
Date: Tue, 04 Jun 2024 14:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717511782
