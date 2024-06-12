Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C4B71822E8
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 18:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718215703; cv=none; b=cdqC9kf6ayJjnjvE9rifxTiFbQPTUxOFYI3BVEWSbhazMp6z0Vi5bmkUIHCB0H7KOvnx4dLu7b4fgXHVxMBEbrL4D/mpRq9SMvJdWO1BTwtX9GQU3md5SskABUVcHHok5n92BiuzAR+hPc22eVA4i6OoY5gjTlmcVpmKFSUgpes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718215703; c=relaxed/simple;
	bh=jLtMDhPwkyvIRCXbfShABsshp0iyy5UHe/W/U3xsRtQ=;
	h=To:Subject:From:Message-Id:Date; b=T14WBaw8a0TnBkFIpTvnaAmLVIdxMi1l8GcFCKIDzHelp/4IMoMfEKa5f1BSvOyC9U9vA+4tfdcF7C3vhRvJwj/lk2EFrnzCT4MJEPJbgDFs8NNrxWU7uf9oUBIgNOgutp6NJgCkKoxqbBQeoNoibmtki/edzhS/VbRE9wGdDUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlbcKOku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlbcKOku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6D36C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 18:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718215702;
	bh=jLtMDhPwkyvIRCXbfShABsshp0iyy5UHe/W/U3xsRtQ=;
	h=To:Subject:From:Date:From;
	b=rlbcKOku9LOpztkg8evMkHQyK96zajALCxSN5FUNLnNZHUke8y6aHaKYQcB6MVLj+
	 tYBL9pqBTeJLs/xWcXsJ9AkcsEth2vVvu1JcRjX0f3GS6YOYpkL1CfbI5AkZ+nwzBs
	 j882cQTF2JdfZ0YA4anQ3qr4WU0NAMVTI2XqBK7XPsk+TCDOELICZjC76lYXV+vNDB
	 VLEduVVMJWEZp+ypa8zGI9SA7acu0aSzjzDN+z4VxGG8ijhrLdb+jVjqKBzS9R4fct
	 TUttaOCOQezEXKwSyUl2e1XfvvWptFZwXSzuJUfl7ozt6yyxL6tqn2ZwoeCWbx21Oe
	 9ibjxX4Zx3y4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7068C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 18:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171821570279.13022.2372708074565846180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b494cb902554d6727f872e1e8023f873ab6870f1f035c041a0c56fc3a1f7468
Date: Wed, 12 Jun 2024 18:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718215702
