Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F3F36C9C2
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774179894; cv=none; b=eqo0jbCllKGSExyT3YV4QWnx7HmEE/ARKiaai11WYwe3gQMOMg0PLzGMD3gCNR2bQcZF+dbA1rjvM9ornSc0C+IFwgLzOdYtM7xHxCQZOTojPcU7tjoaFSOL4YfuID5khLFrgA7Kd3WnvmhO4y/TnVwfq0/dBpTebu2zdUFrqlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774179894; c=relaxed/simple;
	bh=mVY920OWogYQhqKmx+SdEqgKt2TKjWd974rmcfioQ6U=;
	h=To:Subject:From:Message-Id:Date; b=g8vy9hnd6tiLNYt7qwdFAmHETPrvy8/GuRIvnWQwWsYw+Pu/LK0f2ExtWGOengzsF4Su4t077SZqTv/C182dNR7JAq/EZ7D/6hrU3Za/ITl7RuqrkF9VSt2Qgc7RfYhgSpyUBCDZe0k6csp2RXzDwCC8F5azXazjuHgFOnI8mrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lAp0qYc6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lAp0qYc6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB87CC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774179893;
	bh=mVY920OWogYQhqKmx+SdEqgKt2TKjWd974rmcfioQ6U=;
	h=To:Subject:From:Date:From;
	b=lAp0qYc64PZysmtgW1+GlxstvTJWB7D/McnKe8SuLnHT0a2RW9XD2OpNIZwUHX7UW
	 x7Y8LsrUrkOjQiAzCxGgQifRXXEmz7+RgdqB6jPJOuuLD3NnnR+xYycnbnGfpZXVfH
	 EXK+R77MWOGzxqjeJNKMIrnXdkUmoGLsipVBD5S9NNRQE8tx6flZxydqQhe43zVMpF
	 Uo8rS82P/tImFUTh3s3k3SH2+4Njvor1EveT1IefLduDVoOS2w70Fs8JM8O+1TKNss
	 R6t/6kieqKj76LVRMbiQv9jw7P9NwTSQlMH/DeiLAp6kKz8MDB8Moa383fCV1OIewo
	 gIph3RbFGAKMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9767FFC72C2
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177417989358.4646.9970743196874973898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a517fb262379fbc414c76a7517c70c6e46a7958624af050709497eedeb8bc25
Date: Sun, 22 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774179893
