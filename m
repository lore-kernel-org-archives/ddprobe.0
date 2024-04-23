Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5433720DE7
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 06:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713852023; cv=none; b=t1GUpICw17S183oJhDcWRkXmHBar63f4hRLFljh66z44TgxCJW4+skcNuKBCS81ZJ9XuuzCoRu9w98boUj8Newu/J3azlOAUOxavq6pmv6653zUL7u0XCv8Mh0Ch/+FGM5yvkYJbdkIBx3a/08RyBpl+cTE00hdWhENaYjK6fsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713852023; c=relaxed/simple;
	bh=2SAVuamKu3kCH6tbNOIzYZSKTgbetuXjMmEkNqEG+Jc=;
	h=To:Subject:From:Message-Id:Date; b=S6cQ5NkhUkjQDP4v/v05ftOIJ5iaz6rVd8XpMw6/59OgcbNWQWUmyMlKYCHg6C9hlrnwT1Vla83Bn6/gK8FJtRpdmm3zuB3MCBD7/S9ZMM3x1gJtiK2m3659C72oUQicRqs0GKNdfwTpfy3uctCf2JF8Tv3BWMGGb9+DfbTcIY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXhVxyhz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXhVxyhz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D510AC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 06:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713852022;
	bh=2SAVuamKu3kCH6tbNOIzYZSKTgbetuXjMmEkNqEG+Jc=;
	h=To:Subject:From:Date:From;
	b=UXhVxyhzl7wEoNv6MUFBLSYFE+6F5Rya+pM5GQ0aijQO7Aj67FabgiLBr+LvlUas+
	 nkICSFcqtkNr49hnBPJ0JMGBqI2MIq3JEY/DGkerjVznZe3MPPU4TwtfHBkYoeFrqs
	 MQeONByAbrgdD3YP6MZnYV2jWAnk8V+4miknuSWdsdaKtvfizdKW5R5shU/hgc7Edn
	 Czz0K1xQYIggZbx0zDcJ7dJN4iPne4HCoh2uQyejlAXGhxgDDBnGA2XcDT00gn74Zq
	 88X9UJqly/gQcxTY9hNE/fH6Fx8UQDVFHn5TLoyRpJsmLs4kFiNvo+S5IDMeG3QpGH
	 cvpUSlah+Dwbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE801C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 06:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171385202277.16355.6324458078145772239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bfa06f911bf5c08d192d3c9e212bc68985d4b21099a90355e1a0159bf32e95d
Date: Tue, 23 Apr 2024 06:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713852022
