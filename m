Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139AB3603D8
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 07:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782113794; cv=none; b=pHuOeKb9zlWE6smZkdqFILHEg3iEmgNVzHJGpgdbYEQf9jbN+HHLDvWag0BpK2O3QEuH+Id76d8uyYPS6sqCHaP+WhUdHYLW5MgKg4GRDfjB+u6zjZZ7oxfk9j18tUsbstehF5UPlPOkyo96jE49HS270YY9fI5wrqvqvI110u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782113794; c=relaxed/simple;
	bh=c/fwZc+3NQFyb7nFEk0dleMp9YP2gTNTUeUHeuvoVm0=;
	h=To:Subject:From:Message-Id:Date; b=EfoorSgZ11GjlbDemV7DJFvpJirCrf7lAMO7xq1+0G6WQhBAUW1g9EMijhCLjO9kQef0ISWMmY47GVrHBLfn0QrEsa7+knAhZDlghS73vMFSDZLv4oBfzK5nFc6xRHgXe+cTllUdeapWrTq/de4cWnXC12y4yIykiqB/TopTALs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvpI3EMI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvpI3EMI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C49B6C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 07:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782113793;
	bh=c/fwZc+3NQFyb7nFEk0dleMp9YP2gTNTUeUHeuvoVm0=;
	h=To:Subject:From:Date:From;
	b=nvpI3EMIwrLybf9H0UxjqCE4PaKMhkGvfzI17cTlT2+EaorAthUTBTpHNhV+9ok+4
	 4UI0wzHQWBI8CvfI4eN+HZ5GVrWAuImFJh1UxKJPpmHCLInLg7yZTg8BrXqGivbiar
	 OmmTIvssDhURTM5bDaI8+bQKvSJdbrMdjCgUCP1cLnI0wUFuC6eHa1ZB97Gi4CITgK
	 mTPUsB/lhbL8TL/ZbAWm2NdzGZM3pzvhU9ldQNKTPg91AsAcv51SUx8VRjdEN0yzFI
	 ijTgSUXOpf57qy6fqhL9EgRbYEGNwjFAvtgz/2dN8mEC6Pq3G/Y4RMS5Tfeu2UosC0
	 d/zOzbFZjjveA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D2DCDB46B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 07:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178211379368.14975.3774315120386055567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61e803005319813c428561947129e0fa6c1c6f4b1dbc3189d81b1e974480b318
Date: Mon, 22 Jun 2026 07:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782113793
