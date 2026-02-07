Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14BAF26FA77
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770501834; cv=none; b=iu6+YzAUjNiLxxbIZlDWIbuiRUjpJtL0hm+a0soUrO56F2S07XMnaP0vFou4cq775EsQnK/lWKdwWuONv146xTk7/Tql0rAfQ9nqNQJlZnZV0PGKq4hGN75o6BIiZz8dcNgpBQMLNO2gqDxOlkBi9EiPpygQygFPfWGstDlUejA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770501834; c=relaxed/simple;
	bh=lXyvy6eLgZHXukGqLFOWNR/lxYfHz5IzpLEf/+xDc0E=;
	h=To:Subject:From:Message-Id:Date; b=tp1BCrVBM13LWkWHBD7dm227ht1mNlphKzzlW3wALesnDJQnkAa2nf4Z1+Ixl7dKBd4CY2j/4V/pAsyAFx/Cv6pEYXC0KAWHKs+DkDrHK5wI5FQ+KUbPbjUjq4a+9v2yxwwuRtDU8y8AzoIHeHsgesptSxgpKEuziFb8xYECFGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5BNBsFj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5BNBsFj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9836C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770501833;
	bh=lXyvy6eLgZHXukGqLFOWNR/lxYfHz5IzpLEf/+xDc0E=;
	h=To:Subject:From:Date:From;
	b=C5BNBsFjHyrt3OiHaNwtff5M9PrBgoH8C9wCZszNksoWuxcBOFDH6yV/eIo6YXeWu
	 Fs3CpsidoNpjh40cdt5SqSRCQSloswk2etX91m2MPlgfMtiKIjpjSLvhqvP14/ibNK
	 CT3CFBZYxZk4lqXj5wYhHzu/+q0P6X9AqSQA9uhtj3B+yyyNuXi+wJabX8wQp410PN
	 E50xEnD89YCnRMNkQ7YkH6Vg/kWofbw6T+b50ppdvA4VJ8aoIZGUnteViFfnejD1kj
	 NLZGRVcsgwdF7G99fBiSPHgVmzTgiFCyyT+R0AbXhW1WmIyGhkr45adtnBpnb5JgU6
	 uXrw6yssRoVTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962A5EE0AEC
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177050183360.23424.5748625966307074605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a311bf13da334640b559d7fb25abf3ecb2f67fa1c7c99ab38ff27bc9d79d1c9
Date: Sat, 07 Feb 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770501833
