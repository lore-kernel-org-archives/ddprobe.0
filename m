Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31748605BA
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726870554; cv=none; b=SWNWP7GHXOF9Z0J4dBt5Giu99ubpFz++cDE/AdvbDnHViDmOQyn7h6HidelUtC33hV73kJSMJsiIlIIYFR8XnUqyHijFEe7cI0ht631YMboT2ibJRg6D3PdAJcaQY9FCuDbOn88ehmHr+0zJUohnqa/xK8bc5ARVfUtNtzhZN2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726870554; c=relaxed/simple;
	bh=U+bXv+8hIkkV66bEjU4JMed/4csrlQeCeyTehXNKe7k=;
	h=To:Subject:From:Message-Id:Date; b=YnnfaXE+tFnbAgeDlKhW8Cp6RdiVAfW3q6phx50JrX68ZxuiE6U9sPopskwbZY8SI3XYFodroRdlo696laxP+U635pikTqACSYQnuLPUsN6eA4n/aMgLrWNxM58e2nnQUiK8zdGY8s/m2mBEc8bgoH3bNM0ntOacJYbRWTIVt5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+DqGdVf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+DqGdVf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6AEC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726870553;
	bh=U+bXv+8hIkkV66bEjU4JMed/4csrlQeCeyTehXNKe7k=;
	h=To:Subject:From:Date:From;
	b=f+DqGdVfPNU990ZEjv+R1b40wH2HZz+mL+/DvA8xqQ+Hje0GoHoOyrTOxu6qn/q4R
	 vBATQFI7lnoisE7YcIi7Dx90NYdGgaDMdiMKDUtJJZ4Wnp9I0n0x+FwxpPKmMk4Qme
	 YkOViUeMT2zp4Q9g9uQ9/RxHIJze0wHCCQ0UNMq5Je1ZT70knKirJAQ4395FrMO+1F
	 23zFWDNKDMr6eSBkAXOoc7rp7lk5zlCgtD7al229ctxkwHIARMVhNSII0aQ7yaeSth
	 3igALgOK/yFXC7xPrJUTL27LksLA5pkyO9hEER2iVDSyolwd+2JD49PPsSQTZpPlRe
	 RybrwUf34Uq6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B86CF9C68
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172687055359.8756.16375710082703407597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85c2f10795fff06c30aadf0a28550cafc90bae49723773dee8a99780aa59e8f6
Date: Fri, 20 Sep 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726870553
