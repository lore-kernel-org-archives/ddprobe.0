Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525272DCBEC
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786462234; cv=none; b=eMdei3bDZR1JM79+B90lFqEibkIQ5rH1dUTZ4ODmZO/GZvrKN8wUAber2S8tGeH8dMED6bgJRHn+zBQie1lUmU2s6ew+/c4iqu9aOE0wksXhDxnaDEJy/AW4jPLYA2BBLN1U6kL8UE6dS/fwamvwnXodrHU1xLwHf5VhxIwNESc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786462234; c=relaxed/simple;
	bh=R801Pb0sqL5vGv8bBHsK1d5shwJQEzqAmiXVTR4h7W0=;
	h=To:Subject:From:Message-Id:Date; b=L+ftIgH7reUkdR7l0qpQCR1pURBs+ka0kPH850Te/adKHKFF62AEATUkDyy6yqdzQ9+9Drewm5Fgf4+/8BNo9GeVpGGxu63TmCJgxVzeo/Z9PtJgZUzy6gHrj7HlzgOwGFjOWiHHMD7QdDekOsy1m1+rL10H9L+1MtO1i9E5zwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DC4BBckY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DC4BBckY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF27FC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786462233;
	bh=R801Pb0sqL5vGv8bBHsK1d5shwJQEzqAmiXVTR4h7W0=;
	h=To:Subject:From:Date:From;
	b=DC4BBckYURWUbVD60pLsbTtNSPWV3p760IhDIGrDezI348fqGrPoQ/hMXy5IrZ5iX
	 cHLMjS2zmyfOmlk2B60sRW/yRCEBu5o1nNTxuJ/98ixyvlykKR7eJm6RpCbIB1MvO7
	 Ewn6MMkS8lyhmkHlO47jWanrlt7wHspl/Dj+zuOOK6+UkqxBveIOL11vK3OL4ZdP0q
	 JowdI1NtbG/tjYxBfiAeBuknywyBL/gk6VyPJxn+qMK2ctmtHJ0KQR2bThqKfcwUsT
	 HBwB3bTxEaiUGoYMRhkWcoPoLRmbGgTurrFs71e2jbYVWwcXPZF4RYi1EWeA09ruX3
	 NOEVUesgx5BCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB04C5B56A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178646223369.29570.13730776340762077544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e863e83d5533b760f4b04eec0d87a48f6beda5cfb8a368bf59a49ca8bdf970e
Date: Tue, 11 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786462233
