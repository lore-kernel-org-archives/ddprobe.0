Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238C41CACF2
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730490354; cv=none; b=t/Lsu/GpTKk0OPeKVWEkSezY1b2mwYrBAAsr5BY974rZ029u8XRhPdSs4s6R4H0lsft6VCQqiF0kMuLWpyM65wpyzAToSeP84DxaF5E5eqjYkHO5cFdaJs0yxxaOdFZSn15YlOcjhAs0/XeqyC/wXinUMBB5kcxdx/B9WfZmrpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730490354; c=relaxed/simple;
	bh=q4SnaxaY7q9iw1pYtioob5UuyW7j7f8vYSuXDw7F5RU=;
	h=To:Subject:From:Message-Id:Date; b=AsTB583dtmng/1uu36twhsIDvxz2qNTHGH1WklAWnVWt9e2g6zYNQnPop7YPETbeRyKfdRBawMp+S7wHj73L9+Bc8lfJGHN+2W37Jqb8neZJvH4IZbxZafgB7h2OPCILD3jCHXJdHFCvH8AH+R3cSA592ur6XFfDSEDKtUBYdsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xc1cslac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xc1cslac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5F5C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730490353;
	bh=q4SnaxaY7q9iw1pYtioob5UuyW7j7f8vYSuXDw7F5RU=;
	h=To:Subject:From:Date:From;
	b=Xc1cslac2g/PeaH6wEYVPYEzGg1vIOpTVvFl+HbWUdNmBxE7z1Sf6FJwgHZaegz5i
	 apRddLFOQdjL3+v+SdDTRwtt3941k4gtALUCTFotQdWXUbU4MkRQ9qsMuphduXPOBr
	 bIMzuTRU9E0tWWejnZ035NpsVaEm+sSYGYZZbl4eG9apl+/7NcG4S+MZny0IuYOeQB
	 jl0uCxgkS89doX0alR5GiEWJZLRp26TXM8LAgL9ngzICZz7TJ4+iHET/RZu4iE/8i1
	 s82R/8KMOm1efx+mq1kzOBjcEypnn8m4s17/XKfg05ZC/CDei1adWkBnWG8h6K4+fx
	 ppKn5IrYigcwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99909E6F085
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173049035359.21933.8199626572527061091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfdeb87bedcf7c720bec96650397325bcee01aec70be88d9d8eee662a8a5e8b4
Date: Fri, 01 Nov 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730490353
