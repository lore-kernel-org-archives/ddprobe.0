Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A44E2C18C
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724985354; cv=none; b=XSmVorV22p+8LjHXGj+njyvHTbpj6miPV1Kkys/jT4jzCI8tQKMarkXjevRKB2GBUcQU+rdmhppkTizQzDcyC0GNuhjWicbUX6yhpw/jAY8bWonBiViZQnSgWMJfPj8RBhG+1btTB2zr/TkUMwi4si9dxtyxH5nHlkf52Fxdfu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724985354; c=relaxed/simple;
	bh=P5CtA7Ewz719Gj57r7xnJtxyVJ/VdxOnGHLevinyXYw=;
	h=To:Subject:From:Message-Id:Date; b=aJVniZfjiUENAMadz37VB+8qkOKMJ8zCZ83S6LMc1JkisAeAaEu4tJyTVeALMSr/9mpaeqlupq+YvdDEtUoHfEA7G7xTYxUJsC8/u4lmAvjjtpgloO64Jx895NxEuifGR9Ufqbl8YjdbcIib+BrtacZ6F9qIqCnCUNAnFLIOQwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFzGzMW+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFzGzMW+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DE2C4CEC1
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724985353;
	bh=P5CtA7Ewz719Gj57r7xnJtxyVJ/VdxOnGHLevinyXYw=;
	h=To:Subject:From:Date:From;
	b=NFzGzMW+gYX6l3uJlVD2qeolSbylYkTGwR40eDTCeriPNVZM+Ao4Qg1saw8C+rnbY
	 ZLc1xsf8rMNmdZM13i4jY9hIt8wnQ1JT9XlY3XGwMcqa2uiWC86vpWCJIBP7T5svO3
	 N8dKjk9P0uMJux//iV2aldhz7Uvhf4CWdqT18k3zTFUIi1HgxSw6Pik1yw67+rmniP
	 OTg7s48ci3Qv1jvtW45Urwhwk62EAiOkrKdNi1CPc0OqYj9Y7Ct+X5rGTtaJ/A1AOv
	 Yrc19yDhJHabqai0qZGL+VHE2K6aPUsZmoLGzczbaNi3FboQ5oBwuTk1QkJa2eiFqa
	 iuWBsJGFotl3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2339CA0ED0
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172498535363.27698.9570438939437235505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 353a30910c5c9fcf5d162476a2a778fbd8b9b90aa497e35c376ede45572103fc
Date: Fri, 30 Aug 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724985353
