Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A21E1DE2C2
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756020594; cv=none; b=jFTEAOu+kYUi97xnsu4yQWn8FxjjUKJ4di1gUucHQfUrDW3XXSQxIWghayrqN9xiwwbio6OvXCOj+zHT8ewkvTbIvV9s6gQDpNZwBPlt1vCDu4UovF/5/vzdCLgZECFvbcMATw6ZdiSMDWgPu6Qu+oBoUkAANwSYrZrkOYLfjCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756020594; c=relaxed/simple;
	bh=trvTmw6xuEsFZX6DQlQfcyR0g9YVMSyl6NwCRuu98Ok=;
	h=To:Subject:From:Message-Id:Date; b=LTno49ujSNCWU+hdXGdJXo8QKUuI64w6QffjVqtASMFxh+2jJ/t10znmekcsqKxfYT79EEJXRgiS+nUAXxWenu1LncLIvTMA7lk+Xp2eAZ9J7K1iz5+I4Xr7IipWI5x0hAXfcEvUK2u2jj01n8Tac5/h4nZM7e7C/qraEEXzqss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulxicr35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulxicr35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0428C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756020593;
	bh=trvTmw6xuEsFZX6DQlQfcyR0g9YVMSyl6NwCRuu98Ok=;
	h=To:Subject:From:Date:From;
	b=ulxicr353AWUwU4mFYXfo2BCI7MjAA1EyTcLTcAp80EIbKplDUR8DXAGeAHaoKfio
	 b85JqAjnDW64k/6WGCwNwAB0C92ZT3VvKP9cXBiKkltIJ4baOVEl2qD1U13NbRJA0E
	 V3wvjkiDS+7wcsyTwbYf2vrQQoziM6GZTwhVl2Nbq/aNPHSekZfya5oibuwlS8bP98
	 NLbMziEMKf9sb82l4jqMUFb5nrhIk9VEJk51Teo/GBqCL6GYr+imlO7Ugy3DcdLqqK
	 j/AcbU4FmJ92daNRTOp3qbLWrstRcFuxB5wOU2xCeHtvJ59IbiTyMqh7qqjugQ7lCE
	 RIR22erVn6PcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F557CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175602059357.19074.14426132276169903293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b85093707a6cb2d01b3804864c67c9eeb0512c5c5111cadfafb28441a8f96c50
Date: Sun, 24 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756020593
