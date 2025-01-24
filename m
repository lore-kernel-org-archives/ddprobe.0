Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BD340BF5
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737686754; cv=none; b=qq9wovIM3vBrPX+cYn1Q0cM7SNd3PCvlvqNQWWgaI1Ye2JtGU04IXXkKs0a2C6Ed3TjKU3d66wfHp6wbtTTSJhN3BB7ab5aloOUb9aka4zo2eMejBXczgORAdpa8OO9LZtfCqv714u5owmZmqzKSi+zI3NBeSF4RTYU/M0WzVfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737686754; c=relaxed/simple;
	bh=MkK3PDqivNg1ehTm9tlmUDjoRs5crJCtX6R9XvKNIk0=;
	h=To:Subject:From:Message-Id:Date; b=MVjdCayojKvViy2a60iRsQmzQ2YeEG6AeCEAp0157ft6SUENwx4xPivsMlsAt/Oe2oq3ooOROw/ayitn/fFNbUBU9gZrJ8aVSEeeDbWb2kgg5xg+cDGqXP9Fmw7iVbyuvoE7VskqFcmDpFoYJtTUFSyma2l5ChoevbkRsEporJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tKfSX50W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tKfSX50W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A80C4CED3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737686753;
	bh=MkK3PDqivNg1ehTm9tlmUDjoRs5crJCtX6R9XvKNIk0=;
	h=To:Subject:From:Date:From;
	b=tKfSX50WyY00Y38+iWqZ5cT0+ECo46eV6uz+Bpg9k5aej2Z8HXiJygxIy4borSapm
	 RM4tkG2iGeUUETbwP0oE/pF2Wlzqn6hAPe1K3xBoMzxWbd6iPXtDvrKoPg/BDJrqQ7
	 no5zSQARG2p5mFh2YjODV/rhnhujpYRX5UpCyaGGtODtOnuVfpEYMIhErpPgnaqcjV
	 mIUj2ziLsWy6543imOtduafBPJfe0nAnneVmw7EKW5/jj9oeABNcnrxc1xWHETIr+D
	 yg6pC0IxmEnZc43y82PnFr0fZ/dbsE9opFkYaVUWt0UDXeKEWp8I8XXilpJjNajJFv
	 QgnWX1Y7dhpPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B4FC02182
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173768675360.4940.9720929472537345659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 319a1ac2e217b7ae250140fbfad24a543d852355cc3d97b452e0272d463ddfa7
Date: Fri, 24 Jan 2025 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737686753
