Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB11314F9F0
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711563496; cv=none; b=lBxyVpa7Xej3M5n4gLzBnzGhXa/8QnhDNejLIVjjOQN96yUaxwnDfPsAwMPbo7qYHZIENB6cTZ6SfjN3Bsi7y1qmDjmXPnqxkZdmZn/vV3acZINY5Wd8tuaaocjgdC/Oc/vbZt+0IocoRjtTRGGnlbIe4xn4oh6355MG/VBcY28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711563496; c=relaxed/simple;
	bh=iubgqeJ91ualJfm6aqWKv8ICKI40jKQiARIGUDQwuWM=;
	h=To:Subject:From:Message-Id:Date; b=hq8DyGTVcccDVF87qhbbaTFxFIC/l+f6DGIuIUaSyouE/AW+4ezOwNkQunxYDRkq3/IwYi2SS7QT25Vj6vuNgwxwW4mZ2IEidnddNbhcwG4ooc8DkdtWqGbbDTOU7N9fksCVMaSBwruqP2AouaxctBfvrHg5z5wmFQy289GWiUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5L4RGTA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5L4RGTA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E197C433F1
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711563496;
	bh=iubgqeJ91ualJfm6aqWKv8ICKI40jKQiARIGUDQwuWM=;
	h=To:Subject:From:Date:From;
	b=X5L4RGTAEL+kEou9wnEFBFX87cq5Rqn0hQoSSdmYU3WvSXyELCUoSnvsscp+I9osq
	 q749L4/Fu9ZTc8MRTHiUvmPHMIS5kGcj9jOjm6XoQk/MGlBPSNhHiF84FJInD9lt70
	 HOmHR0MFsizavhiOUAUKk6f4CcBno0vI6KFkssS6qCxMtGs4uzKEqDsrSupgvEaJXl
	 XbMLLoW3Ma67mO+WJjou0I4LvzMq49CO/iJFppuoU0w3aa+Rv70WShWLWxcHJLD5+W
	 Kd4HFkcLw6luMuyk7XO9c09UssNoOoLpv3i3qQ+F+tMIh/81bAJC/YF+pcVOUbi9sa
	 Sq5Yo2+w+T5UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68B3EC47DD9
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171156349641.5164.4911791751394160018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25145cf226ee17ee53672c2793133b9956bee6c483c2083a1117e7186936e575
Date: Wed, 27 Mar 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711563496
