Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9AF01624DF
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745306394; cv=none; b=Wac8fCtuSFvANzhaUQMtJb+pNAk2v4Yhj9/6W4MLMj1Nbjb2UvdBQ6zS4VLogAaE0vkuRPPWrzVPLFTg6wPOjxbTuWWszFwNIp5SVgx4TK3GH1wI0qOxmcDYvriRwbY1yajfjfHr9PBYl6SoGrs+rkrYeGGfao0ZSxn1z6YIdtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745306394; c=relaxed/simple;
	bh=khZDAm9khmstLJcPKTuGacudWxXEW9DWYz6CYAEnW84=;
	h=To:Subject:From:Message-Id:Date; b=RrH1BE93gBNNSVUG3eFPTBCxXdNlHYsmAEqS+uS9gKLpdEB4TWaTEdNCUbl8l7BsrJZglAmngZ60y/vIDbdzKh7UGRviqCfPoYm1VxpZ8Fc10IPNdm1yfjgJ+C7NKUrwwuSwBR+zTUx/pGaTzmMkwLUdVq44TBz2zqj1Cg1UgZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVD1nClR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVD1nClR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7BB6C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745306393;
	bh=khZDAm9khmstLJcPKTuGacudWxXEW9DWYz6CYAEnW84=;
	h=To:Subject:From:Date:From;
	b=DVD1nClRDokTp+UjMFPATq1whAnMPwsnxsuMR2BLzSoOp7lt8JoayfhhD73Z61tGJ
	 1zJXLANOYhpDwZm4z6lP5vxMHizzGUOLUkGmdLk5LR+96vPAe+UU8f6fh0FzXlPNNB
	 dEdqie+y11fzB3MU16k7Wzz1Sr9hFprMSa6tI2N44WF7kftGWjEtecL5rmlM8iUJlg
	 QgP5q8m92P/LgPCOjut3ySnuTchQ4mG9hq/8asLCRtVoxXSy5FdALqx4TCM5GNc/Bu
	 IGcvaNsDe8WWS+u4AhNm5Lgr7VKBxkuW9HASJOyQfDbjbMyZgeAt5bm0B1gOl8DB8x
	 2gf6kcgp/JNJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DF2C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174530639367.348.4882531212342116182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aed05eedda9aa91467d8c56c234c984e7aebe78ec7346959a0ad7dbe6d8d9f1a
Date: Tue, 22 Apr 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745306393
