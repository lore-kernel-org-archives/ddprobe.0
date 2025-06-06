Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEA322370C
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749253794; cv=none; b=uw7X8wpk2q0OpgX9qz7gEItstVv4A08CZIthWuOR/jZrLqZXaO002vTl/iVWJFj+cm/HfyoUfwrZeIGxEe9WhoQROAgPhqCYnOAeO/LHK/p1/JuUt+F6yIDyeDfIgeipaFlv+wk2x8UfENRFvnzZNAo77mqsYviFv/ilCY+MQtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749253794; c=relaxed/simple;
	bh=xpSTyb61DZjRSP7LOE5jxrC05l8JXLav0LkBXVhyijM=;
	h=To:Subject:From:Message-Id:Date; b=raTpM8+JBCo9SbTvAsZEk6oLL9DbBbU2plNk85QdnG0jOIjK6KLkFnJtv6xauWJ/ps5wO8jNldiwY737Hs494Xr2SQPl68C9o985x3IKa6JYcDGVpTeoAVCdNUc/XmziZxvAq3cBR4Z3FuKsikZcLOh/6uCaRlU6J/3YVjFBLic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZ01iOw8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZ01iOw8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EDDC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749253793;
	bh=xpSTyb61DZjRSP7LOE5jxrC05l8JXLav0LkBXVhyijM=;
	h=To:Subject:From:Date:From;
	b=VZ01iOw8ddb0m4sEk2NNblotNVQ64uD1A2Rt/HLCMLY2ziIMANd87SRIA9DqfERvd
	 +awxjj5GLv8cztC+rnjogOrZ/G9sbv014YCaZ6at3pAV53Di9y3L6q7E33oDNe8KDo
	 I3Di70hm9/wsNFVBvJD271e8agbtljmHdtVbSpIPjtQfOgmzHhD8YYBk1bq5z7xGua
	 ox2QaSGZK7xe8HDBvneOF8l1kPKSwRubzCZYKLrqeuDjr5W2Q6nsuiAzkcwbqqNTPy
	 Rl5JM03wIa5kuTCnE9Mb6uzEQtnzinqDK9IgUCDCwvz3mIolpmH/LN49fw0DHZYKWU
	 ZkpMwgzefJu2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA86C61CE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174925379357.3513.4353396430642576708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a71af0fbae9b63de3ea490fb523357e21e54c3ad38d4a9191f5ecdf5a8ce54c
Date: Fri, 06 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749253793
