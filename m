Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255FC307AC7
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 14:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775141734; cv=none; b=SirLYqfh2w/WHo17wMb4Euw6pwvqkWbht79xIpZcAQRcPdaanbO6394PWaupnMV+ijj2SaFItVJKp6XUZLqDN88GgFq+gz60NHFkKyPcxwUbK49gYSyz/6Wh7UnaXonhuHfV092Tvdv9Y7kwz4Oc2MIFWLoakYcE9QisDxHjKIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775141734; c=relaxed/simple;
	bh=f/VZcSpUmnmCzany3gYZpDl8qW6Xe685MtyrOcVP/wY=;
	h=To:Subject:From:Message-Id:Date; b=nGvnLCaxvFGhyoofKaEj0LgL12obi0dJwoKxHNGVO4W4A8EPV2KyRDY5i8ugRC3MasUiXmqrMnt0eFiU9R+vLjyJ92LaT0szBZR4yxHl/QWpFkG+6k6whRZnR0MzqxHEfRJFyh7bEE8rzWVBkhijZLVHqVux+J1okKIvO3kaEvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6q5XSG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6q5XSG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF3B6C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 14:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775141733;
	bh=f/VZcSpUmnmCzany3gYZpDl8qW6Xe685MtyrOcVP/wY=;
	h=To:Subject:From:Date:From;
	b=C6q5XSG6M5O4jzQ8IEDoULSPJ1IqTBtWL5F6Z1tdbbzs+Q8JUrwpHHx16HHhnZP76
	 dryIfpiQlxjJGixKGQlnLQz65DjPJXj3Oubn9nv7ARzgWC+AjsapU4D+5mQTCzK4Cc
	 2LsUD27zjc2Z/3ZGTxnO9TYNgE5+khIYLMC6k5m0vq1rV0Y01Y0KAhrRRxRXIyQaGF
	 oqVll3VinnGupY/OautBQITjq2xd7mUHQKJbBuEVqA5jeIf6xyuixxU4WC6JYbtoHz
	 EmND3oSt7yJz2Wv0F2ap5bdNx7IVuE0ry+zz0KeNJNpN5vTRXW3oIjzE/3aLGuuRGl
	 7AUKv7gCWuIOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDC1D3943C
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 14:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177514173370.4046.3681482688160086856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ef1ff06b704071ac440773b6ad04ff28ad2496a53148cf5aa9bd250c41e0b0c
Date: Thu, 02 Apr 2026 14:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775141733
