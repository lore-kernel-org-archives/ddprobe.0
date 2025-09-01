Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193D92A1B2
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756732794; cv=none; b=GThE07iwmWBwql5vbSv/Z/yfLv2mbBy942uDPBbD3z6djtrTAmN4yKXJiYyMvMn5mxog+4XWqHoWbQWpBFAQIPrO14qPHQ9Yv/JgdY7/fAulxXMOkDgApcrlAhASqx3+mOnbKOUgV9/SR9Nq1jwDe8peEybfkHYZic9mBx9l2R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756732794; c=relaxed/simple;
	bh=0jS/OGxwW5nybUlzhvWKf+XP+emPSqnx8z0xz+3NwU4=;
	h=To:Subject:From:Message-Id:Date; b=W8uZz1IFwuGXSf3XRGUT9nIivkaZYCc1C2MUGyWSrPwkXZAv3yDhc1BpJe3XhUpc3UAoRWdz282Mgi1Kx89ZMKnlJqjtOFbg332AN9pLBYOiBcbGilooq/m4OictRIDcbZPoBPuXbyQV+2U6f9HstU+XNPhs02wbBTm9lcp6f8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7PayelS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7PayelS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5042C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756732793;
	bh=0jS/OGxwW5nybUlzhvWKf+XP+emPSqnx8z0xz+3NwU4=;
	h=To:Subject:From:Date:From;
	b=T7PayelSOG1TYBA6Imgh6NfNRwyayo5k45NAQND7ODzKUX+2dDPJTH11mXZsvPSsF
	 0suLIwiS9v2FW10fFRiHrpy6H89HQLFexJkdkVHLwp89v2QOqEfdYnW1HP0/WvM4Dy
	 2woFbZzCzUxSuO5R9WZmV4WMA9Dw+gpiax9nYlJJrPOtbrhNuSIbDoR3YFTdzs24VC
	 wt7PcOZ62yR52is20DVWUqpIU/2vhTmIEuOX3kTgLdGLdOtLa9LSGqEMkEGuGFxMz6
	 su1qA/n0daZP7fEKA95VHvJ+QzQO5CKckbMKOEkKqHjfnEJ807MKNUv0bx5ZwbuLE6
	 x+PXAe5Xqa4Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929F6CA1002
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175673279359.25080.11483595035374937952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4695ac6d4b42fa97ce4121c235e8b721c124eb82369e1af33dee843fa37a32ab
Date: Mon, 01 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756732793
