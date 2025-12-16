Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2722627A12B
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765881834; cv=none; b=RmwX1TEzMIws7CTAveD/JsW540qUqUiAOnQnksugwvfgct6KMI8PO8lKsXVoFG9oRMqEo+YNtfzNN2UwhsHiPmCnYYXb5AICRfGb8xLcqUwSwB3dJVgw6dJnyb7Wx/8c5tHxVl/L//zG5HEJph0Cy2/KHQr08hXEZr6aoO0WJqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765881834; c=relaxed/simple;
	bh=MV8AGt0TyvyjfXq363VlcKuMp5E9+V9abff0ZFvbvLM=;
	h=To:Subject:From:Message-Id:Date; b=mbV9Uhy7CKRroTjV6PLCbX4+lIaxYL3uTlZyoz0RdJZ0GyPn0lbQK9G1H69d6b48lvCp+d6M+ayI64TpifIisrc27AzBZEitznIOhof9KM5kRJ5ocIcJziMU1C5c1R5vy9pUY0sxvvMSuAoWrD+e5i3u2Gk6oTt1h3G0jnJPTQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npcXcq4d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npcXcq4d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15F6C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765881833;
	bh=MV8AGt0TyvyjfXq363VlcKuMp5E9+V9abff0ZFvbvLM=;
	h=To:Subject:From:Date:From;
	b=npcXcq4dnY/qruX54QdBQGve4DQgVOm+tDJZWvJV/oHxBC2r21A/Kb+lLuxDR3N9e
	 PTtk8/r+IfREjkTxb9n4wO64CZTZQ/q37ycLQmeDJUvssOZTuXFZ+OSS933LL6qm84
	 eM+ObAAazeFhBg8P8Ntc2uBAyM3nfFVDmJvNJB0WUEfW6N4CkF+09S/+sY23pgUedK
	 1tKUuxjbv985EE4nRP9lsR2qKFDhfb6AjLND44m2Yej9utGOifcwJT5en/8dK38NF3
	 T4p3T6UTjaKJh3GRwH1BD3FJr89xpTtcLo+JsIikNiDjod6xy/g9QiEtBORtrfZgSN
	 ghUSvyyONHUcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925C9D5E125
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176588183358.3897.1830910066872614403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b935713d827b4b4cfdacafe2f3f34723eb852a4d2e86cbe3296c5adae41c0812
Date: Tue, 16 Dec 2025 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765881833
