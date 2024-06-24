Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDDF79E1
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 03:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719199343; cv=none; b=PZ59HEDT2jEg7yoylVD5l1zU3aOtdBa91tnEYv3smxtSzNvk6860s7OXPvzgPnegcBkbDFNdxjsfzWNA1v7QEznjA39/+ZLHnKOXUDdnghFGss0Tptez0hpROWAopYhnLWeoZhfQlv9s/BEYNO0HUbF/QNe9X6tpA8PM5TMzrok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719199343; c=relaxed/simple;
	bh=WdM22ivTcWS1JrVkCBlvzthbKbE5F/OHR9JnIu8nRZs=;
	h=To:Subject:From:Message-Id:Date; b=gCO01gQ2Hi6pP2RqsR2kNuMvzC1SoEGZ2grmELYj+G5fx+bBfBTIReZEZR3I7o+b3VvypF/D1CjSYVbMy8nqcUfCEErpdEyyUqH7NWeb4VHWyqBU4xzSQ/CcTUeoEbWtt9I9tGzh3gtaFb58JlKfHq6u2eXIxrIFCBypvSyUVY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofWILcDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofWILcDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE0F9C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 03:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719199342;
	bh=WdM22ivTcWS1JrVkCBlvzthbKbE5F/OHR9JnIu8nRZs=;
	h=To:Subject:From:Date:From;
	b=ofWILcDdJOAAFbx6w1Cr7uJ9p4eP7KnJTfj7+rY3N+/nzVRqjc750knB6h5kUA7G7
	 hmsU2dZwfwVwJpSnE506GeclCuXrtJ5DdMHvg/20K8OhZ9Z0hhuP3priZbJiD8fhpg
	 3/1HjMPhbJpRDjpvEj5ROWfyQ2LPUNKJvQjdS65FeL7bB9Irntb6AZzv8mwoiaUOjx
	 p/SahC/tBUPrrQ1vrV+HGLy+fGqVneIul642CDdYowCX5swwipgbCHgAM5p1R2TDyS
	 GdG1r2vXgvUK0GuY8oSAYovudbrLw8Wlal5FEgBuY1bwbd3KPbjZxtF41M//FmIn7h
	 0W5S3taEu/OYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C69B3C2BBCA
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 03:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171919934279.9064.2716823273900873554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71c497841bba2ab84e9eab6495868064e26bfd14403d452e6d2fcf67b90b27d5
Date: Mon, 24 Jun 2024 03:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719199342
