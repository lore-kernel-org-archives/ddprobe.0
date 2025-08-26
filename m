Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9C82F9996
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756199994; cv=none; b=qgPJNcxMtq/ZWfwYQN89CwqPCUQwqRmj6Qz4SXnE/aQCN07NcJwFXDVTmA6fvTGL3zYSLcRqtoBqyTeAuOGUwVgWojBYgff6Y1GbB7/AJjd1iv4zuYZE9v4ZOBnqak7dZDLv8qKdCvthmN6sOKrQ2ykv+xnzBKq5kH9fUr8ULQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756199994; c=relaxed/simple;
	bh=H9z2Dr+EndpWcEBOUeac6aRq6Vrwk3fizWfgMhrTJWk=;
	h=To:Subject:From:Message-Id:Date; b=ijj38EEtFDcJbokxU1QF51tJxchrO+4vQnX/w2HiHBMMXi4UDxbY0fZ+yzkfYkeNtBQUFh5v0PaIuRn0v7yzcHZVcPLyvdDdfFVAsPLlqtbeS5Hm2vLcYRpPYqPyqRasuxBfMDxYvHkXW7wFTJcBbgBxKammnuard28IF0fzrXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ftn4TIFk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ftn4TIFk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10F6C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756199993;
	bh=H9z2Dr+EndpWcEBOUeac6aRq6Vrwk3fizWfgMhrTJWk=;
	h=To:Subject:From:Date:From;
	b=Ftn4TIFkaLR+l00sbw4TLKMov/Y5Q1SWsK9psMJuAkiTSp8lNDuKzwv3mPqu2KN2h
	 Az2hbXJOqmThfIxiMuDImBaz7MIDZQtEFoIQclo/MUk+zRc1aR/NyYL6/DebgFDTfz
	 ClGzqfLu7liSa9kwXNW3eGgHaKiR4EBLHPBVtwU1S1KH1G4Z2zqa+R8FoeMuKlKu+o
	 gtv2jEzp8kXJmDoyVPqzeUBDUwDJ7CGwWf0mrJKQggXEZHWx8JgevsUhvQhWuZbLpn
	 K5Dma9MhSAcxkIaVYTzn3Mhx4F2/SS9FltS+BQCBPe8wyUBpb+ZJd7BHqjP+lgtMh4
	 GddNTjr3852UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF69CA0FE9
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175619999357.18620.1309522011595783613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd95b154f95a2387fbe2cad91dfb8d3af48d5a30cc28bf58984a962d817a89c0
Date: Tue, 26 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756199993
