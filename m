Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C19E210FF
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 05:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718256503; cv=none; b=E8v0yhdqH3pGi2+lif1dbgbT9kR0yNuYvRyfF9I/CaxmSI2nMz5U0af66T8EcxaMzpU+34LE5tyHsJaNZiCxKm4/7KM9GAgfQMRhERa0og6/wODjyJqy11mgyNCC10M2lTr4OIqBFJ2fcqsjaiwg0DCr/GWkkW/Zs9ycdaNxGX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718256503; c=relaxed/simple;
	bh=VxreKbOkcyLORuz6k6ATBB3MY3X1pSRbwepoLIgeDPc=;
	h=To:Subject:From:Message-Id:Date; b=sahHTj5unTlttqb+UheQe0sxqGWgBE9R9DV9v8k+qPZ11lHBohzJdPpgexZK++K1gOo97z3UQOpcTB+yULGKHm8bjljeYRCrgVn64SGJl9SmDGEDVQ1aDk2tbLYNfFmQSkHbIPHO6vI2yyfz97KOIA4//FLb4S2S8Pd+pzF+VF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMB8GPyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMB8GPyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB63BC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 05:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718256502;
	bh=VxreKbOkcyLORuz6k6ATBB3MY3X1pSRbwepoLIgeDPc=;
	h=To:Subject:From:Date:From;
	b=jMB8GPyK2C4iUWX0QCAUIhBjufT1kHhKWR3jcwp4XLeSXNqcHOYSmpoVEujOyWD3Y
	 8r1mH6s1FaRQmIZuiy1e/UnzXa9FbLFHdpeekLZ5U5v1cWErqMC4Tlj0f4XMk31qmv
	 CHGdXzMZ+6Es9WM4cWcVmy4dhaHcrDDvWr4bjE5rrpOV47FGrPc82U8fBFgWj1BSrf
	 iIUyXFhJD789Qo7wZHYrYB1h9KbmD2+7da3YlTL+9WDxzxxFMtBdqaXqLt/UxDFEAR
	 UFajFut4MxgtiYOmlk47qOHWGziC9fhNqEYvEJxqXTiTlyFSuoRAs6bk0Wv8fgpx5U
	 6CAmJ1LKiFTfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C62E7C27C6E
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 05:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171825650280.9492.16457747338033390307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c9852732ee52cdceb8e7cbcd482437f9388bc16c36d29eb84873c805573d334
Date: Thu, 13 Jun 2024 05:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718256502
