Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626861DEFD2
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755455994; cv=none; b=hjDMIQ+DOW4RuzMS97orC0NJuQSDEpRD4PsU7Rizj8Hpto7SZzAKkiq0NmJGf90XmUScTFMFa6Xc6GEyWPvIeWb8JhMIRMQRYcEAZ+Dx6ih2GgCuoe20nYrGmhY5a3z/WK1owOqsnTtH9QzF4CdM7/3d7rxQL5WsM/uu1T7lPfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755455994; c=relaxed/simple;
	bh=YULZvaHprPuXgdGOpvGoNSReKpV401S/KvDuoAjoUMM=;
	h=To:Subject:From:Message-Id:Date; b=R6CgS9YTfyTh8tzot0IosT/5ZYVqfKWDl0nED4j7kcICScIE/ZWoPTu2S4MHceKfU/8Ht8aPeACGwQQ5+Yv/IGpDfCW5sN9sbsqXMRfn1RTl4CIk2s1QzxZ4M8dt3zxQsiUU8IaE91ZB3/Eq/NlBGwJSxR0A8J+xZnq4BpMZGhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDGVP344; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDGVP344"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49BFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755455993;
	bh=YULZvaHprPuXgdGOpvGoNSReKpV401S/KvDuoAjoUMM=;
	h=To:Subject:From:Date:From;
	b=NDGVP3441KZnEPGiNt0zphjdtd3PwSFJ6SZkqDJtT/sm3iiuYdQnS3BPKkCu74hJ+
	 IRzDCuq4kvijpmJLBqRjuuwNlSxzP3CYQsD+ofmKJnpOyTL9zLUL0xWnohoTrj474g
	 22+Ki+F1GHVZW6cQNuNEtOje7fNguV5aFCrhdNV/00I04cgPEHKzHad0RsuESH7/Yr
	 JNYRljhAFV5oc/ZrMFHkGV1DBOy5trNiSh6f3lEVI2ag4Jw0m4hI530RlkvuFwoiH2
	 ztjU9YO23VNmVEhWlkLLltUQy8PjmfmXHe+1j1IbQMVqvB5u5TG7tAgehL/isDWgwn
	 lxokd0hf42Ryg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BB8CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175545599357.15170.8408611872722071400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79b04f900194acbfdc1c4a9c070ec4b991e115464c4f98ee29fcbdf964d077e5
Date: Sun, 17 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755455993
