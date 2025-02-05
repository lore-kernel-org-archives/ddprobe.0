Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE06E214214
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738788953; cv=none; b=ibTnFSa9Fpb0bMChnVWhEab5rzjqnL/QtXMn3K85SQQp3X9pvEWsWLZdBFn2pqtOgdxhIURB8gYtEFfdGsHTeDz1dWm9h8+zKNX9qgRTdIMHVVHC+t126jPgrneXGGAFiMMRjYfcoJPGRa4E4cuyX+CAPNsWF2zVWLazIsXaFCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738788953; c=relaxed/simple;
	bh=fROvdIfc0uYEgyDJigFfSGU2D6BMUt2Dl/TuizSsWPE=;
	h=To:Subject:From:Message-Id:Date; b=PWvycgXj/wPYMVjL7mNvKNq8ZXVjixNTygRA16i2mF8bBVSRsgRIiCOMRG9OS2uj8HnJ1SOgcg4SOuC4iEB+5m92cirUo9gpqosjH0d8edC0K0uVTcECsfxM7FiZBYajUbVmBOSzG3WzAWw1fmBM7eZ2Wu1+tmAk4iPwWzjgoa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxshyCog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxshyCog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF6FC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738788953;
	bh=fROvdIfc0uYEgyDJigFfSGU2D6BMUt2Dl/TuizSsWPE=;
	h=To:Subject:From:Date:From;
	b=NxshyCogTl9m2AzEdDhZ8Nq9VoZZ1jfyfAvA7qjxjVEPy6WQXyObc3hLnkCkL9Miy
	 OlhEe2H8YrHm4xaSzWu7MzeoxHhGvC9dVqXON1UApz3I/E3mEDPD2x8WO4L+6LdbYA
	 FWHgB+EBmR56Q18sBo7y9OnOmz0JVIhBB4Q27hvZKOW5dphYAW0g+7vjxErUE5/ocz
	 T3qW65KavdeWa3aIYSS+y8lbvBImZa6DLQNVLCADCQg7S8rQ+tW/2kBqaAQ6k8j3NC
	 n81xXnHIHb+QzYV9VbGwsoJCEwrlR1wq/40WDq7WRLdmz1jWo7bS2yL90UmKkJNzO7
	 L5xenWOj9UZqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BAAC02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173878895361.1556.9215675721086402423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 347f94d8ba27d5cda44415c249ecf5d796d302ed570d2b1ccaec6644e7551345
Date: Wed, 05 Feb 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738788953
