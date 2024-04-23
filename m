Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E77B85274
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 22:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713910823; cv=none; b=kmeigfhJh8ZxAA/7jfjyoARsy9aibVWfuUKdROD2la3+1o4eZznyC+DzdtBMUIQIaQNwmms0w5qXESsJoVoZaPzHm8arKmUC8nT4MwteerklwcvphDIAf2Y30x6OcwcR0l+/cllzEmSc+Fknw7mvRr0TorXXMCbMlh+2q+GS4nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713910823; c=relaxed/simple;
	bh=os1s2gmLLS/rnvU/58mTWpuYZu+s+357vAy6OPjhMbk=;
	h=To:Subject:From:Message-Id:Date; b=svPg0mrB6Inl3nIMDsjD05GB4+XFyRGZtJ8syFR43P7xXG9rH3/rcrlbxiWm5sihP9aeZjq+sFjTayQV/fAyE8w4Qa3Y6xvKnRjR/78FkvezR6xAoYYttTKVnBlIaZ5Czo5E8BKjATeo0z6dfWH/WHbPhhR2+M4GOdfMqNYBdF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKEK203x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKEK203x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D67C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 22:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713910822;
	bh=os1s2gmLLS/rnvU/58mTWpuYZu+s+357vAy6OPjhMbk=;
	h=To:Subject:From:Date:From;
	b=gKEK203xlMhGbnDuTqDad5A1uxAcqWUxRljiIrqNHGAmj/MoPfcEr3UNAkEZ3WVuW
	 jRJdWFWrNidnuBVQ3m8IMF9skgofTnzF+p4nZJYNLgKSVLn0yC/levAOo17Lv15YxH
	 JBMvfyaW5jBvdoqw4JZQmshNn8tRps0rkyFAhD62ywrEWNpRxEf9/10gmn39mwqBWW
	 rU3ha7V1YTJzmmlwV35Gl1wyJ7ww45DRoJtkRfdRshUgETuvyNGQETK5V5wduh5OBN
	 H5vXgMYcdQvAhN3pMF0tr+voFustJwjlwfQwMogJJ/DgFR8w234NP7hN/WSslDEpC4
	 uvKdJFJjw/pvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCC4C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 22:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171391082277.24368.3567967944624350724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e478f896b68552d9429e76a77765aaae394154fc60f7d62cfe5fd023d2d0df5f
Date: Tue, 23 Apr 2024 22:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713910822
