Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8A421FF21
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 12:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779454354; cv=none; b=gRLBCuQYmF8A2WMFo/aYW/D1awpzDCtrz3BeXUyCGiRunAy1BmXE0KZ626PaCnKHz39VyAwTqSS+SAHESxAEDT6Tr1N2jrppKmuAppGIy4bILqO6+4MB80w/nyGvRNQAhnmc416s+ChMjELsgpqeOPjtKF+KXQxMN1WJY00Fz0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779454354; c=relaxed/simple;
	bh=W09jEpX6toTvrKwGr1n4UUYPcN7Ky9NpZHXPVCtN6vs=;
	h=To:Subject:From:Message-Id:Date; b=pT+fbncXsWmuBdfsMEo9VplfPn52y0vcP6uaJIto4pwbZeWqPC4LU8I8vRv3hdLK3+6sqms7Ax/N+LGQsnGZpI5x/Q9YMs1GZHC8KTPjW8YxhB2YBpWqMznqVThjXJ7EFoQ2B1Fc3OF8AQ4Bx+jS+fznepFP2Dn3JZGFLYVsCkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tB2UaIqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tB2UaIqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF006C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 12:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779454353;
	bh=W09jEpX6toTvrKwGr1n4UUYPcN7Ky9NpZHXPVCtN6vs=;
	h=To:Subject:From:Date:From;
	b=tB2UaIqjiVS+cfm2yAv8d5La/nOCRfrpxYkmN26ZNknHGsB1g6pYjowPkkHhUwLSQ
	 SC1Zcne10RMVVOSC0h0ZnHa52UdFem+AANZjazhQNbAmLNbHQD2bRt8kE9ghdXQtjW
	 0cT5PVavS9IyLY0ZiqBebALIS/m2VDcyXJQFzT5+Vp9OyqmkY+c8QpgPDyBcDaLWPV
	 ygBr5zT7OfFrPm0c76RigJrG8VCO7N9CSQfFBaKiCHEMyGW9cDnLOFfwH+fv1WcXN9
	 wC2gcAaKXzQA++IFUJSf2jqeHevhN2Za/uIM79kjyBdovmQLdNI8Z8kyrpoWAkimEP
	 UCZriTf5gdHcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E86CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 12:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177945435372.31590.17579848983581989750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 917dadd57b8e16d2568d1dc6381116859ed8b20d0efa4080375a2be20ff73789
Date: Fri, 22 May 2026 12:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779454353
