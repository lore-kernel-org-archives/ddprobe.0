Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316FD22FAFC
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737059154; cv=none; b=GkeYZxn8sMXjUopawrsW+Go6CD+TJmdoiKI1f6RpZ40bLCMXpySGTgqvRAamI41g39/Ambx6jalcUUiVBZueLOe1Ffb1AH/ll1x1/9ezJmVD0egiICGt3c+XwxCZPhb20iYEcltKrKjDVNx7EqcT3sP1Ft9QflDA8vfpIb8gAlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737059154; c=relaxed/simple;
	bh=29z439JjyAnmp6V55dDHM4qxbVruaxHn3dGF7ztIPfA=;
	h=To:Subject:From:Message-Id:Date; b=ugIARXvOdsyjOdhNyCyWeq6GjHnByDpWVHwNYVqfJc/NB/5n13Ikq9ezfmJh9t3D2EAtk6GeI5QV6u/Zswe+xbikwa1nn5JD2QQU5/0Iq3K3vPSfRa9RFMlvzi5MYAV3b0eeVnpL9FsmwpTueSKJwJvGTMSCCIWdq72pl9pOtSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USyvuGGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USyvuGGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A107CC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737059153;
	bh=29z439JjyAnmp6V55dDHM4qxbVruaxHn3dGF7ztIPfA=;
	h=To:Subject:From:Date:From;
	b=USyvuGGo8rQSp1K6wEXSfQUdI75yzVi/qyVROLlNQaYCx1S2K0bcHHOBoCimZ8eYK
	 YZ0JhjXuktn5IxPpcBRUfoic62PxZpmyJxN8LPFSLe5+vFDInbxpTZpGNER8V2/F0b
	 5rvKP6Jw+H+fkWuLvjtiIvKgn0JtksSDmJUmJF9H7a92xDZ/wIAGmP3d/16U5kB9P8
	 SWwr6OtJBKwCn3F8LtosQx/ZVGjWp0o5AopUp2UTb3EHbs1O2KelcUihfOTfZ4GGn0
	 ZSrlf5rGTOkNe4neX+64QzIb6xI2bTIZ76ZCC9Xj4atrpQiBxGacCDP6wXshd093C4
	 djtpzyVytfcHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B96C02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173705915358.28924.4803731780316207579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b248d97443cca0a38c892881815da4a60226b12d688ed59de4bbc7c44ecfe5c9
Date: Thu, 16 Jan 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737059153
