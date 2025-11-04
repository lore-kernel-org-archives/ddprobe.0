Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C3828DB3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762216794; cv=none; b=OMlw9pDSH2ek4sRhKUjBq2VSSdWw2oMXgU17xldILi+wDosxyv2yw9pdSNaCb0/wm3yH4qIXCtYgTiQ0/qQ26FvK6xeW0fEu0ueOGlHBXjoaHPbbumt/kYvL6KIjnslbEzKtS+cL437sM+qsI8s82FCI84qn3hg/2N20zDRmcRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762216794; c=relaxed/simple;
	bh=jlzAOYOy7NKJFV9xDlQIpWjNx6N2Pjzbnmal7Br6HLE=;
	h=To:Subject:From:Message-Id:Date; b=RKDHgYi/QBU6TkFXSZeutSBnDFAN1igMxnrWzmmXSkyNo9HMsLCKWdZezadp8563f8SpGIFEFfPn7TWQghYHUUXCf4QIvkGyr+YwPLCNpnpviI4mmpgxFX8V8Pd3RSsuQJSh6p/QF9RZ655R7JKg4AqLXrvyYvDAT08XIqPhbW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AMcPz4yB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMcPz4yB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F997C4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762216793;
	bh=jlzAOYOy7NKJFV9xDlQIpWjNx6N2Pjzbnmal7Br6HLE=;
	h=To:Subject:From:Date:From;
	b=AMcPz4yB8IGh4MqdiZv0KAbHYFHyD0+eeVoblMUQyaf26LLA+QJQOqdh9XcQBNv5M
	 moGb8tK+LTgIdhugiCfhVwhism2aVLhCHD/xewPbQtP/pj1BrklbTH8c7lhojzIjpL
	 bM9oLTmhtVifrO00SZWKpqDZQ5VXQ3sAUoyQd4/hqRSN6jRAfC3ie2u6NgLBwGwbXI
	 +3ajyi5GhVDfDqV6jRVpTY5BmgvIvWrnI8Kb3tCwnnuMl7vNXrG2CpA0OzPxw1Aztw
	 CnSMtlBv1ZHylrR7GAV2fs4lHRNP4IG14GGxybzO+vxyJDaZMAeggMF4UqzXF8ORql
	 jJuaQ0+RXlbMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909BFCCF9F8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176221679358.31845.182314167767407018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65c2c368027c9c80990384414ec746086aecf03d2e967d5b8cfeb455f6ada87d
Date: Tue, 04 Nov 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762216793
