Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D743D561
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734948354; cv=none; b=UNKmqrKTLyoHvkrMJyY4mtSnHQ8hSbWlE662CkIzdfNhUG+rT2jBdSg4jd9Ca+42SUjEi4tfP6LOK1e0dJ4KV0+xETMUb3tAbeLaLMjswnrD8GGI8EdXZZ69WMbLM+tcQADaxASeUh+a6eHCjmlVvNcIFagIGR1pWPOFYQIMy/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734948354; c=relaxed/simple;
	bh=mOEAcm6lOZf9c/zylYeds/WRGe5T1ZAfiwnEjcWuYg0=;
	h=To:Subject:From:Message-Id:Date; b=fJRIqnVDfa7zN05fugYNrabMZbYkmnjr/XyrSlktH8gLV0VPVGGYjr7I9dxrYBxPB66/4MuurzN0LhGf3edz2MpyODKmSaf33plhY/eCbR2Pyyj8tNfPpsdcJf3YqqxeXuz+8AzQ1uVstln5AzMO8ev5jUwjO1JPFupViNcHcq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTrxiccs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTrxiccs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C06ADC4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734948353;
	bh=mOEAcm6lOZf9c/zylYeds/WRGe5T1ZAfiwnEjcWuYg0=;
	h=To:Subject:From:Date:From;
	b=rTrxiccsjgW4722NzPjRZvrS/xke9P7sO72KW2ikzZZiKDjdD9tjKc8CzSS/rl0dA
	 xB05XrBHv/74/oBCrs70iBheTbADtrHxe1oi5gL+CgoKAwct5fln/CDPa7Eo5WbD68
	 4MMGKeK0Ty4UR9JKA8rjqP3TbpbFhURXGYZ0mSI0++JJFQFfCXgDachWetaTQ6GDEE
	 HNdCfKlvU1MdWmvnZMtSQKAVDdr+yQFOe1c/V4rOKNnTG97b/MN5ClqDGVrWVMUQ0U
	 Zipn+QI4or9nbCPOS/YeJZnwGyrlx4lYImlAJhP17aLLK1HTzdaZOOqf7cMT5NVwL2
	 9IC6MMSuFJY2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7104E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173494835367.26310.11022708921005757802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6898ecb85be42ad09406631382759cb89350b4d45581b64daf0bb86314c6f4c8
Date: Mon, 23 Dec 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734948353
