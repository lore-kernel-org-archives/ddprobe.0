Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E4E23CB
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730520954; cv=none; b=oFCyJodpAu8wfH1Vwn2gCovnRBD36GIwjrEXOWDqz7uqtH8FcCNQGlaiPOUiE+VYL3GshDZyMxVCVsavF8jrWyIH0cRvwRh0yDRD9TrWnS4Pcc30utRu8c3HVHFotLZz9b2ZO7DNdYSYBHQ8jcolX+W8SsCR5s8kYgxMwy5atoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730520954; c=relaxed/simple;
	bh=16ztd9mUGiEUQcNLn8Otj0Rh2qwtONG/my97gzCU9Fk=;
	h=To:Subject:From:Message-Id:Date; b=PqO9VJZ9ZbxUi3zN2z3hHmlZf1EmGm9CYN8UZZIh0W0GiVfywYfGT/vb4SbxOGNqXZIYp9Lc3T1mhNo4YUtP5SbYBSuuJ+GpVB8w0YjSNI8ombZXLn6SPjyhtRbtpZ3Zep6MN/oPvmgOaETOOhOGqO5PdS67qb96ROKswpJFgpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pI4i0Q2F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pI4i0Q2F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35B0C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730520953;
	bh=16ztd9mUGiEUQcNLn8Otj0Rh2qwtONG/my97gzCU9Fk=;
	h=To:Subject:From:Date:From;
	b=pI4i0Q2F7XsMQlMWhDxN5kvAb3sJCqH/7vmT57pdJauRKRVupvvh1yyw6Us34jtat
	 YF/1Zcbj7M/9UOYpEqB/JcusaX1kQUL/mMtNK1mJv2V4IhbF0/6xYSWX0UmkxioQzZ
	 0zXvMSXETbFvZ7O3A/BuGZMMs4ad+ydyHk0temI15M7IXX9Cjlo0mRJbLpPnTFNDf6
	 iIqvRYF+yWQHqLCtIsExo8NqN3GPsLIYfPf0jiq3+61Gl8zmV6/UVJIHnyBbJOIDlK
	 eXapvsDD+2ltc6511uBOLDhjOPodhZa2ZPVEGeQi7Pt5uJPrkT4No1XRglZmkVUNDy
	 t1Q/bva2jpERQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9446AE677E6
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173052095358.32614.13573416538491108196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd157935427840beac95116acbdf2922dd87b2a135ea50889e297e29cd43e0c8
Date: Sat, 02 Nov 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730520953
