Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D95B3BAD90
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777392454; cv=none; b=D0UrzG6+I6wWp4cObthjK4svSt2K5jT2qdBLVWQ7rcR347vacKWENMo2Ej/7oWafrGNb1K9a876oQRY5WTR9Pyf1qkPXnE2lBzpP17Mrihh4YSNjCG/UQ0GhOlUsBdaZWTUNy4d8MbaYG0V4lh47CWM0V1bJVmxLSyiNRde3R3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777392454; c=relaxed/simple;
	bh=wQJI2STIyyGJmN06kVKbu/30TyRm4imeJtqGEZx91oM=;
	h=To:Subject:From:Message-Id:Date; b=ou0MyiqZVfQhLJxwMhe8LMeNcA7ss1PgHaErOghG+6onomiwFhydHhPPfnzBMflhkIIo6bTnN/2Wc7JxYSlYP23+qoTT2yfL4hWyNLjcnZ45fTWz4j5dVtJFvtQHLruvCcUjDVYkUeiBgmBSQcGtwHRkR8ecRMPM0Or90IOCHdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXLBnhFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXLBnhFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B60F1C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777392453;
	bh=wQJI2STIyyGJmN06kVKbu/30TyRm4imeJtqGEZx91oM=;
	h=To:Subject:From:Date:From;
	b=cXLBnhFYkpEl8noLGGfpsNpKxw7MQg1jmaIXYD64nuagQdBdViYdWJLHqoMrXCxkU
	 BWvXEKNsMhCCRQm6AUgma3qqNkOZentCpmmlhVN5nmPB2JWQ0RvvStiHExBMoF4Oo1
	 PYmDWqFbPuI9t7mMqG1TwdO+NctJgua6upgIqxjCyn/tHOvc7SAJSfwFBfJdFhdLE7
	 Rjqfh5+lMDczR+B0GL9ECOJMX8ApoYUQz5+kfCrIPTAlrHNYwea1IprCPdA9zUIC62
	 pDplG5k6IWOWLJn4b1/H12ot1HoUpWOOCzGIik5D+Qh/LdU6Ses8ANC9Asll6czRmD
	 KfHOqYPEfpK3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB009FF8868
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177739245369.11861.6740712012383335334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a52aed9ba8fcd1991c46c567a82ea3c0456427cde249cb258287b8df790c9b3
Date: Tue, 28 Apr 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777392453
