Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F23347BC6
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 03:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784604514; cv=none; b=iXzvL96YRvJCzBo3jlB3DRXat2L0HEWoajtLcwKgh5J05O4dBNd8RCLjzhI5A3oWCt+bFJIINs0iCrB6aXekNYDSZtfMhLkWsPpgaC87clAx/l9eHvXwSNZId4qKOOiYYFTlANYfjgDlJ0neAr1MlGZBPpcD8R10s/RhkHxW43Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784604514; c=relaxed/simple;
	bh=Kf1n9X54REnygb+q7uNgILcCUZwbLi8T1Pdu1E7dY0A=;
	h=To:Subject:From:Message-Id:Date; b=bjrcGneM9rD9fzGyLsWD3tnWgskoFu51AyRK3Jw6T36iwT3/Vxrw6AY6QTnGmz4OayXqBml849OClIciAINlM3KOVSYdqztW0SXTaXu9VNGYvmGn7YgGWk5FPa/Dgf3YK6Z5p8WDzKHxEiYfocwgi1UVFXd96o25G1E5T7dq1Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GdXiYE/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GdXiYE/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3BBC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784604513;
	bh=Kf1n9X54REnygb+q7uNgILcCUZwbLi8T1Pdu1E7dY0A=;
	h=To:Subject:From:Date:From;
	b=GdXiYE/kquaYeJawHoyixG3wg+23hd331T7+wo+0/5FxVvvFPAw6SPXcgWzFXe9lo
	 5zeyAsw6A9SZVCkN6rfdH0KXKQEKx9gUxIsWWAG8ZmfSBlHeyvnWf4tUX6Uyi6qEYk
	 PYNrW1mQ3C1Zd6appKx5+BGlsgsHYE+fia1I1ds5iECP8qClNWDDj+wvJZ6dN0NmoJ
	 /R2Eqzowf9b1hRNIOf2vTCda3V6h0zL7+VeccOKDQ/DGUyBhOhiq4XmnDOzngnVQ/f
	 04faT5dnMNmaXu5n4oA8VNIZGKc/6h2S4+CydOscVtwJZCPCkzEDCI0pX+VXnww40k
	 MiCsTyzkRgYwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB231C4452F
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178460451369.8008.12033181718696498247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecb8621e9a91d9ff3dda909b36576effd2bd44c6945e84a4e5f2e2da6e22b0de
Date: Tue, 21 Jul 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784604513
