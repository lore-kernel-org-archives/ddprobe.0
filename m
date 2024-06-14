Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0B81EA87
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 07:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718351903; cv=none; b=VqHgl8Rn/RGOCw2+myMHQa54juE1fsxbYLuHQvimbpm7uWDAtTd5Fi6UVmeIHNalIqY07twPaqKq1/3vKv8enD2nhdhmehQja7ua+h3+TRbCLXFVlXx33pjCqRWEw4qVq3FquE/84NPX6rD/X3OixflWE2vNuJNclRSkKOBogZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718351903; c=relaxed/simple;
	bh=3DS+HKgT2xCaq0glDHlKdQ0KxVgrMnkf02UQNlftbU8=;
	h=To:Subject:From:Message-Id:Date; b=ozqdjPajm1ULETKCL1cwEkt0QOTqSJYkFVE0azr0I/euJyfxzX6EEX8PdujmCo7wJYo2HHpwf8w7fo8dVuV2IOyTenGFiHQbtENjjL+R55ASjD3VbSiNSBBt2mPv26J+FdHUDxqZr1+YfisNq43GofvlfULVx9pyUc0/j65PgR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H3zal5Hb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H3zal5Hb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5A4C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 07:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718351902;
	bh=3DS+HKgT2xCaq0glDHlKdQ0KxVgrMnkf02UQNlftbU8=;
	h=To:Subject:From:Date:From;
	b=H3zal5Hb0V/ixZk/UPQ2h9tKAcs1D8JQcjwNuqReX9lUPmDABpCu4xQ1e3TvAEQh6
	 W4Hgbi21nKEeWc22az/e3tPhXdS9iJ1Ob5asn/KvBC0NMYFJW+clXmuT45b1wxRRle
	 TPCdLMyBvka7E3qRPdTLQ9e9s6ITzSQI6fhypEwnZjRuCCppWNh5RZfC72aAcwwHq5
	 9ezXgbBmZd/9dVHprO7ws7Fqnj6TW6qZYrbp6u+UgmqF6VWVM0ir1iAzwyki08QkS/
	 Pr7yuB8TXXcbJ0m4aT5giRBXmRvCoC9eItj64Hv277HeTSr8nvZ+Tcv5hBWZ1YrDfX
	 4w+KYIi/9dIDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA37CC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 07:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171835190275.16440.18093971306647686307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7796f1faccf902ebb72a07abb5c16da0d9d71882f433e57d19b7710d03465ad
Date: Fri, 14 Jun 2024 07:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718351902
