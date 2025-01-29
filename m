Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3530818EFDE
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738143356; cv=none; b=FL0o6em2kIZyXyU1YR65HvB1eewHL2WoFTWLZy6dfJ5itVdNpHx4HmbqrEyRf5v0setHbZ3DTOoKyrKzPac5kLVzJR6MA04unvbsNkml1K2uwF9zvArnrTDZu2ZbXJna9JyhZ7QRhBU4ol6kTD151HHBJyBtioiwDJ8CT85rCns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738143356; c=relaxed/simple;
	bh=+0IJWCqJDxJGUkQEASHPOt8fkuroATsZ8lWIx6ro534=;
	h=To:Subject:From:Message-Id:Date; b=qLV03lOipRzRnpqAE3HchlkLorpszce8wHdZcLlIOrer7xajDq70gizJwNrbR6I0CXRIPWCj/FpZYWpxMFzoL02fVYwUma5bslOomq99CVs4fUUjAvtqeBupZNHkM91smt6BtnD+zqVekyoIy3BZoAFaW2i6QWi1z+3YUUP90t8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQUFyJQ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQUFyJQ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB35C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738143353;
	bh=+0IJWCqJDxJGUkQEASHPOt8fkuroATsZ8lWIx6ro534=;
	h=To:Subject:From:Date:From;
	b=NQUFyJQ5UXjhSALYvfRJTFe9Mh98xLPnDmV6ofLanmgYnnFWQBFKrqAcZ1QYRcGo4
	 KmfRIFlYTrvz4I1VdLyWu7Wm5EF65pfIZxwpW5I8mmirXOQ/GHsYRUyUr3/Rp58OOP
	 z9N96mYFRokhIm0u76I6gUHpam5uVuwL2aOvj1v8GTclh5MJSYeJTpX19CvGLJ6iwl
	 e1N2fmCfeaPQbLIjqdcMnFtgRiw7Y6NS2X/KJnyzxEDWemHGsXruR379K9Liw7G2p9
	 eFQvF7UMWuaDTy7QldGjRMlYLQUQSTUDzeFcwAVwyjJip0vjUiRTU12Q7FZFpvXkQD
	 rbDErtONApTFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90669C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173814335358.7123.17854454698128004834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a47fe7f17f06e8e0ec2d271c36fdd51cdaf3ba55a1d1e5c5fac8420f63f1fa0e
Date: Wed, 29 Jan 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738143353
