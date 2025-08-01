Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C4C22FF2E
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754042394; cv=none; b=je13igelri1JA7zUEHvx8ddD0Bd1TnoxO3tdnHHVhsrLPAUTRxNWhni/lfMdq3RtD3VOs8tL6y0UtPtwQQXhBBBI6BUx4zjAMkQw/+X4CQRSdtYUimhTG6dp/bdtgfvxffPp7mZH57L8d7F3MRONvDc2MELTGPDk28bmB2y1tVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754042394; c=relaxed/simple;
	bh=+zM5jDBbssR+7IQgTW6Fr0CK9eXoAcxk9mRYn6NhU1U=;
	h=To:Subject:From:Message-Id:Date; b=RlLZY99J5ywI8lnQRiJFWWCmoySepOMVDa1iCFHrNR2EEGci1TH6yoDFWyKTN4s8HYQJctSqKDMwglFSUXBpkKpAia9Xgiy6Q906kgEJmSNuifrIKZ/hUXLiyV3GbNOETNmXkKc4P6jzwYzzxtzg4kU29zYdfJGHB4bwHztcYQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZ0b28Nh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZ0b28Nh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E420C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754042393;
	bh=+zM5jDBbssR+7IQgTW6Fr0CK9eXoAcxk9mRYn6NhU1U=;
	h=To:Subject:From:Date:From;
	b=IZ0b28Nh3RS+1fPErnIvVg8z5L4EQk01IbZcybd6PeqRI8sJ2+LAL8Szq3QCzQLU6
	 smI2SKJ3rR9MY534ATUIvXszSvR2cWBeYkN1+cEhzDL222x9V0zCYqgZYcGEmpx3oG
	 ql+BhhozB0rIodTKIpvTZyiRiS3+fvcF/lwljPBpmWcm6jNtJoo5ihqkoKngVlKF4f
	 kWH+SkHgRYSxWv05kp4fSz5D6bzf3ppoHkFDfyjiqZWd2BDCU72sqmuaCD63ukt0q0
	 3Udj1VZj4okhUUQ3DeR3iCa1ARJngvye5aamNompmZBTNyZHkwIg6izb3oYVJwgHzm
	 XS2FXnrniMt/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3CEC87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175404239357.32569.1931082574111493585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ff8a75a83bd3c2541da1f0b4dfbb388cf9294f201b6fa0337941fab6b52f5a5
Date: Fri, 01 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754042393
