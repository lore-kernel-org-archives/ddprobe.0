Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF652586C5
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759877994; cv=none; b=YxQoEW6Ycw2usstzMs1eSIcyaPfn9BrjOPuFHJ7PYGc4gvgPVejPI/MbhOqS2mTs6uEacUNdTzryYPHp/zfwcGGFwEqKDMW7bX51kcbgpSUsmKXznKxyqgtVMkFKLlAWaVkvKYq7qn7JOZgIj3nQLwD3Fb8+L9gfO3NkhHmVBdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759877994; c=relaxed/simple;
	bh=as0+DW8f/hp2Ju8a0bzLRI9xfhc9YlB40aevr4MLJPk=;
	h=To:Subject:From:Message-Id:Date; b=t4Las2Cyi0xj7XV82XlZH5Gpkf1NQbYjAiH+nxjCgdoWQpMccHw1nK2a5LYATBjBvtaeUVn2Ad1Lgw9oFLpiaae4D9kyr4hAeMM2vbU5Hc0WmpBA1CRW8+2wAWa6J+HehCFsn5iBHbDQqzw49rB1vh8zpKe7VqaxO9s3U3vLLD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4hU2Mc3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4hU2Mc3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0660C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759877993;
	bh=as0+DW8f/hp2Ju8a0bzLRI9xfhc9YlB40aevr4MLJPk=;
	h=To:Subject:From:Date:From;
	b=T4hU2Mc3Ea80NANlgQ1G9Vhcui2XTfMC3e5XizsOoZmtw/8xgBgEgPIsvq1u1yZL7
	 1Wm1xGdlWbu977cGFmOyfHT4L7WLrQo+j9nnbj9qQci0I+TLkdpjDscD7Ks18KhzS/
	 Lrc16Ktc0jLA+YphCabu1sH1WURJlTK+knNPmcze5xEdK5apwcG7QRIWH/xoVB8Uw7
	 P15Kplnjznpvh22dHW2/XnRTfGXnAglHwWekq/SOvkdCKyLSe0V+V7P7UUMuwDt1Tn
	 OAk9u+v1/co+OlVgADoBj1DGJl0chaOhhZrKxmZDDcf3U9uu3q8UPVNHmW07OLv84h
	 IEZY5DuLbmF6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9083ECCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175987799358.22891.9688178812018181911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12e61f5e29f3be5530d201a88a1583198948a8d046f8732152bb2ddb5a9e0261
Date: Tue, 07 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759877993
