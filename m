Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13629331204
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771588494; cv=none; b=Ryf4PbSzrHHPcZdGwCv0PhlA1phPcJSTLsYzWG3XVCOxw05n60zq9gjyjmGW2juByb5BPhZofnvY5u+NZOwTUM6vtvGPE704HMeHhqlmrML2DQfPStiCodKuK3VHA8wxDUBIw5c0TcLqfsyT4CPTJm4+i2AsWwpz9jl5Rw5ps6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771588494; c=relaxed/simple;
	bh=rfc72UB2rqEHoInILxEakcy+Lt4ahY+nuOF5g0w1jHs=;
	h=To:Subject:From:Message-Id:Date; b=VYiNnPpYLoLIxzc/a9ggbKoIbUQgofL6/ni+jK/lguuu0DW89DLcY04uCvQT1fA9GqYi/+9RttVnzUgSJWMSkuZVPYua+qSbElNWwhNu3DviNUIPXyMx4qgW9SIe1H+5hdNugwo0QaWUNbY00/mqxZDK1L4WToeUuUmVlv+sBS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kD5xVZ3O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kD5xVZ3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA66C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771588493;
	bh=rfc72UB2rqEHoInILxEakcy+Lt4ahY+nuOF5g0w1jHs=;
	h=To:Subject:From:Date:From;
	b=kD5xVZ3Os/Y7MGPH9DfwdBJ1ONdXvKx74QULzykfcaID1rWLxVW/UUCS3/rJpaUzG
	 35iX6DZa2hPNG3JCwZ6d7O6uAg+lShY5sk6wL4GJH3t2ivBE1qy3uaYyp8VP2Rhtzz
	 vcwgGGa8y9hAy9KkxuT1qfHUmj5OQcSKZJn0nnWscNH2FI5EBh1D/Z7dUPzoLpTLGr
	 LVoVj/87/JDfWZhfFsp6/UdlLVlFC7PJPavDFQ+EkuZfpa/bSIYQ8Q8J50m1s5qrDq
	 xDHOWOWndq7VS4mkhZONNaX6M4n/XtOZuwRAHwRsEJuFLVvOWc9U0LNJwEs3FIi+Gh
	 HXNYwD/mL7vqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A08CC55ABC
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177158849361.15302.4990290651787682379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 333b375f4ca2f9f6dc340744fa639fb7e137fe3334946b7b2db42ee9d3a84bbc
Date: Fri, 20 Feb 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771588493
