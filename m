Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5030A372680
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788264034; cv=none; b=f1ZoI1MX0vSBNrjhaM8wnMIOxYCSfA48kIOV/UKMvm5S8hw9hH0anH5E9A+S1L0ZzyymhrSXEbWJwtUSZOm1WtLfeGZT1vGzQeK2eK4+HHrmiOLtgjhD+B+Nm29xlpy/5OTX29kiM7caClpOE4aHBYF55V5I5tq8Jipw6XcqCZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788264034; c=relaxed/simple;
	bh=Zw9VXhCtkmFCgGCqUwy3I+vAghag/gsTVHln+TIakrk=;
	h=To:Subject:From:Message-Id:Date; b=E1gkPtFxhDwpspeBJNKglgrIC5uUcDz3JrgzOkVxDST9knw7t4hT5QzFZH+jx4jUNqPVHEEmZU45kFuA6pShW0JVePLTWRIC3JssIH1xx6izMMYN7NreAQDkKWq90YV9JbEivhCX5hE/uUCTPiitSVBPoUmw0yebzLRUXg+SBJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CSEhDJIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CSEhDJIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7804C2BCF7
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788264033;
	bh=Zw9VXhCtkmFCgGCqUwy3I+vAghag/gsTVHln+TIakrk=;
	h=To:Subject:From:Date:From;
	b=CSEhDJIrQc335XhicvWYAZdaiOdaT12/I/HScZ0ODpZriLFpedRt6sb4WZxYGh/LG
	 1OWangoRR2xs8VLnj8LJWsKMwk8WGK78+G9708GtSSH6ZccwFWF8W73pW4pLF4pCHE
	 EnrHpLHFMprYkEK3hg6vInzjv1gHXlXccO0sXxt4eOE2CQbvUYBF3uie2omOVSrCJh
	 zBUDUKdOxp1zcslhZEKlD0z9AjKupXHLMC3Vr9bgt3NVBn3ZvY0CWO9LGvikJ54D3W
	 yEQzLWVZv0HyOOCABd6wlolTLQ8fT12JxC6m3Sn348BFojKFeHUQgHqrvzjfQdGaaQ
	 Rjyqvlt83Gnew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA92C624CE
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178826403368.24041.9348600471694954962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7e83c84a563005a9da5c24634cfcb4f0c21fb42781efc07bcd4cd01276f3ac0
Date: Tue, 01 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788264033
