Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EA13254B3
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791894634; cv=none; b=qOO3NZ1NmpC0XX1IKDG9UERJ18/NdrJML6LdubO+JZlRR6hd8sOZsiM+0lj7v+ckk3THNhLaNwSQFvpQOkxNA4oPG1i9tV9o4Un6Ipq9U9M7a18t0fEh/BcW/lZPveWjzltnOGtT8l74arGxZuaO9dXrxL1weSy4ciU679HPHNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791894634; c=relaxed/simple;
	bh=MFKByycE46Z42l6NC1S17hU5T9WKUcACRMMVslxhkQk=;
	h=To:Subject:From:Message-Id:Date; b=rRM0kb02mH814aN7PWL+XGggOinEpMrHaZcI3RqU/ZTGRYy+TJFzxdbCEC/oZ+DTn9gqq7zJYbuTI+UlgsgA1qYhWjy66acv5yw04abgzNcDLrUJXlDthHX6F29CQOMeyzOHnWB9XKcF1iZ1yETPbunkUBgPjmb8nyI2ZiwNp8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7lr14Ub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7lr14Ub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCBDFC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791894633;
	bh=MFKByycE46Z42l6NC1S17hU5T9WKUcACRMMVslxhkQk=;
	h=To:Subject:From:Date:From;
	b=J7lr14UbUs0afTvCNECB+OjzGSa4LnBN+8UmZSxHUQv5KdkTEa5LxF8uTjXaseuXV
	 jwwSEem+LBwZTjRPRDkE4fNU4zwT4748rmaLD1N2jv/ZHrBteT4dE3aG8sbj+Iryx6
	 fndoWs5GDy6Ym31xVUjbWI8zUmZum4tkgXcYIdVlKTyZPD0PLla2PGQEgvnPNBVAiv
	 Q2THbriO+/uD3elvCspnpG5PteK1HsmzRwS7gdBYm49/Vp5LN+sImpj2aWFlxtUvHW
	 PMd6yEvhEM1ZU4eqkElhOgffiUlfKQnIaD5x4FgODIgXPZX0h9xMMWuAIdBf0YIjDF
	 qGiVClbW1waQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B80DFCA9ED2
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179189463374.4895.16071616811882488037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54f73c05c2a0d8c545e06ca62d095eea632c8c98d39a18cf94a3d72cc6655def
Date: Tue, 13 Oct 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791894633
