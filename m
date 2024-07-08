Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 745BA1F956
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 19:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720467983; cv=none; b=P3daGo2Os/CMswp4MOpEjFeJsHXKpLTn/fWXBpgXN+Q7TR14u+3zBlVNH4Vzve3TJwiR5h7vEb0NmpXQgF2CabjONJBpuwYsQuklMOisNJmMcvWyVll75YqvjpAhHITcmNHthd3HRKSN3JnBzI0m/dIzNi0ZS34o4kge76QjtoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720467983; c=relaxed/simple;
	bh=4lhDVRb5om5/3ftBbxO+tIS9HvmWh6iC/XOhLGXDxYQ=;
	h=To:Subject:From:Message-Id:Date; b=hV5dMCIRcA7rXyqoXQ/FqXfWZjIakvFUfUP02Me5ZxjSjnsmCqEVkTH2fqN8zqnXGvxJxNnxTYZDp4VFnL86n0ZbXL/KxjRTJu/IV8k+71n5oXmrrl4n5HZdHSw8RFOMIw/EbGxZMrXtEP4EWy41EAIvP0RyvYnwcpiYM8cAuYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1ZJ0qXo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1ZJ0qXo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE879C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 19:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720467983;
	bh=4lhDVRb5om5/3ftBbxO+tIS9HvmWh6iC/XOhLGXDxYQ=;
	h=To:Subject:From:Date:From;
	b=D1ZJ0qXoYcx8IUkpRvmXR3yvB55IxkuF1JnqyvKznEf40FSXFw+LQaFS5F4zyN6Bt
	 bUyDsj9ygPsxTdvsCcad7srEVhHVb2jfQqmObzDDy6k2MJbtoY82sbC3NX36Q0tykd
	 2MJzPq6DrINfGM/0P+T6Tz0hEvF5QS1ML6oMOvYT04SpeZL0ZbZWsJiWQGIPKtTe3X
	 WqAwg2vcIAZ0dVsX0fdUzJ7xS4PLttgwBvqT8PZcbg/oKXlTIp32pd+/AbII7TZ4+o
	 nedW7mrvjfvsJ/f3RB91Du1cPaLBo6OXLZ7GUrvOteB8yK2HOFPCww+GyTlZc7sA9U
	 /hQxwc6LQNnUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE3FAC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 19:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172046798278.20362.5426109844537351385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e942c604d7e22aca56c1772d7537870e7fb9528f41fe2018045e0a2059aff5a7
Date: Mon, 08 Jul 2024 19:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720467982
