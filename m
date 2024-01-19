Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EECA752F75
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705673297; cv=none; b=bmnbfEJ/s5aVhBvU1usY/n97BsqZxVV6bvb8laBo3VujbKXAUXoQYMGLVe4teDXNogYiKro3gbNmVvq5JgadiCAFqklA8auZeEyNWJYjfCtytrikGJyh9cEX9+WkzXLG1nTDr+hSTESe+8x1s/blOKDv06PW29NPHMmNl5HT7YM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705673297; c=relaxed/simple;
	bh=62IFXTWd6oA6XlMZBs38FOWUtf+1N5V6iWiRzDmg+7k=;
	h=To:Subject:From:Message-Id:Date; b=SNQ4drANyFlE37n7770H7JXH2ZkO5iNUKz0e6ZppJqjgNp3PmTZx1bQEclLbp09PWTy6gx+Q/cLCSe9glm+QojHQo8UFsFjXyyrFkXsOZ4zJ2n+BmzJXNBV1W2QTlZZMaoBu7Ub0+JFVFTF9tTbUXrxsPGykN4JeQPRiyRFjUI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bdagc0j6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bdagc0j6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77EE8C43390
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705673296;
	bh=62IFXTWd6oA6XlMZBs38FOWUtf+1N5V6iWiRzDmg+7k=;
	h=To:Subject:From:Date:From;
	b=Bdagc0j6UB+VVHFhFIF543se97FsWinasq8aMKlKhR83tn0gytRMt4YO1XnbHdlmq
	 AEat/UZIl/kdprM6zFxxd8tCuF5eahyAwb8swP7OjnH+k+AJjNc8F3vb1HvfVcXUGs
	 PR7r6k5yYekP7gvrMGJMcCcUEynR+v7G4Wj8qgGRrsITM4aMPYTShgb132hnvUF7/U
	 IGAhvaQSzpiaaEx4/GabXT3teb86uGkTY+t2fvCGzLOYDj6UFDgiq15NxXiMHzj/Ni
	 fxmH3K8VG9Z145pzhyEq/4AwbVSIF3iKCzBR4QG0nDTaZ0iMGK0pwQasftCRp5kqrw
	 COQUQPnwxYzGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61CA5C47DB7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170567329639.7566.2782547410686647643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef98cf7c9a1b10f7405a68eb8e87f7cfcedb49f50bf824bd8c8d638b0ab07bef
Date: Fri, 19 Jan 2024 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705673296
