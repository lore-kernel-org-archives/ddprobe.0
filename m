Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367301ACECF
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742393994; cv=none; b=YLXfLnB67L8irX6Vgxa4v2OiuMZX12GbS7O9fn0NnXO9qSjgyaID/XA2WkEKKQ3elNgTo2j/AY45GUdsoPdlen+UYwKyAFbKKhwzcf4cKl4Kby00ezdpxZFyakaMD/qNjTq6e6GppWZuRU/PbO5QQdiOrOwtpQuwoIuUDqsLN/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742393994; c=relaxed/simple;
	bh=KeuNgFZVUw9MaMqcbszvZ61xbVdq2b37XECZ0H+Ppvg=;
	h=To:Subject:From:Message-Id:Date; b=skJzD/8ajvwCKbDwywFip9rjH8ixTTmT8KtSzX1dtEmUK+IpuXdxiD8o7coNSQy9zLQQ761cgqnkeYf8IMFpDzwCfiQ54E9I5AxKB2103ObwHP7d96uwDCWz6TqHme/3rmmvI9e3CkVn2Xsn6zQwNaZytZuCUn+liNQPORZ4r2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBbvgyf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBbvgyf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A906CC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742393993;
	bh=KeuNgFZVUw9MaMqcbszvZ61xbVdq2b37XECZ0H+Ppvg=;
	h=To:Subject:From:Date:From;
	b=PBbvgyf5DT3dA6tZwxibczVyQUwISitCwop//MHEWtk6TlZ/inUSjeheVIxXifLpk
	 mrheQQmEWwDSGS+gvuRl5nyXf5qRPPpm+OqYljAxHmJKK05xpr0QrCMHhg7oD8E3t9
	 2RoxL5mawy7heDP5StogwEwz5Z8neWWtOSVnkNhjrmFcxRe4OLJPHj00crRDEQVrVi
	 Mh0nEfr1S5adwmoQDiZbdhklCvLJlBFLwPRaX4CvbI143L3MkYriizHEBo68DGdpXK
	 F4x9rvPrhIzDppJxHBLf4y5Ddb2xAAG74LKq/TJt6CTSrT58nHR1R1xJIXD89Kt4T9
	 XurrjeAbnutUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93827C35FFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174239399359.20174.8726665541808039786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d0ad3145abf3787a2b3bb652fff5cad6bd2a3922ce44beb6eef596252f21f1
Date: Wed, 19 Mar 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742393993
