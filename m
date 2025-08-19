Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF8E928C00C
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755572394; cv=none; b=mygKDnvyiF7j2cn4BCdjrnTosIxJLq4V18NpVq+BPNA6Glhhnvvu3Rjv7k+qJ4vDiWEFnhEowpXbBqWJDFu/FsbCq0DCeqx1KsAPcNQzS1MJQlG0UFCJxapWqM03/DA4Aze0orzPgD262/nU3JEWUsp7zVpoOC/xznfXlzGmyUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755572394; c=relaxed/simple;
	bh=yzgNQfyEQeecSWAjolTDYNETrEZGc5mVgjZkfEITb3E=;
	h=To:Subject:From:Message-Id:Date; b=VyfcT8EMMBSw4njpyQM00QgoKyMnC61jglVWHh3n5lqvdfBnEAe+t5VVE4+vOacVPm9O8n8evqw8grQzgnZQqazvXPeJGrJhhQadLL01mFGjL3hI76iOmcFHSg0EiOFbB8xzz/7HgtBlLIdSrc3tP20Kr6oUMk8tiY3xXKctpyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2Y4luy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2Y4luy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C369C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755572393;
	bh=yzgNQfyEQeecSWAjolTDYNETrEZGc5mVgjZkfEITb3E=;
	h=To:Subject:From:Date:From;
	b=h2Y4luy/KroLrXCVSpGfsJq5pvOmzodkvpNj2B/UNQNU9d/x50++IYGlFKr6T1Cou
	 2724JuAcn75mf+sfCKQf2y+cm5rpuHtSTbpRDwyRQsbjLLVNnB73yhwGAxPszxZtxm
	 07JWUBGZV+X+RWj1TIATXjcMiLjfiD60yTl5AEoXa5TCDRw3pfuWZ/CaxYorQ6pW4h
	 IKNuBkrvjYwmehIE3lFiUo317CeoAnvfPJssXI0cw1s/VvtQnr4uQ536X5s0lw2PZK
	 4L77zgs3gptk8R1MKLt7mQ0joU/rTbQyHgT8+JymCZEsGLsS7NPNfQ0G7zsMqQqviq
	 e1TzkirLC6LOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E88ECA0EE4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175557239357.28281.15926131732740020476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fceab220cfc48a981ff0256b803c8dbef1c2bb3edc4fbd65e9bd82ec6e15dd24
Date: Tue, 19 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755572393
