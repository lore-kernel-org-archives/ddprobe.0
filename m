Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D6619AD89
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744058394; cv=none; b=sOMI/oOto0oqSb2cchRh1x1cvwND8a5N0knKpiMXOZXzZpKWg1Dq6TQdPTUMC+1TcnV5HqntAMFxoL3Ll6e+3rWQXW2SxO+Aj5Hy9tlDZIk5nk1o6glw+Cw5fnYAjzUOiVJMF09IFmr/sykusR+py+aQuaG74uqUv1r/GpBr8E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744058394; c=relaxed/simple;
	bh=6wtl6Lo77cio5+0127FvBqCJdoz598+T779gIFEg4hI=;
	h=To:Subject:From:Message-Id:Date; b=lb2kztp4fgbpHWyr9Ogj2AmGMtIG50Fv7ErYUlL6D2V7L0bs+gJrOP1aeoXNYvtIhqtsrjkdqTiKZg5Q/54bEj5fN2djtNbO0goZwPb1TJK5Fg5sBmEhuTISsj+urJqJP0KcZFumPQXPq4VIbdeJgycnoTRTOXOayCqA/XvXMxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m32ZDDIA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m32ZDDIA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAFEC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744058393;
	bh=6wtl6Lo77cio5+0127FvBqCJdoz598+T779gIFEg4hI=;
	h=To:Subject:From:Date:From;
	b=m32ZDDIASzDA8PyxL9h67FiXx3BtqZ9Pn2ciOAT3AyOLSU+jxwisFf6ps0FeibU0d
	 lPIAA90ek6o2bCjswwzGGs5M7lY93EeCYKPBuDqWjswD8bflM09O6FJFuZsn/jiSOc
	 HR36lMtP/odB1z3BGBF3vzsDHTI8o6Tk01ee4DLajMMfTAgQ0XZgJbJCaCMb4u1dhd
	 GFc92sUu7EEO72QYfQDKhfSNXIExYv9gBDkYG5Q7ZHtTs3xqHRC+gBl4OAGNzFlxBQ
	 +thTfp0bxlrtl19kCoKMrWgOk+zRQMHXcGdqZ+aSKx5d5BiAkjdoh8unJtCaBAtitt
	 j/1SVBVPk+RkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9026EC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174405839358.6572.9722796373246192654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73c1ada6588d1337b504eb220657c6e3df418d01f05b4737e27df5df3489b9f2
Date: Mon, 07 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744058393
