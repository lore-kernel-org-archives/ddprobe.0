Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A65323AD
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744878594; cv=none; b=LFhzJRF+gtAbj97qWqFV4Njm0reG8cRgLIwcVZ+VU1IPOGYRzBFw24BAJl9Zg3VgP5zmUWqUnhThWfOXG51l++3uCuihgfIGlC1LKAfLj++YcZDGDWm+tCRAC+LN0+7VWTXNyWv8pcCD75cn8fPCXFMHhmzlZ5mwU6Qn9kRLdrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744878594; c=relaxed/simple;
	bh=kSOyY3mKyFy+0yCd1ct3aYAxP9zuydGV9MODrrs1d+I=;
	h=To:Subject:From:Message-Id:Date; b=WMzasJiXZKiinggP9KuqwtZeQdkhOgoOu3pq2QXnRgKGo0sxDSBkLUtw5LSM4AAUcdbBUY2WV4d6AzNphXz4FQXAEMYISKmBXGEuoBsgzh/uBsTeaAb+QzjECQRPLu1k3tsEv7agK6tCUtVIvgJ2u3FnvDRTW76sObmFVUnEwu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJjBUG9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJjBUG9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A837FC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744878593;
	bh=kSOyY3mKyFy+0yCd1ct3aYAxP9zuydGV9MODrrs1d+I=;
	h=To:Subject:From:Date:From;
	b=IJjBUG9ITgI7cqUX9MOqunzCL1Im0E5h1KrtDhUQm7EFXbg4zIjQggxeri63c7Uvp
	 8dWhZ3WV6zGAwf7u3JpVKU74krPRGqJ1G0QQ3BlRn2jDaj/XwdAi8aTCuU5kSpbtC+
	 jHhRqnTax1/iVs812BI0HR9L7VLqGqywEIbCLq7nzC6pf7zKUGjlQhGKNDqdRRpm9z
	 GJC1BKJQhpCflNuIxHlXBixCdhD7EASXnBkaIoBPC1x3FpcEJ+f0EcC6NItV7UaqRh
	 25G6OK+Kaph+hCM3ayY1lLFgBCNXJSWT21ZOERBxpeHhnGzmBwz14xDkm0DUEUOpSn
	 mhI0xDepZtcGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9545CC369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174487859360.20174.144877650077127889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75751d3ebecc7f675471a048af6a0a6cdbf677aa66f1e527c4ef20b93496ab21
Date: Thu, 17 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744878593
