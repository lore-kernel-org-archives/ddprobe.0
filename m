Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B28932ABDB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 09:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764927174; cv=none; b=HcEq5elcZz3K2yjGCB4fabLWLGDpnSVj62kOgDRQBSOxcR+5onQUOObRTiRsu+wqUdae6i6/ei5LqkyYCN8DkWR24MwU3KzGpIT1RexQHfEmxeoKWL1QVoDawZvWSJk/kd/XbbA7BORhzrATuqJ4BO6yX1YLz0fKDjqH2nGibl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764927174; c=relaxed/simple;
	bh=WlBMMWsikqI03z0jhy0OpdLwH6Io3gEp9qfN2bKhG2g=;
	h=To:Subject:From:Message-Id:Date; b=Jvo0GV4fp+3Ib1osiZ21HucZAnLX6ugn5bWQ010+z40XJbLCM7iAa3S1lDtI3Rg4b/zIpfikyjBjAgFhOFzn6jTyrUQWVnslmqjzyzSzRUyExEJbbDwzxFpSvx1RGXVc8wxMiJbmmh8KezKr/nijrKV0JE636R9ZFtv6YqjcTVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUWYJhl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUWYJhl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC146C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 09:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764927173;
	bh=WlBMMWsikqI03z0jhy0OpdLwH6Io3gEp9qfN2bKhG2g=;
	h=To:Subject:From:Date:From;
	b=iUWYJhl5NkrjFuZawfO8bBSO3n/vd4CxRPsajFVRjNscVM1GfZDknRnxR4gO5vQuv
	 pkXxptGPJ7RcsirDd3s3cUAYCkw4uskeJXgF/VFRC8r9u6e5G5YNeycyH+Sr9rVec2
	 0Yg0DtmC9VNxkPDnzoRrypHYINQjKOgDn0nFFKybbpysGo7UOTpHkzgUsPSkkkfMqP
	 SvRacrSgE2G41VmwqCNb6ylON8/sqS5+mppI1MSlxcb/ysLUYcz9+JSImVg3W1Cwn3
	 F8EmpUD6QVkv1Fr81oxt5uVdbMaWUWGyye/eBezzA/CetiHiH+eLn7qmiPitvEv04m
	 otJJmH5w51nMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC83D2F7C6
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 09:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176492717362.28192.10123075342284356931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f870b1db127d70eb19bb1e1ac772bc95cba8cd92cf90bf516d5ff7b46d7e016e
Date: Fri, 05 Dec 2025 09:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764927173
