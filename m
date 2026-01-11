Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289AA349B1E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768161234; cv=none; b=NWHTt4hlR1HnsaXNIz+PGBxtlca+DE9eeqzQIjG8iYtxL7v+mraWZAX99VTehzJuw3C6idT5AEeHrwUl9ylMTSBHC7v7YsESUIKzVWd+BpFEL/7fXqPbmH9/yDRzefXX40kwIyZggu4vCkbljcvC5Kjz3bJKSTnsgY2jXIbFtvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768161234; c=relaxed/simple;
	bh=ffwVX7eGTPdNRfoP8CQxu6IPIXFHchl4uGpAiukbG2s=;
	h=To:Subject:From:Message-Id:Date; b=Z+1gAfA50dlBolI+BzFBrbFE4NoLi23mwzvGKm0F0juEDH1Nn+IWcMMwE9wrwFWb6k0CeWlCFMf4iuC/bmjOcWOem99FgckAJBt6El7QsnJra5KS0/fw+A706ws1ZiJ0XqLv9DfPZ/vwTr2a0X1kOavMRt11KTzWOviTs79MlyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8lvTL/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8lvTL/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8431C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768161233;
	bh=ffwVX7eGTPdNRfoP8CQxu6IPIXFHchl4uGpAiukbG2s=;
	h=To:Subject:From:Date:From;
	b=i8lvTL/d1EvIZ/rVYUr/BPUIs+r5Z5zsF9L3aWzlH7/50pjryLRQcEq00XvYOXzfJ
	 RJiOqulasD3BTgEK/tAVwNTWzX/wM2M1qGiW8SwHAb7LWXE/dp4r4Ot/2QZvKrLHFt
	 oSdZ6oSLqMNOM+Yueceok8snTAQThuD9fVVYCQJh1kL6dmf16McxtGv1xg3Qz5vKq4
	 rz4wvq/hDOhrfoaXVb9tnG878IRywSlYf2/FHdSPLV+ZXhgpUP6mA79waiBGG8pPWy
	 4xmjQb62Qj/dn1FrMMfn4iwc2nIiWejamcWvZaM2lA4E8YUKJfLI+GEERlc0RmgOPX
	 TjqYPqAKndGag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93430D2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176816123358.11767.11816511028550431584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f36d5130253ffbb6cf8d9ca04bbb78915a39cae17ab65c7887fab93196655ad3
Date: Sun, 11 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768161233
