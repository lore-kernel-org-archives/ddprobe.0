Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B14237207D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 17:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779384154; cv=none; b=uWVvwLcCYBYYzIeOEbyjZr2X1U38sDes0Hzg1efw9zrfMIflPAYl+8784yjE9z2ZORLjV0GdlufvPuV+jKawVm2NOrnGg1747Ykz7lxOg9bavbup2Ignzk7pr9sON+ZkBz/TbbDrvD7WNDskBRbf5Z1CStfte5sxrym2nIvOOyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779384154; c=relaxed/simple;
	bh=LXqxiQHzSH80ia59yqg8iAJaj+9E84NfX37mhivn1YU=;
	h=To:Subject:From:Message-Id:Date; b=Ypg5RVWH1nvHdpmHVWESdpoNVholSvWCfJuS5kDeiDw3aIDtOZDj5cl8IEVL9zHrsNr5DEuse092spYJ9DwzW4I/fj2vLyItDin9ykeAMxdiJX1TELUSbgmTV+SfisHwWAZubVT4jabdhGXWZIkLxsqwC1kqMt4n9dqepkkDuPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IsXa4zyw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IsXa4zyw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF93C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 17:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779384153;
	bh=LXqxiQHzSH80ia59yqg8iAJaj+9E84NfX37mhivn1YU=;
	h=To:Subject:From:Date:From;
	b=IsXa4zyw+uHABR03PNnmzqQnNgdwz5UKkte/Qi5cXGCUZBLLKxAxY0lab2nTRVXIN
	 umZ1DlT1mVg5kJcqEBsz71Ht70fmOX+1F6sm1mhU9TSVcqUGQVF1xKWU3c9geUiPhw
	 SZx6xJv0gNnDpumU70Xd8GSV8kYyR13hIAKR4IY8qnvlWlX+EjtRL2lUOatYYnrzGA
	 S2MZcRu8ZinkuweP6YRHcHvXzfwZ93p4/tCmGhLcCFBD/AwF/tKdGF9JsIJF/2qJHj
	 jIL01uYLAbHFclqW+WQoladgS4pN63EDK3czVIqlN5G+RAn9kSymmniZaxrX68+Wsf
	 2HAe43UHuEE1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E5ECD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 17:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177938415368.9352.4399895593854764462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94cbdfaec44d211d71b10258f315819dd357103cdac8492ab8849ef58d65884a
Date: Thu, 21 May 2026 17:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779384153
