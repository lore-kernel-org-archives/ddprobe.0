Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4112E1A4E7B
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725313554; cv=none; b=OGmjiQUvZGscUPp2B+cP+qT71Nu09VFvH45J/O3L79ov6lG64At5hpPpk1uj0OgGCtJqNpQbx3aeGaD2dyyHuot+rMhJq35ie4dmi3GLNQRurBSsYLLekq3n0yN17iTnLJEVun6ktezZ7JPFR6UZWL05zWkb6XiWKMJndKIy+GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725313554; c=relaxed/simple;
	bh=AcNpdRHUkhDx/3JrPIpl1YW/ylGt1vqN8dmiTBV/sqE=;
	h=To:Subject:From:Message-Id:Date; b=RekpPVog5T00YdqDJlUgC1sfsGdTkuu1cKcq8oT9hMk75onzCKL5GdCFnNiarCtkehESpT//2dnXqYwjRd3PgzAIMIskp4eladU6F5BQkArKMPyWAEKrr3p03zsFDC7DuYeLi6UW9X3sRCRUomqBTfthBxtlrm3fh0kkzXL+mp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHsXxXJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHsXxXJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFEBC4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725313553;
	bh=AcNpdRHUkhDx/3JrPIpl1YW/ylGt1vqN8dmiTBV/sqE=;
	h=To:Subject:From:Date:From;
	b=nHsXxXJjM0LLoy42RBGrxUQKq/2/fim4HIHUL/cSijp2eXJfiPwVuMDM8z40ZwJCa
	 TQVOplkPfhMi99Mr2tD6WXF+mBnJL7zANXinnZhiAgWUMsUftsBNjTz610ezNup0Nm
	 xXbTgPlpAuUL7EbkHkqsFfceSBtS9xh4bKGbXxd21gTlFyLU9LV+xUA/hvpA+i9rvo
	 GM9YR1FOMAfQe00cmb/nVVJdZMkfULA7dMAq/878pxLikR3hJGblDOBb8X49HUuIJQ
	 Qe0czLfwM8iuvxbQb+dzp244co544KjjnzJ2AmBxLLQwPJP1lIkcNx2giyAjR/620b
	 sJzlVYHUwoLzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A18FCA0ED3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172531355359.30646.8991555817459686883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d6967b76d1747e2f4b3ef0085d7a6a94bcfe18f1db611d66dcdb7540553b374
Date: Mon, 02 Sep 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725313553
