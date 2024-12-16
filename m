Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF751E885
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734359754; cv=none; b=VmEfr9uSPzXlvaLpzdkvMi/QOQkl/23UKhHV4x+0NxjgfZ+qG9cvs7btsYK90HJk9xmjvweT/Tebk0oyidHAACUeBBzEs7ACItFgsoyb2GfQKOERH1qcTFMx/h20FrhsLGCgufzz07xKrmLoVObeeybz+/B5JW11NYKl/tHpS8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734359754; c=relaxed/simple;
	bh=r9my8hQns6/CZdN/QjX91LYZfCKH1UQwWZ7xahY5VyU=;
	h=To:Subject:From:Message-Id:Date; b=FRVTALDMNk53ZlCK8aHLC8BGVbbAYMJWC4+e+aO1wDm7gXu7yooJkPJKgZTR9siT1LQO69HjoQMLidtDMd/Gxe5kL5oktGVsr9wAp2wInBF4mBVOJUUWNKoifzoAzxkvurT/dUSx7blhICJ5nCbJhVx2SoF+Ig7sLD5KvR9doCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lq8+Mkgj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lq8+Mkgj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6D3C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734359753;
	bh=r9my8hQns6/CZdN/QjX91LYZfCKH1UQwWZ7xahY5VyU=;
	h=To:Subject:From:Date:From;
	b=Lq8+Mkgj8tvN90kqBD3vrv2NokDfSgrt8cIR3+y4B6oq4ZbYHDC1cygIxXAUYbjjC
	 HSEbrkpqve4tFeL29qhXP+JYX4NyNijjK1Nu/Gc1AnoJGAVhyv9LbC4+XNlO2gHFUD
	 3II8xlK891B42BxvapoMDzOd/AUuYncsYIATPfPkK6a86n6nNy1b3+609ZtmHlcHu7
	 mDyD9uTSZE4Jmod8ALX/aoOtO1sdV+31oy7VoKfxoW2Muyrh6rLiz/wjw7yuEl+kAr
	 ugJNeRyNSKRZXdZ0VfS2hMPdTiAMioxp+cUBx2e+3btLVvLvOt1kfRUbp8vzRYMg9b
	 TNWRqFi3AxjoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A3CE77180
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173435975360.20191.1011713020677961991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c7354bef468157d907127ef8dbf129ad1d27cca7348bc408802a001e194c3b1
Date: Mon, 16 Dec 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734359753
