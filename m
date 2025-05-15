Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3221878F3E
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747313394; cv=none; b=J5J3+kB6C3yCYwtGyu8OEUKdPdtqO2HYay/Y8b05fKNX/ofUuzKxUed5xbYvo+l6FH6ZF5UqEfiCYGjKOLwRv5B2P8ZD1EoxDM59fQ8g1ZfWVm/TBDJme+EF/gQBHdFfqTtJTpXT+Xo/f+0MLsNXhJADDU5P2TBRP8fnEO4QScw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747313394; c=relaxed/simple;
	bh=o9pljzWiP3FvvZsfbu0mNzq5i01Sbq86beYaLkfp/oA=;
	h=To:Subject:From:Message-Id:Date; b=KoGgmsmNF7Ca/Gj5Aig1GsjWBVOsbd4HBWm6RUswI3CbEAIxlICqD8ma7rR2F3lBMUYn7wjyAZ2Zblsr//dekCQ+F6ISnzhawfhV6ExTHEqUJrJonPCWUfjzNCRU1pyojzjXDo8jW9W5l66NMwr1iXSjuq3Tdqo6C2+EhMQkJ1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQT3Wues; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQT3Wues"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AD8C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747313393;
	bh=o9pljzWiP3FvvZsfbu0mNzq5i01Sbq86beYaLkfp/oA=;
	h=To:Subject:From:Date:From;
	b=RQT3WuesrbnH8VspncPDU+WWznhmwcwKLlhPfwCA/bcDLqaoHaje/SP9jwrnKMvtt
	 WQE52yR7p7gmC0KyU5kpXQvIqgGqTD4mXUtfaElQQ26ZtUjEos7/yXsWYjh/t+HtBU
	 hGGGsjAZOIViwhSt+7pa4j9bfjwsAaHQbN0WVY5GFkdO+ZkbYtvNdK9JbaZmiSr2pG
	 R8ay6SqyXPukfflYjBaF6VjV6Qi7igWtKR1SWG4zWzMA41mWjwEsU9Fl5CI+HP23Ec
	 K8srT+tPDrFskPT40RRKMcRXh+wTKmrc7HZMKLu1aoIqefH4CIAo9rcX/tYQspt0gC
	 6zwn/AuI70oGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906D9C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174731339358.28044.9201353134941834340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82c2fc2451aa4adb82d82df2bfe0a4bd426da74365c026772322ba496a577990
Date: Thu, 15 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747313393
