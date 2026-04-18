Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D07919D8A8
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776556654; cv=none; b=SDj5ZrEbX/LuApZFAo6DBS242TFxQcRXVTeAjnP7WbLsxP+FBrKx05cyndafVSSkOwnPW0iovW39huxywTv/8ZlfztDB+PhgY4RWfTua1uzUcjypFtQLazqt1wPhvA+8aL0QTz3WiC0HcrB6zfJDCw8a5YNmifWvG7VvSjD8jZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776556654; c=relaxed/simple;
	bh=E40FXeDs/zAKIRNYraaddE3j/OUHNUu49XdcIXVf9aI=;
	h=To:Subject:From:Message-Id:Date; b=deOVNstFrYBBka0zg+a48ZLrDJXDOK7ktDZ29npdM/t+cBFHq3CKV7pEwrGGLz1wguufEX0sbDsO+WlG1hbFptfII7F1xlLbB6R+uJNbQ2EQIgTC9LIBJcicjFi5s4WnijV5jmlMhAX3f0TrAOM/RcyoxrYGSXVCoL+LDP8pSic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/FQeXVC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/FQeXVC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD002C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776556653;
	bh=E40FXeDs/zAKIRNYraaddE3j/OUHNUu49XdcIXVf9aI=;
	h=To:Subject:From:Date:From;
	b=l/FQeXVCpuCL1l6uBZv8VYkKcdZS74g7ZYPQf8ukNopWSJKd8nSfcoSi1hxqWpyVD
	 I1Z1yihBAOxH8kPG9NzxIc5fH4Gsd64XEYLIG3BaGFdfvEjglCn3AlQn3D1UuR/CxP
	 f+AzrikF3V6ZFMivRXO7SDJfeS4dGKHJ79Esi+37RiFP+b5Z6FvN3h5Vf9TdOwSr/d
	 TMUUSSt4QaDCGtYXKYVztCiYBGS5XoiaX+i99DbpmBQPcjpbV2lY9IA3GNYBQQViFU
	 VlZqMLuo6AJtY/th2WFFgTro0B96AophRZDeMn+6OC/8EIv4G2BrviawEhiWK2EMuz
	 ZUgYxVpODhgqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EE3F99C95
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177655665368.7557.5363262475380660191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c18ea449edc953dec7bf84a15c53ada2e5a55707e607787478fc657c0db1eb24
Date: Sat, 18 Apr 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776556653
