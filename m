Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 678D61850B4
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 22:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718405303; cv=none; b=aNMS4psQqIOz03lEzb597SMa0wB75dGvhozAZDy9IC/Qyt7AdQ13TWOgSXWTNCUM5FZYWM78p0YV9YtqW6HOHeGooonqjgi7Qa6LGQImqyQtMrwfAbeoDABcsiWLQ2R39fwwWG0rEHLPsDC+QH/9K4nY6ikHq7T0DFKbfEmm+FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718405303; c=relaxed/simple;
	bh=A1cu1762bmFi5bwVFk4+ocm+grf7PvXdqUmif3WlDoA=;
	h=To:Subject:From:Message-Id:Date; b=T1Ej+o414AP7Yk/DpoTmaGGaQ5vPb6tt8Tb3R6C6JM/2bd5RLjdIyzRoF5tJnHmOokKy8nO8No5c82oPF+y88d8Viz75sbZwBqNq22grvryYZPz/qIPiOSNcUsWxBfMjAT5oZ1qVOm2G4R6TewqS0YtWs6FN25rTABQkU1rJf04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8suKg4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8suKg4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9CB9C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 22:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718405302;
	bh=A1cu1762bmFi5bwVFk4+ocm+grf7PvXdqUmif3WlDoA=;
	h=To:Subject:From:Date:From;
	b=p8suKg4vd4XfLxldQb1gl7wX3vCcsHvEf14SP3m6C1qGgeRfU6S4NLFhh8ClpqeIK
	 Q9GODxMGoN65cHQY480VsHP/Lify1aaEE0TXk3TdNsDaL4NoC4l06v02z5Rid4lQ1w
	 gjyoKuqqvK5bFCuMw+0eFRcs6/P47Z/imvRXwS2M+LdQD8cglmDaLeJ2UTECWiwBCX
	 AVDhiVcIKOhi78zUOq3rd6ouk8V7AjC1X3Q4NaPesyRjY/Ok14cj/l+VlCAb8GR4VG
	 pQJ9o/BmqMxQw7gztiqxpv8BmMp89jK17jD6i50X/tNb4lq64F6FV0KF1UaymZNfgV
	 zM140ivNyGuKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C804FC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 22:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171840530279.22317.12156929092174485956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffd1e4c0636872913ce9335670ed4e23907ba0daf93145ade8fd9e5a676f43ce
Date: Fri, 14 Jun 2024 22:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718405302
