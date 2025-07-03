Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5857F134CB
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751562594; cv=none; b=P3npjRD+2Njj0c7BUUuUv4dvrx/7iEVPDdV1bdEG949xfHTrH1h31IZwy0eIyG5A6zrYCTNFdkgQc5axd9hUdng2MmKJQOzHLejq5zXJf23XwfPB5EkPkaX8kAYwOD5hh5GShzGqnKkOokJSMIaThor+jN+maSqhMaTUXn08ZmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751562594; c=relaxed/simple;
	bh=Jg7QlZhcSspDeAoANfybofKrqWgy/geEGhdzff8yJnE=;
	h=To:Subject:From:Message-Id:Date; b=cPOXNFD/dGDi79Ymj22Zvhy0u21sB0BKQxudqh9M6iYKEY+GnQ9IcfN7c/PS+FrrPkw/JQGK6NwrSN2NdA8ziNOwp6bQfhzANwhYMEsK1GePiEIKiyGNaC0Cc+gqDhFbuQLMkulMEm4Nj1+wHyWgx+drSPjfmsPaMsz/udrHaRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5l1ePJp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5l1ePJp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4929C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751562593;
	bh=Jg7QlZhcSspDeAoANfybofKrqWgy/geEGhdzff8yJnE=;
	h=To:Subject:From:Date:From;
	b=l5l1ePJpFeN5AilfuuBXO11eTivkudjPstGITVur/x//O01OfQuP744+JJ4hVtEQv
	 dO+9uvBsUkJmKgI3gKQaANRIdWZyOwQR+K/QmVEpo4L0z+CQe/b02NZTJTVkVU+HDw
	 6Y/rSfwYg1AXE07wke91LpD3hAZD16hvRaT3cS9NtogkPaC5HF2XbWbWR4luaRQi10
	 BoaQTRIuq7lTOpRrAtzOsRyqZDYL0PoCighpCo8vSXS13vVPvw/l51tUUtEHYvM1+k
	 iE3YdSQWnHIUrG3srxG7TqhqVa0krcPUVJz6PpO5aVlJk0JEa5rklhYjTY9oOxSXdu
	 Q0zn8sn6JI8rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91784C83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175156259358.16401.16115067994678041236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62b63ba5fa1bdc28dbabdef8065700a69fc86595957db2e126018caf0557c37d
Date: Thu, 03 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751562593
