Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D207C24677C
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761697793; cv=none; b=iNj9/diycYTORFLr+s736ovSDxI2D32JRN06mEb7FVjz1ba0rXQ1PJHk49dw+BBWsPCyoZrUu18N9NexUA0DJfuoxdyniT+10TEfLmbj9zwBHPQkodVbxBIopUJ5dhoaCN52Vg0q1ku5btiK2uryDGXPQ3HoJGygUNHmR42bSjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761697793; c=relaxed/simple;
	bh=xBgVBmMH+LVbmx1IxXNurgOSyUh/+tlTrHP7Rj38oZk=;
	h=To:Subject:From:Message-Id:Date; b=NuskhYg3rg1Y99+OkeJGv15t42eZyiQm4e4QXAR2LIxyOkVi6iCVzhXidnJQIHPLnsyowEYrDe9UTnUuYDGpsPsqUdWkEzCge7ZN7uospfpvUhJg3bTfe3WH8BGq6nglDk4relVXZdkKYwM5RJCdOskOf7lS0zeMQ/M77EWQFGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nd+wm2Td; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nd+wm2Td"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E75C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761697793;
	bh=xBgVBmMH+LVbmx1IxXNurgOSyUh/+tlTrHP7Rj38oZk=;
	h=To:Subject:From:Date:From;
	b=Nd+wm2Tdbtgv8jxK4EqkEsC9nrNaOu3XkK7atzrwkRa6LUcTns70cSuTA/FvneS0Z
	 BVL2gCEM14Gj39SBqCi08peSjnhJreJv0RC7uZumF61J60tARqZ0mHcYTTHObl+KOA
	 rxLurw9jqwo8xDYmJGDR8Uv2X+8f1hsjDsPYqzP0JrsZR8KbV6Y7f/tSs4M5SsjKXA
	 xH07fhRkrxmT+001+Uxlcar+8c3meuLyz5L1CSeWlf+4FKZvJ6tsHF/tBy/hmG/VFG
	 Q62F2Uaux40pZVBwQZ8GnDuhZw8QGQJwOoHVBBvShaDQSBt95z9YpgAXeD0IDuNjxU
	 aHyiPESkEJ2vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97858CCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176169779360.13936.13703607390045239194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98c1d0ea71586a96445eb5c62e5dc52f109dc03bca00315a04d95ee217ba7ce6
Date: Wed, 29 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761697793
