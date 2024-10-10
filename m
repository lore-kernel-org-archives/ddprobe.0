Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0E31C2453
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728561354; cv=none; b=e91qHa0SZnqNZyAJYVJo6+cY17JtQEQHHD0WLznZEX0q0asZNbpvr4fuFgtPgxbPpFjOuIFucM43QcQm7sGimmfKcJ7jwLHat4kq8F3ZocUxnCcnKi9a58Mh6n4WIJ/Pqsk+AR70qCvzDkYS5nVjuyKfojaT3WYHdwE4I4dg4as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728561354; c=relaxed/simple;
	bh=cpLGwTufKG/HHXtEUUk+7EIfA9KRkF4tHwfBReuzjAE=;
	h=To:Subject:From:Message-Id:Date; b=ARzvWHqqfRKYJoczw4cm2t6EDlT8043R5abmTah1JGS9UJoD+P+pMfryiS9v20UK0eNSYdNHVW4nyhjRVBNA57AyoBJSpIEFHEXnSv4v9dFH9RLwQuKIYRwDwg6PjApL5D0acBvjAoouf2Jdlxi7UPQnBtTdOzxcAYrH7EQjhZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpOFLYxz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpOFLYxz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7133C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728561353;
	bh=cpLGwTufKG/HHXtEUUk+7EIfA9KRkF4tHwfBReuzjAE=;
	h=To:Subject:From:Date:From;
	b=hpOFLYxzF260+6L/SZ2EHO7rHq5j3NgVsRILdZ82uz8FYgpqAPM8/Qh3Nm1FqFMl0
	 S35mLgDBpzbqNwpCUhjzyTyj92aAikVTrYrWW7Wc7ja4kSty8P68ioDG/ISnwPgab6
	 RFJjYyimZ8tBVMO5qiN00B8I67r66diICOCKQ6BCCrZEbIvANkJxGry05sH0EIk1B6
	 YAVBVxuUIVWpJVYSIDq5tygdIWuZWsPX+MwihKDV0MEPNDrqlNgPKOsAz2YxTGh5EU
	 l4XUt3Xox0ShOWq95Vr9oOmc3U4b3DAvhVYdV7Cb0un7WwQhxFTRefIGhUPDlRgm3x
	 tjRzh3ObE8KZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972F7CF11D2
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172856135361.8094.11389286022742228872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ac2fc414b94aae2967c9dac9d457f5a078300320c78053a12128a5e879bc8c
Date: Thu, 10 Oct 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728561353
