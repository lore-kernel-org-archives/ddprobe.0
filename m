Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32078207A06
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733258154; cv=none; b=NmTAG69w6ihyV06scdvTCtNBSAFhd2l08XeuW4S8hXRItsRHcE+3btBEgPd8BMhCqMrajYeoDL0TjE6ZsDcYA8FnOSKYWspNlPbgkdpqgvXIz/p+5ELeT2r0CptEVD9/YjoBjndiO+CgxxDkvHAaRCBkqqDqpfswyfiozUheFWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733258154; c=relaxed/simple;
	bh=rUBJ0gKX/bSPYtTmfncxW8bOy0HXsAyyG7INBhNDatg=;
	h=To:Subject:From:Message-Id:Date; b=pFwQN92WbnT9wXl+PZ18/pK955qBVX25tVbGelCLUe/DXZCAGFEKukOi/zmTNdkz+wHbqZ7PSfO5ihMsBFMCrUYXl0xSIxqM88EMMyDHokJ47oo8q+8tsgd8gXFsynw1FVtQQxxiegVlpcLaCtevadRpITNeds38oBwPp5J10uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akKRzPmY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akKRzPmY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A7CC4CED8
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733258153;
	bh=rUBJ0gKX/bSPYtTmfncxW8bOy0HXsAyyG7INBhNDatg=;
	h=To:Subject:From:Date:From;
	b=akKRzPmYZMiZLPoXpt0cY+AerGo+z8b7ztzv3gF/SamNHrJlcl2/t9B3UdImIH4h0
	 A7AI1Azht8DJ5ibztB784/B6nmDEeH9KPVEAKlkrnFubT2gl7ggyEymyzny4yCvNqN
	 KKwV9tun9Z2a0cwmoKqPeRMbqVth3YlUcIhL2P5S02EW1gRCqmDOzZkhHXTGTyv9g1
	 VTAM3j51FQcdWqqWBYs0qfqrcfhEnbCd95xqn3ka1YSKTR57Zx6YF9HXQRqAidInHr
	 2Ytd0LA42bBihQJEPns9aoQZbIN4WTtE4/YJbrHxC6WstsBjUK/zgimM5kTg/RL5sl
	 zruChuSEG9Stg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB7BE74ACF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173325815358.7492.10136511449742313216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f781cf09cd1a750ff612dbadf907d803ef0ca32c77a3c25442d0207736de34fe
Date: Tue, 03 Dec 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733258153
