Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6910F191466
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 09:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718616503; cv=none; b=FV8CuSGA3ba8ak3DLGXE4555dKdz+IvAdSHGHH+ZpM6OXljiI3LgBR3zccfku1CMACp5NqwNoM4fXONridNfKoQwLI4iE3MX6Wnry1DESPdzjF6/IkUUlMNsb2FnsG554Dhx9UUHQBCzshO9Nky1/2MMlcr/TDy2k+g4xfI8twk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718616503; c=relaxed/simple;
	bh=Rk+tP0OYs2y+4ParMUmujyh8WUDcqBGyVq2zdNIiLjk=;
	h=To:Subject:From:Message-Id:Date; b=XM7wn7L+Mep3hpFciBb2CU14CSpTdZmpuO9XqwCczBRUqEozSf3FEAyvTsTE+fE/DFsHzHZ21qwoDAqfS3TBow+nC3nDQ50OJpa4SzD3GFSJFKjnFyLcIzIjW0DXIZkyOecv8UySxKIdvIMBWbEp2QTC8QWfu83YptK4rhddNBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/a5lLhL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/a5lLhL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56D6C4AF1A
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 09:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718616502;
	bh=Rk+tP0OYs2y+4ParMUmujyh8WUDcqBGyVq2zdNIiLjk=;
	h=To:Subject:From:Date:From;
	b=s/a5lLhLL5HDsUWkQtYp5GVIMpwFc5XUsPjtxk9+JLzizKXvq9zwJCiqpqBnfPzCQ
	 jSRhCsVKr+X2/dInu39HC7jMvAu8wRDWzVF3YO/tdTLT4GP2zEXZDbJOnhC5xfNlQv
	 bx+81Tmh3D5zax2az/W8L5hFyohj/8GJIrLQzmZkvM7Q1yHcpHmkidopUXaM0gln0i
	 RzIE9MDJPih5I5yM+BdiNNV4Dxv5Pir3ZcbHArG7/3AeNTC8r7Px9jHWZCcNgU1j04
	 Z7efSXPEg54bnzE7V97UsX/gNlYFjm0fEu2m0H43ioX/Z70xZ2V04105pK8FOKvpXp
	 81pTd9g456/Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C250FC27C6E
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 09:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171861650278.22278.9269626249329527436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f7293e49a40a6b1a5b649ccbc9d0386b31944e30eaee814f2cc181763062031
Date: Mon, 17 Jun 2024 09:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718616502
