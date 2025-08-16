Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6931865FA
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755380994; cv=none; b=EtMBdG0FRQ1F5sDTa1xfZWjJtfwhfRt2p3OWAdqXDxoy4fmQ8bGPqUP1y+u7qWRJ9RVfiphQ0sjk9F9AVnxKe68sJdBSh8gx+ZT0TkzdcFLBVBryQwli1KMbuxdyYO4sIS5GIsP4vfOU6YPRMnTHu9SHY4gwT/lN2EX5ysbuW6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755380994; c=relaxed/simple;
	bh=rS5rod19xST5AzlZ1cBv1JPOQME8amqMZX5H/O9Kluo=;
	h=To:Subject:From:Message-Id:Date; b=B7WfdQM7ipiaRt4oZDXo93keuRWW7TjUGglusHWZMQF7YYvNQf3ZpphZPmnR+ZH60cy0vMvmvlVTfacxezJo1PufQD2yMB2QuJybmDko22mAzrFxMukRegqmYXgTQE5ozlBHmz4G62dS3hA7I8AMY0VmSdMLUdkewoDe8AcHGeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYWWQEcV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYWWQEcV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA304C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755380993;
	bh=rS5rod19xST5AzlZ1cBv1JPOQME8amqMZX5H/O9Kluo=;
	h=To:Subject:From:Date:From;
	b=jYWWQEcVOzkoUPQh45mhyVj4A4DHKzDZ9ZpCWgOHqupEEbdDX+jUEzNnPbc2/uuQ8
	 qWXhA/4L43mOQbFZn9TwVRkInLGbE9BZAfoRN3xk1UaNnqBCf7Qcy6fPsWYJIC+RSu
	 Tohb8Goiy9lqwURbf/FSjrzMaFIs79ufyegeuPoCI76uyNyUYj6rGqfWSuDdvQpD0k
	 95OVqTMp5Do/jc4Gh2oIribdmCbGSyROjikVDTOlO0HjatPwPKP9V1j7SVAq9T3fzL
	 C1dI3R2vICn0Mp4JA40IgDesWBdWvFQtxeQmPljd8o/fpxIbUoQdRXkqWSxlenJ8Uo
	 VsEkcSzY1D25Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9628ACA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175538099359.23342.6001086883452807021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c99f91ced823c515cb53d36f1ec31b9ed6189e58bd8793c1ee3eddcf48c5668
Date: Sat, 16 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755380993
