Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECE7E57D
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744563594; cv=none; b=glFE8C1C1fKd+HTIddPDDG8+26IQkJiQ4uuZQnTyoMsIrV4i6pwC9l4TPQQDxI4lLMIp8ZWAIxtoUJ5pfMDLqS24QbBWE79Ve1Qm8b4XLI2D7+XYAY5+4j6T5i1bgAfPFoe3ol/Oc8Mw8b9sMhVmg5K3G7cgQMAfYLbxQtX4dT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744563594; c=relaxed/simple;
	bh=WSouEFYOyfAqPdHBwA17BsdjR/m5HInHx2Z3dMHdH0E=;
	h=To:Subject:From:Message-Id:Date; b=PKvZfS8dmn/7WK+3Z/jnp3JqAEtdEHD0uDRS+BADCW2BDrNlIcTTiWKMasBQK+3sOYNGc4uvV+EFIIWNDZQCAH2CxqerHJ4PV2BMMvybAD2ti+lKxlIyzasz9JbAdmtghx/LYa783dRZ7a4mplJjTRTcpshoJ/uuMunNsWjKGEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QK/rSjoA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QK/rSjoA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9EE4C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744563593;
	bh=WSouEFYOyfAqPdHBwA17BsdjR/m5HInHx2Z3dMHdH0E=;
	h=To:Subject:From:Date:From;
	b=QK/rSjoAmDLwFwAwQ4tuooETsIysnqO2kUTPgOkqDaJzb+45E/yej3B7YdA1CvyLF
	 ST9nkCJgPnrZTJO0rXLKPzHg1LpShkYXduuOwJbAenAdxry05HHC5tZ4aSOj8G2PW4
	 iF+xnftt2kd/DfS8yNABgZq/G8GX0aOiGJ7ech0XtJzQJQA5o2q0/MoNzQMwfufe4/
	 upub8GhF1MQAAd6FnFyIwusI+f05Eqh74re07L6JE6nSxEyFDpbZxjdgQAgBKsjLbE
	 H1DjMFWqPHV4BL6hC7iATBgjNR5Mcv7eDbzOYuE4ps3APuKKPKaQ+CMBXgd/wzYTeD
	 LuK2u7jA3x8dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0794C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174456359363.26455.587757010071089602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b66bd86c6d6d1d1a90c48e8cacff60bbe7b6244130ed7e73bea1812800d8a22
Date: Sun, 13 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744563593
