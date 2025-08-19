Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D83F266580
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755635994; cv=none; b=Fja5iGu8q0w3r9EnYwRdNSxArrNIX6yP4BP5F+kikfExa6hqZ0OJDUD7PWk7Gbr1A/H028muGIr4lva0uTttJJO3Gs15xIB51rcZx0Tiwryb29lMgUpmUWUjww0utmmJRAZUX5EdayYpiwHcpfyhUXx+5MdxAVDmAkuiu3vBVB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755635994; c=relaxed/simple;
	bh=4HeAHjHRZEp5iUJHTf0X0vu5NY+T492jJu/nLQlvk70=;
	h=To:Subject:From:Message-Id:Date; b=Tj6OpYVqSJmtc9zAeObezfcMfZl1Ia0QjgVFBSMvMwEqiKxztJO2fHTmoz2h4iiIqwaCri3ffkDKFeiXApf6YGVLodXg1A2IUSJkq8uPURXl0I1Q/koXR2NZdMEOeZuAxGosIwcw7GRmLIBQTzBmxD033mjg6C6MPxO8rm+YTIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLLslXM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLLslXM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0195C116C6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755635993;
	bh=4HeAHjHRZEp5iUJHTf0X0vu5NY+T492jJu/nLQlvk70=;
	h=To:Subject:From:Date:From;
	b=DLLslXM7mzI0zvvaFzgCEIsRKCU0L1IhM/vYe8J3WhUp0oAoq4FqzLjNeCIeJvZ3q
	 x0wvz+LknB7VP2FnvF6GqcGGU9cR6eJBwPWC8QFXm5lRqH8q7RTC9OpI9ysuXVwvYo
	 fbQaaRuCeFWko6O6HsCfOWx/HT4HEQuyQjhK9ckmK1953Xi+5sDBTxDspqlhZKE5Fx
	 yLVJHbEfIewJQLEE2dbenjYI71Xsvppy4T7xfg5/7jh0N8t8YIt1BDVuJop/FGn9xH
	 MoHi9bXaMWwRX0/i6yuYpxMvH0nmd7iR4+Nd1n4fFRetaSQT4XWIBqccL+KezbluqN
	 OhcUSCN0d5Faw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91830CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175563599357.17658.10207543015648113637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17dfb4e8cf3e7462bbb7ef6c399d694bb1d70a3150420be889e9a55f674727ba
Date: Tue, 19 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755635993
