Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EAE2C80
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726226754; cv=none; b=FjuXHrnC6mZeimVO6XDpid5vxBHu3ZXL+LuD0h3DSey7lT69dXKm+uUPYXfJKqBllnumc8lT/zst9X/4DafUg1jzZ/e7kq0jvE0Wq+hZY+j/sVZ7J652+gV7Y8AnUsjIxJgwYMdMoQWcsySNOEId+/VKEIol0Iwld6h6JHrJgic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726226754; c=relaxed/simple;
	bh=5ee6ULvQ5FmyCkg0J2mHLJ7xhB58Yu/K4zk7eO01VPk=;
	h=To:Subject:From:Message-Id:Date; b=gm/pIyhLy0/c5I3/MzLiueOrKDU/qxp4Ba2k9NXb4j8H+p5X94BWcDmPluC6AW5oaPSxKSW3PLaoYRqz3cUxZopTNK2duCyycLOf1dLhZbM2hgKN1HPwTzl1N/DUGHLWMTXoi2ioOJkheIdUIV9Z41OcQidGo+TU27RMuBb9yKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qkw4KARj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qkw4KARj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8A4C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726226753;
	bh=5ee6ULvQ5FmyCkg0J2mHLJ7xhB58Yu/K4zk7eO01VPk=;
	h=To:Subject:From:Date:From;
	b=Qkw4KARjqdSp6pHkdjB7vJAZ6iQoEhmcwZ1L2+WKi+ZxwZ1A+3LW7xwqgZOpE1ye6
	 kK4eh/tHQyf6L4iQqaRwcm3c+rcLIIXDtEuDuH8prUaheJxYLf2851srskNBKIMtvc
	 JJrD3a+O3nTVvkZnuXwUCTKFkWxIdHnMW/9gRJI6FVSVrAvrphgFsOU86ZuG60H4eF
	 WATkAadbSYmkAGuQywC2urAPKyRVho6/PhpdInF1DuLL/DFDrV/K9R4LtctehxUaKl
	 r6udwq5x4yMSgM0dAdYwWpHs3TaKD/iFte9jL0E+1T516kgag0gd2U4bSGTh/tLhiS
	 VTp2ZsDPjHo6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F006FA3747
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172622675362.2439.9490270948454686121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6960c1882d661aca50619d9cb7a036ae20c1b8d3338092c61a29acb5d35fd3f4
Date: Fri, 13 Sep 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726226753
