Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301FA2147F7
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745873995; cv=none; b=P29sjMljozuR6dXV+YnfzVGwyxs6GTS5JkSyMCUgfJKIOqLX/TBZB+mEIA31ry/DXEbPvffg577ZfgoOhKhzZuLjuvGrDZOSGf36CeBOEzhR4h76N0yYKw2qEAEZzUCgPzLwZ/JwZftAtE8fjFAKLesHRtM28SlsIL0rPxO+rLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745873995; c=relaxed/simple;
	bh=GJoeyxeMoOhJV5NULnKywApavLu15HROrCk05VUsc9k=;
	h=To:Subject:From:Message-Id:Date; b=e1IKKXlqMLYntZCaQrwp98gwYdOWYdM0wmCVywJGvI3cn/iuHTqB/5AgZzVXh2+ykMxMzkEDBs0Br6DNw0anGY9BzO6s5TdQJj6dhsgf+/02ADVZMAFzipB9BtQmnyyfgspJP57kuXKg52TB2MtsjK+r7/fiTHbM5Lq37xZ6ywM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IWJXo3Qk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IWJXo3Qk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A323BC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745873993;
	bh=GJoeyxeMoOhJV5NULnKywApavLu15HROrCk05VUsc9k=;
	h=To:Subject:From:Date:From;
	b=IWJXo3Qkkl9jfEPJkKfD2KVu133+SZhUHM+KR0hQCKj9F/62Npb2zs/NOVRH5UpSx
	 28ZAnbsymDjAn4ISzMNbuCpxavIvAJ+SxqvusvKUEhEgx3yhwxKP3sxXWvbazkOje7
	 O+6gJzqvEmZ0FgDt01J0E+LnKKbvGgF0VKh1m8k7CKEg5/3zFi0Isu+eUb+DwU3j09
	 17BkPlxcHfIgRIuDUcIw5hOW+9T3xxlTi69ORJaKqSPXU20T7D2keWNDbmydIsRfOY
	 8ftDH+WRgXXLTmnRFIhEaSUvRkCsmyn1wfETR5eTAoFQ00y+k1rN1xLUX7BXArofp3
	 J6tqxVgIuuqKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F87BC369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174587399358.11642.597404395249000788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18421c5151aea3376fa5b08f4d40a4de953e64879a078d2d20b0c5caf363cab5
Date: Mon, 28 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745873993
