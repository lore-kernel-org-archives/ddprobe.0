Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314981D515B
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736228754; cv=none; b=XGbUj54GorzszECXusI/6JwZWGwC/TlTAk/L8J4iQ3rdbRLl+0QXlqz7pz0lfDdRn2uGZdHr0I/28jyOYYJ1Dx6RrIBdtFgv+FNJ1mXtvz8NFsDSkyJjbLaQv2YcH5U3kdxR1zY4jbPne07rHhHY+93rqz1Fsc+eYz4mY+yTs6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736228754; c=relaxed/simple;
	bh=0fSVneAw50cKOd+B082vYddWkGT+vyQjkMwFDcahiZU=;
	h=To:Subject:From:Message-Id:Date; b=tyUe7FHWQHtNsgff8dP0+/z+e7lPqW1ae0YsQaJ8Ml0M4Mn+E8Ct9OLBNrg0SnEEOVVDq3NX46Naw3sqVSTfXE2fBukL8AoV77g1M6QhOqJ4P4KmpeCeBNgNwAa1xJ5s+PujUQjb6WtzD24XRPs8v/pRCWPCWmwKa78tUKNr/H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXCCTsK4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXCCTsK4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B102BC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736228753;
	bh=0fSVneAw50cKOd+B082vYddWkGT+vyQjkMwFDcahiZU=;
	h=To:Subject:From:Date:From;
	b=QXCCTsK49Byo74O2LwGb4n7MLIQScGU6jOR28qkVmc4CSFIEnWh2s3EVvu9jlleW2
	 4omQgqLXN4YkWZLPg66Avn6Os0SYra/jUoLb2oFHur0fF4dWtnKDy7XU0IEyiqZWj2
	 e5VEH8o3mWVwbgT/lMDYMSFcg0Yq67Sro0VHo5lFeAzHqNw6icsh06KDqhjr+HIX5L
	 RJ3QeTBM4xm42jMkwSrNX8AwsocqoHvjIrRWcGsVUbpM11G/QzZKyjdXHyV6CmLmbg
	 g/cb0QWdTky6fu7tBR0LNfST/dRjPVv9ucgZrPFN0MjIkSXoszRw2b2uSUkecU4od5
	 aVil8lr9XPA9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAC3E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173622875362.30419.3177834202094851903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 835cdf6817a94e219928858f26e9291f8e4e4cbcde3f42d22a1c59193c399a93
Date: Tue, 07 Jan 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736228753
