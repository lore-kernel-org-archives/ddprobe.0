Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF29582BAD
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792173034; cv=none; b=VoROuKtb5PGp28A0gwME3QDam8p+ETDHaPSmcWgdgFpMTi2/ND4V2XwVnoouzTU3ZwK3YcdhYjBfMSw8cUPMrXfBOApJCh4N/pgKapCeSE5N8lXzB7utc0jyr+fjkL0V6bMkr+vWIpW8tpMD+AY+5k9dOM6ynnzaLpYYNXgTBDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792173034; c=relaxed/simple;
	bh=v/ayHyoTYRE+Vz29tS/eIeIvuKvILVzgp9O6qsdrZMM=;
	h=To:Subject:From:Message-Id:Date; b=Fvi3siVR7pyq684/UHvfUOx334CiLJ5/tbKQG7hOqHrz8GOnXtG1h+p5rwY1VdVY34khsaGCPr5EQKYj8ERxdkEzr8bkFmqzqi2oXTUw8h6glgxaZojNvTGkjuWfh7bS2wMfZuONkLczyZaE3520QdEahFnoR6XGlpJD7KxrF9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUR/UZzi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUR/UZzi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D6BC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792173033;
	bh=v/ayHyoTYRE+Vz29tS/eIeIvuKvILVzgp9O6qsdrZMM=;
	h=To:Subject:From:Date:From;
	b=UUR/UZziwiS254qO4BgWr4NGWWNqrtHtnV3IgfZ/0tRuXl0uwW/bDFm1CAWEqQr5M
	 35dSkC/MWpCVbD4NNw4j1VeIazvz0DW7g7VuI9O73eKcitDg9WvnMni4eJz5qpYtUc
	 Ewe7oxk10eOdV3PZW76qqwQRLQ4+JOCD9+XbDYeHv1cH6hcbLFfeeVnO+XJmT9BgJD
	 EV6hPU0xuNnUzczM+V3NsCrYt6oxwW6k6DtUyUGMoS7NLx0HawxL2/iJyZkdAT3xYQ
	 0RwT+O7MtvUJ0CHklrepopk2Sov5QZrZ2kTMdEg4U82mlXOL91Z7jFmxySEG0pxTCi
	 CvdeZ8ocov1XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD045CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179217303369.21137.13929731440522530624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51efd08f0a96d4bec5a445ef1e2ab482305b8454778908978f6443067c79e2b7
Date: Fri, 16 Oct 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792173033
