Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216831A0712
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 14:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775314534; cv=none; b=Loq2sXG6yZIQR3anV+Pji1Qj9lNXcFGVcLy5XsSZJsOhlpRe53zsx5C8TUeYKTZH1xtAaJd0befE6KZ+C2jF8ImWXyzK191BoUEe8I4gqM+63KA9heHq3ftu4T/eIVnRUdyuM4i3HMbKjp6c0Z+qA0yYAkMdbBPhvGnltj4eqG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775314534; c=relaxed/simple;
	bh=Z69jLeAATBexuRzbg77kFoT7Xj5YkjYxkl7hLfJiTy0=;
	h=To:Subject:From:Message-Id:Date; b=FVrSnJfUJYc7Uc5CZvIatEtBDvTKmPoYhtqQqIO2WRzbn4Mei1zheQbPVPLQ0b3JYRFJnLIOGN3JvjKm9VPDTRjUhOpeMNpp/mJGq48OzenpD2bYDlQhBrzDmVuhYJxdHJiv0pP0z93MS0bD90+oDrSW/dHIjb3rdD/QJ7SJjT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZAeEr+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZAeEr+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5AECC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 14:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775314533;
	bh=Z69jLeAATBexuRzbg77kFoT7Xj5YkjYxkl7hLfJiTy0=;
	h=To:Subject:From:Date:From;
	b=tZAeEr+Ckv178MndHbP6aWWaADhs2RJHTk407Xsp5TTdZzU/5nDfaejaQa2XP4k6H
	 sESrtpW5aE2odz6NCoCjxcTdAl93No73MbMyG+t0EyZPEGI1OFtrd8goa+jArN97hz
	 GkjBjw400Y6UQrYzr10FlFD00LZI6QbnDDQ/OjuEvpMAb648rmrctGuXXTtR3iUnvC
	 uBxIliopgfSa6zG29ayS8rDtZ+LrbD7l7rjkM3Vz02SuuPMwUQ04KnQ9RWp+evi+kA
	 lk7pFJbf9P08q0dK1D9/zr8Va9gQQ5Dk+DkIrZQKUMoheWR0kkHsfhNlQYoknogiCL
	 zGfZD+hFHMqpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B93D7308D
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 14:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177531453369.29911.4561580526587572961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d963f763b5632c74d0d40e5a6ab99a9b69105d79ddeba9ebeaa9f9a99375dd9
Date: Sat, 04 Apr 2026 14:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775314533
