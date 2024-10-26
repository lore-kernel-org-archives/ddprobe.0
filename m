Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2426B433D0
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729972554; cv=none; b=F6CtcnWqX/wUZqwhwsLmO3ggMwuz83cITrCLpX3wVl6ZUUXqaSLYj0aq2j1vy6pF4PizW6WmDSDWxKymEDN2Lq2G+pYNzBC2AXUWj9EVY6ksdHn5Cv0gJcEyd43wei03JxYnldU/++cXj389rLNanh5uld6vNMWMIAhgn0dqoU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729972554; c=relaxed/simple;
	bh=M9XpiUe9OICdQk1eDcBvvONnHhsBuJR8VpvSNl/OSpg=;
	h=To:Subject:From:Message-Id:Date; b=SWzTDTNpXNtRmXC+Iu17i3JvDhHH3I/fXtKWkDODj3szY8Amg/tn2RDfxVnqh2CpT/zYiD2LdF9Om3xnYfC//pBnsvyuBBhpABkivrd/yxWafk8lj6XNBI3y33swSftWdrndh+AUmvmv5oQHb7nleBxjC1wIY0CU+VGalezElQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/NihVs5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/NihVs5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9DCC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729972553;
	bh=M9XpiUe9OICdQk1eDcBvvONnHhsBuJR8VpvSNl/OSpg=;
	h=To:Subject:From:Date:From;
	b=n/NihVs51dk6l3xpxJEhe8X9kTJ/UNCyLgmB9XkyRGGlU+sn+lZOa/TYm44/PJWqg
	 +WYfHwCDbYdKxIShyp9iGB8U2KesTCy+DV8j+qOy9ZpnuwdEnQZPNaDBp04aG+KFsz
	 xJ+ta0utg+FX2qJzEt5jeAEWfUDyPkaAVXIZO3N+dcYmUZLZ/0RtE52sTxWGy/RhnP
	 GkrvJ2Nc+kTAn3mcHLwAErvMI7JTQEofif3xvafYJJ7Kne36l7YVIjroSyPl3nFGO2
	 m/fMkaJUo+350dBEDO8lpH1wTOr21913NPeABTexhwUNF5U+RL4AiRYi2ele3so+k+
	 IlAEkgJ1JbTRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AE0D10C03
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172997255359.9461.4846316104546080546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60d03b3425296dc80e75625c7c56f017214b03fb0b1467f9d17c09ce22f18287
Date: Sat, 26 Oct 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729972553
