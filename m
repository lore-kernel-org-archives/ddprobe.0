Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B6212CDA5
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 03:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787889034; cv=none; b=phLEfC0kWDhT1DzJtV+zETRI31u8yFP/7PCKbVhnwS+8pxSPi9bgZuWtOXUiDdc7zmUKY+PPX3JjS0pULNzxPBVx219ST1fiwOB1Z3Yui1X3804Ek2XzxC9aIL1DpOemllH1yAXczL02UuS2WNDkDjb5DaMT3ov7t+BPhNSsJ/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787889034; c=relaxed/simple;
	bh=/aFDS7nuuqgpG8MZ+BnSDQlG6EBQeXPcFlxRiOKo0MU=;
	h=To:Subject:From:Message-Id:Date; b=NdVJt79PETvqy+8fL2nsTnwsBK7U1V5rKy3lb3i3jfXkupNo1Ox80VLJc6NZuyUj/Ijo9nyvECWeq1UaM5BRwifeVETGti+ojiJxVuvZl2ExzDRhE5AVfbwpxGaRWb9+EE9t+Rn9yPeSFCOl21oJ7q3ZFKjv4nWNmr3Hur9e7Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZR1Ihpa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZR1Ihpa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB1CC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787889033;
	bh=/aFDS7nuuqgpG8MZ+BnSDQlG6EBQeXPcFlxRiOKo0MU=;
	h=To:Subject:From:Date:From;
	b=XZR1IhparuxNOX7XQT3LijguYNrxfrwhz2u6h/qFZxBPVPDWgZ+ykeDJhSilhPp6l
	 SlkXKT6OgWxxeo28j+o7jfD05CDtTkFfJYc8dyXHqYcGUwNqyJf1DY7oJLmvk8uQi6
	 0VZDRDKHcX3BL+xuiB38xAoOuo8lEzBUOEqzEQ7p8cOhoe7KP7jIQmwUsvQ4HIgIQv
	 u+Cxg52rT+o7lLUOS0UQsNKUqpeWaQ63tYtUtr3fSPwdf9Rtxc2iy3AbUQ8zIeipyh
	 AM26o5OA/F825dHui7YVa4hSQ8pElOO6kBqbJ/KTMfh9eGFXalDCXnUQ284VyUUXiR
	 h75DdHpNzfn7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A98C61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178788903372.15145.13555590714223381252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d26b3bae0db1f0c65a37b19c4c960ebb17211622c07c8d18ab175af4edc06173
Date: Fri, 28 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787889033
