Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BDC33E353
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761867594; cv=none; b=I06UE/axq4q0i7fMbo+3U7aIL0XBDx1fKNJMmKDioNsfXP/gpHzUFv49uUage/3VDbgYmUOD3+S/G6GGK/wTFYf3JxNCL8ElicSi04baFDN80FNqSN0nWDenGUP0R91CTCjk0f27SVZTJHlGQ3TfEi1uklaUHhc6oYReVSWvXGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761867594; c=relaxed/simple;
	bh=VV9ofm1fThSXlBKu15dgdiIsGlL5rimAnVShZVGyrhc=;
	h=To:Subject:From:Message-Id:Date; b=AlHbhaxLK8w4ktHJjqANMgshdtJrEOTurRTZYcEkyrHeAUaVFbKrdsSjbw42oRFizq5dkIeZCNRidlsm4z38qrABkz6SiaiP3ybVC+N/631O+AVBeIitZ4mtshUoRJhqgKEpkhib4zpUg7iXzR9kamwC8YdILtZ6FFF6Z4eIAWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sVywouWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVywouWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F891C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761867593;
	bh=VV9ofm1fThSXlBKu15dgdiIsGlL5rimAnVShZVGyrhc=;
	h=To:Subject:From:Date:From;
	b=sVywouWorvYzKy0TG3uB8KuEtWW9zt87NbNAyC1x15VmBJ35fs5zDM0OYyI8/j2el
	 PrHz3adNvG1GU/3YHbW0vq1RLRSlIlNU4yMLklvCGRXL9o8GIPKe3NoipxD8LRV3o/
	 ApD2bTRHN9IjjIbm+B3xagBRZGVXa9Ze8hRmrOXqTAi5yvdE3tkE66HiLuC98srvQ5
	 mPEMNYmf9wGq4xyw/4m5BqVV4/tzQK8LMPLzNg4q8Jxv/NlgONaORmGjhnubFA3ovo
	 DETPNKOA0QYnmkXEF7ro8fw6fQQgdzYlwYOnUHW5h/kZKOffqinZv3BtPogVbqj7n1
	 Qp/bPvlJ5DHCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91581CCF9E3
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176186759358.17657.3653216344679324965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 716aa8a3e34980b8d7cdf28128efb433cb12058d196c9bbd1800a18b8750e64b
Date: Thu, 30 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761867593
