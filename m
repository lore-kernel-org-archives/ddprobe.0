Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A06F5C9E
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775873854; cv=none; b=bGRjg7LrHoTgUMsxZYItTQyObND+3zCfNC0A7KIREmMbvtbowkRC0WFYfQlRkINr+WPsTM4VCmqocMBQL2BH4pztqgREnNq2vZpAjCAcbhok/z5ZQA/dLuEydxeozrlPKJJgRKU47shavKz5DG80J+txhl4z0S7YNJI9zAyz4oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775873854; c=relaxed/simple;
	bh=eeWMN/K631xvomZjTROlm0hQnKrvkbXPCUw0Db5PCFo=;
	h=To:Subject:From:Message-Id:Date; b=O3cuGSY5/05gm8MEnCqLqcBL1/vnPagjMI4bpJWCsUfEiIN4Apmsb6YlaX3gs3TKwo2GuqUegAYuxrzZzify6Wp5hnldesO6kaSZfNoWRpGaN65FP2h77+7QVqPE/BxHTirxSlVCF27gKUYRWlX0rh0WRSTE0Ettqk5Vi2n0/M8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBb+Peda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBb+Peda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2311C19421
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775873853;
	bh=eeWMN/K631xvomZjTROlm0hQnKrvkbXPCUw0Db5PCFo=;
	h=To:Subject:From:Date:From;
	b=OBb+PedaXvP2VW8iPSgZV2SvrJ6LzMYtlBrYm9+gjMYtuwPRB31nMsrd7jk5DWyD/
	 ElPrxJGkjxAZPt43fL+LyzQkI9N2GmUd3QGsRCVgTonrKopyZIKie39pngFkXPdZu4
	 6ZoMwDuOOQjBzv74DdaUjp494uzM+U25seey0cJKPdnPMX6U+akdyh1x5ZrbgeGzsg
	 /1uY5ZWTk5yl6k3NSY+xoOoIsetOH8XOJbimlfhC02S7ihFzD3prRZfMNrrzOWXsvn
	 j5oPEBPKopSGKAHEAngzq8xSXhMpcP4swqn5Iewv9mD4zz6/5AlL+UcOvBARfBOxfU
	 Gawyx/MXLZRzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04DBF45A12
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177587385368.13183.943299530145271884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c37fc59f4fdc4c06fefed241b8534fb0417804de8d53fae98f4b36c8ae4a697e
Date: Sat, 11 Apr 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775873853
