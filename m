Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217C4234994
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 01:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780708474; cv=none; b=cLikMH+hJkbqwfEynlndqBOyomaQIZ8V6sFd02QAI0wKwDEpHH56Ihc0vOSdBqsZYnRxn+dmsptcSEmyp9sBG414tpKnCEHnPEkUxvZooQE5P/K2kk5excuT0SC/KbQcMOVUrkeGjeZH4JQllkbNYMRj7CWv9qA3mtjLdc3Oh4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780708474; c=relaxed/simple;
	bh=aW+cGqspYH/bho9cXi2vdrRzT03fpo9RpvlXGMwLgBc=;
	h=To:Subject:From:Message-Id:Date; b=gZSwuxrkQkReRrJM1fkjGB7CI9N6nE1nqypK4eyFTUIkA+LGgDE313pL2EHrrzctTIn0PQNJCAi+/y5vDVx5J8gvs+vcyeqEvbFuupSw85/adz/PlHRZa9TN8wwReBDz51eliEiJMN1KEBAQ0AseoT2olrBv1Z0bvG1scRx//OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aau1C7JT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aau1C7JT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3905C2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 01:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780708473;
	bh=aW+cGqspYH/bho9cXi2vdrRzT03fpo9RpvlXGMwLgBc=;
	h=To:Subject:From:Date:From;
	b=aau1C7JT28CgaDlXOMW8kvoCvoVvuxYnoSJeYSTRPHqfV8wwRol8vHHuBevHK33Y+
	 l0MoI+sMGkH0iUa6LhzQTAdPbVnoJPDu1Rw92R3l2McqLzcS1mqtlLSgu9ZONthS/E
	 HtRDMge9xgq0HJylkpwPnhH5QRIePdPl6oi9Zq019an9OCDFIYzOk0izqX3lHMQGWX
	 iUaUsfmvmfOlipsLlmFIMIMLqzRFjLIkZqp+I8Lo0nQVAgMxzmwxjiThk5RQsyP8yr
	 3XgQXxuQE7QoJXsLeSwy5jiAUPYRUuOkNHwfY5iUQon+1TAiHqCGH6BlXtLNecX3om
	 Gqepw24YYkAgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA745CD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 01:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178070847369.19067.881346385437601292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da7e1dcca732ccbe02e56cf0a42d61aafa3a7b0f9f89207c8974f01115658703
Date: Sat, 06 Jun 2026 01:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780708473
