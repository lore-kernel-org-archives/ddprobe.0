Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF481A6822
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 03:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782617314; cv=none; b=oXzMjWkJIfq8G4THlgr7mou8wFVPwttfqH8bOxHTngttiq4ETC0l1a8atgFaWGYBso+rN5RxzJl+FnjOEnG6NlvmxzsB8UBhUfSHpa+5s7FT0GLqe/ENTuqdpqtjA6mpGgI7uxUxtBuT8j5hqMhTtabHcO2V9Rm+mY6gLwWst6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782617314; c=relaxed/simple;
	bh=hJgbZJZ/7jrNwtiErHoepgxPER7+YWwC4eAUpDossvo=;
	h=To:Subject:From:Message-Id:Date; b=H88uUNCX67whhmuRdHwnwlbac/hyv5jv4EsSkHmucODrj9ebCmmW6pVFZ14xJOj1HF7SLid2PRsYMxDCozkb7WX1csaPzBqn4S5/V376DQX10iqsV7xvynQSKnPA2Yj6jPPsZmSQfrSuVZGq5lul5PQFCPnNioNX9Rpr1SulP7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVyv8R+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVyv8R+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D144FC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782617313;
	bh=hJgbZJZ/7jrNwtiErHoepgxPER7+YWwC4eAUpDossvo=;
	h=To:Subject:From:Date:From;
	b=HVyv8R+g4C/XRcu3wjWgnNJrE63vbe9Yhk0JWRIe/8gzhUsLpFWrAbivmZL83zsQK
	 BJxng6CmyyhR9zOUv0s3tlDwkAJF/vQ3Vh3/ZATA29BwQ2/RqaB/aETAjWUDTrLuvy
	 wI+kvfYB17ecfYl1FJk1r/6ff27y26E9bD8raPVzMINIWsYi2FH3qdOUtufGzBv2Ls
	 EtOXU/UkeWLVt1aEFwhD41+lq9lt5FodctrbSp8CEaJyRqH7Fbcwq326jOVmvWa7fl
	 qX8cZ1OzMEnlP6tNOgrPWrfdM5kL/qW86/A6YzHVZ6Y3hzwFaCbqJeTPWG+O0PJWyo
	 r8YHGlQVp0tEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF226C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178261731368.31668.6916686009951924216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b758b49ae399ff979055454e134e6eefd66b535397c92e09e54e525fe3db75
Date: Sun, 28 Jun 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782617313
