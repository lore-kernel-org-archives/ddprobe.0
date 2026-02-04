Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12FC2296BCB
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770185634; cv=none; b=p28gMzW/u6wwj/e2fTgiPYCzLZrf1J/UxZ1OR1YWZk48JCWbxXDOHMt4taBIiwSs+KOpJw1bdsDKRVBBFCPDCL72QHf4H3bm6mOVhghB+TqYpeDfSwKZdgT8YPIAd4G2XTDRKKUPA8v8VD/DwkQLJWN+zBcJK6yTCNtXT3mgnFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770185634; c=relaxed/simple;
	bh=aLTxxqXk3YHoD95HtLjfxMF3PyRodg31wcJ7PbQXDxo=;
	h=To:Subject:From:Message-Id:Date; b=Qxk3CvW5XijuYJFZ5SOfKN3MvEopGUfNzknUkE8rmqnY2saKcIJau+0B44ileL68RQQQMlo4M6dcKYxZrHKQ2W3Y9htMNlespBKoOK+UHY/IAia2FWvt7KoW488irEY3dzUWtSiE4hzm1mYArCiwR6uULKbm2A+zXS2BFbIiV7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ti/0i6As; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ti/0i6As"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C6BC116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770185633;
	bh=aLTxxqXk3YHoD95HtLjfxMF3PyRodg31wcJ7PbQXDxo=;
	h=To:Subject:From:Date:From;
	b=Ti/0i6AsL7oPqPtaNmIvu0kMdlcgsBz/zIA4Z9/4iWCDWIsPeEwftT1SESIqdRPSR
	 e1cLJvZ0qLGXtxMcGaBAPDGzu8ZAY1zYmXRpiV3MGLjZn/MAd/8zOSFLhrhIbrw8WF
	 TbGgKRYe+MchVSJl6ZWWK37CN6rpaPLeinctIHdGe8s6LRUVdCj2aGrs33xPin0Rdc
	 U/3FqTpCPTlTJ7QpkFX5WfvlvurzWJWj+ZIYPkmEgZ/ej/dMfSIyj84tMF5+wJK8xu
	 niz5BkHKrExiErOVsGc22Ca6AGOQcsik8kLIlef3/FjO3o7eDbbaxnE0gcxwCSdNap
	 ntRnBT8V6aspQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9299EE6E815
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177018563359.24193.2936765760604698461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16589ae238533aa4879ea6a116da22bcf7cda43ac4535d7e4aee12c01527f0f8
Date: Wed, 04 Feb 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770185633
