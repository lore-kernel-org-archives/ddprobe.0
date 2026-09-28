Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675DF4D599A
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790613034; cv=none; b=CigWYysdSf7T++sn5mQs1eEPkhBLmIjlGDWo5meQkB3rcdeQ+eEdO/YPSvaV0BOrQzjpWV1qQAmjdNfWCgogIiH0/vLtlf8WbVy9HKsgB0UehDXOlW7921pRzZElwUpU8sHXDlPrwbTQVOHN2upSXdW+vLJ4eqn1VOGz+aDAoUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790613034; c=relaxed/simple;
	bh=tiXH8YsL99K1BZ9J473epwQPDtUggHN4lg+3cDDbSKI=;
	h=To:Subject:From:Message-Id:Date; b=Uzq3VjObYcczBOiYgh+UuNIdA+PgYYzLsEo4oR083RDmVuGio+cDuxZow4g5EBR/GVFQtDb/o7SctJyN5hm0i+CjUzDeyJHSaI1mB9xSYOm+PjGfFgcOVUKSZaDXH9Wfg2xBoa3EH0F6omrfHt7TRO0FGSOv17jb0797hmkPOVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQoBfwqX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQoBfwqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE04C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790613033;
	bh=tiXH8YsL99K1BZ9J473epwQPDtUggHN4lg+3cDDbSKI=;
	h=To:Subject:From:Date:From;
	b=eQoBfwqXT9YyLENGdy3xGK8oLS+XBoMQIKbwdFviX4JxdLVGf4V4sCsVvA4ZIkHaL
	 jKxw2utVenXX34swJ5D/4dTC+JTryt9r+9NPRoBZbBGoZqqbkgMDR1Z6son3o7Q+yf
	 qbG2dO6zh6A+ECk1vin3qtCzI5aX3cDyIWiswWfDW2vC/HCBqvLGg2422pbKq0usTM
	 xPAkbdljVpSPEwuHf8hLel1BOcBhwP/bmdttsicRssTLbkuiP46ubdlGk/OB9xUNdj
	 ui+TNTHvAS/UwA8yThoTTKMvHAQA3TwfzusTai7D6N1RffW4EHnQVoVEsRW9PZ+J0K
	 Qg/F/TqV+DP8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB49CA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179061303368.25723.12033682138959824193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 589a3e85a8c83762996911a5bde7f775fb352f95b76c6b6e8917d95da406d393
Date: Mon, 28 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790613033
