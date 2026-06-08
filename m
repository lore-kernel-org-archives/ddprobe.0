Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2552D3BE16F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 10:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780913674; cv=none; b=nNMRL98C7yrnY7wKKEbWfT2XfCrXj/uEwuzRX0t6+7kSTCclxdLSMocd3gdXi6kubwGATrnOSPuqrnIepjIWS1zavFnrMf7tB7lXxlvtr9SUCm8lbH6mZu/8xkKgCo77sp9kPdjAHhFVgChrPqQbTxeRBq7jzBnN5asNJzLguF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780913674; c=relaxed/simple;
	bh=6TZuLaXV7qVSP+oe+utMHT9UGuqS+nRoFuYJP+iF/EA=;
	h=To:Subject:From:Message-Id:Date; b=kntgkW2bsTAOct97RCGjK1RU1m+OXycvoVaoXFbPHNnYyWBuGdIz2LaIwxsEDCdUNIiy50JGg5BV8+TwLORunvBjBi00OyDFhkQO2Nj2QuuA7uXNTu6UiD2fzEdpcB2Q7SDFE2nEmSPXIrCME5iTWaQlK8ljzbjwkembgC9enQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nq2xIo6A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nq2xIo6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E2AC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 10:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780913673;
	bh=6TZuLaXV7qVSP+oe+utMHT9UGuqS+nRoFuYJP+iF/EA=;
	h=To:Subject:From:Date:From;
	b=nq2xIo6AdXwAR7ZGKSqMzKBjon+e6rLYcAbmXkCNwOXl/JyJp/AIdsuWqBkUTFj+i
	 gfZsRhqfv/2rZEerMkrtZiL+NUF/46zOTlvrb4t+Mh0eWXYcPuA1mG4E7IzRIM/CBO
	 wa/aP4bz19TNwMBOuoaFZFXFvLNEtrcWKI0PMK9APXlUwt4jnO1ZkfiSYLJ8AFZ/UD
	 hI8ylRfsZz3QprrYz9zNmd8pvkFlxWPSbM0ycGWqq+3TuDrCQm1ykhbIe+f3W6j2PA
	 dU0tl3guBal/ULwOarHyUXLd+W8VnfQPa/u3qMzQImhv8OooTt8qlKqlMOuNUuF/Js
	 yHmNfatBBoYdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA115CD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 10:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178091367368.5358.9263400922075962859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91372533f6245c6751e420082e5d29bb703bd40123cfe009084d1d3008e85d67
Date: Mon, 08 Jun 2026 10:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780913673
