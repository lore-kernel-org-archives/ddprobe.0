Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420BC2ECD13
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750267194; cv=none; b=NfLl+VvDvvKxZIZAlh9CoAdkJ7ezXjAZnjlKo6C8IpR8+A+sQmRXpRc8fMO0VNycfCRnMFicvScSwnTRbeuQfAXnWPS6A90bL5G5YQx+cs4BL+nRfrngCUg+M3xj5Bq8g9aLox1Big1GGbG4ASD8ydKNoynvwjVhmq/VT+AfMVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750267194; c=relaxed/simple;
	bh=1RYOeGgjnaX6qjesN6PO9N/O9A4ASnyb4cNF1a3wz2M=;
	h=To:Subject:From:Message-Id:Date; b=JvtVHcIwn1Oe2xbYIGGHMy2xl564nngyGDjWhb6Jxd6XjQcH2CFkEtRgMBUEtRWkXeNjYwRZSZ2Kb9VMc8xF4Zi/vIVuUox8Y6nBtfhkG3r9aJMdl3CWIau8dVU9WjB/8FWSq5ol5YPqckHaIdp/I37hDAahUWpg3LAjQu7ODJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZ+s8kig; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZ+s8kig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3B8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750267193;
	bh=1RYOeGgjnaX6qjesN6PO9N/O9A4ASnyb4cNF1a3wz2M=;
	h=To:Subject:From:Date:From;
	b=QZ+s8kig9UsZZvvkE208xjswe9E5bw3y6ODLO2b3/i4hKAbCa9x89h6oHQiMM3vtQ
	 /WmjedyAha9w0m2l3wsw3pPBrcK63DK2fVsWcNlrN146t12fFNezIatUPK0+s+x2We
	 /NU8/n/VsEOKBNWL7k94OJQdT0lwQ/mF9rw320Jt4cIWXKp8kUP+jb0HcMvlQGsIj4
	 O42EWljkUa3EDgTfO4cr9A4Qx2J1ZIouFJ6pnIskf2AF657mQbfu68YnHzFnK30OPW
	 FqmWudN8ky+XsT0bRBOA//QKyizwpVz+8b8iW1ikIhbR0QKh1Qq68yOCz4w2jDOk9v
	 bqPao6wIN5zaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FDCC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175026719359.14906.2043787392656055520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 743299fccc7b30133a86822273fbd609970c18a1cf980f2d4fad229d074aae7c
Date: Wed, 18 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750267193
