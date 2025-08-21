Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B3E2E762B
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755795594; cv=none; b=nOtgYfREF+bG4AEKktiyDraQEZg/R3o5rqyFLY+gaWFvH5ejEScxWxkBnOYl3CdLWDTCVBVt8npXef5hDlKny63DJ88wLa3Ij3to5IKJhIEjgB2fCeU5UA68OZMefjreMXJFAb8QukIYadzI3vZE11OEcMvZw4h5B5eul70r11k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755795594; c=relaxed/simple;
	bh=XPl3TSqnb8QAujB28uJJlx9owxUvfkiN6pWk36XM6Ag=;
	h=To:Subject:From:Message-Id:Date; b=tahWgDeEmz+Rp4lRS8mr5+AltPpaZsOXImHwIPINv5l3zjvUR1LxQO5WTWdwQAMxyKNawIvuXoL8YgzYGdj0fuj2rZfTnKn1u2PgmPG0gS95OCkvXegKtW1gvkq1pcLkz7ONBzHZIRAqqsQtS1qUYJ1CNStXpxv8Y2YQ5HBAwj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZVsoV8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZVsoV8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF0EC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755795593;
	bh=XPl3TSqnb8QAujB28uJJlx9owxUvfkiN6pWk36XM6Ag=;
	h=To:Subject:From:Date:From;
	b=cZVsoV8cpZlMdnrMiJ1iGGxhne2bgVuVdmvbzV37udx37WtTjJZuHZ7Xuudgy0hTA
	 NhXNq2X7eg1hNSCXS0Qh6KkWsIjz8ppe4IW5g56wwXmQTZ16MgzY8q5ppOoiWudP+J
	 hcJamnSg2sQDyhWZ2IbYRZcaJ62Z8uXkh7wzyrIhHW+HbHTQNzwlMLeqHNVQJcAh41
	 PR7QLLVTfJGCgZ38tacuG9ogGBW6gbR91++IwtAPQFDcVDfi5TmkEW/TwwEz7z6rlp
	 9+TISJ2KHi9jQv2AYS7cgTS5xpO7UknOkaVNgl5DM/CnUwVTSS0r2pjCFrgFwA+ul5
	 kRQrzhuYe81sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFACCA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175579559358.6705.9793045808922045429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb99213ddf4265beba64c79655e09bcbe25654b4dff120eb2728a6b3bd474401
Date: Thu, 21 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755795593
