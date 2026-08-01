Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368FD3368A3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785620434; cv=none; b=M3QGS459G9gpRTHiZgNLeYpQ/6V13rttTWpOvcuL5WhjbQ3VjBIe9wOBwG+XYmzT/rjzcXvW/yOPKftw+fs00erw84aQMH8ESJYRzfjVLURMBn2fEH9wGFHBjML37MCz4JiossKMUDlgV2bGbc/8nO/V1GxdLW1ca3n5tiu44JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785620434; c=relaxed/simple;
	bh=YhoDJj5J10915fyFSfp+NNDEZP6y0sFCVHS3rNxmQ9w=;
	h=To:Subject:From:Message-Id:Date; b=TUFv+9unww6OAXshfQ0stHAgO+rMHd4SRM+dvgb0GeY/eYmLYS6ylzKAXQVG/liNdcpvj9NUIy0hR6ve/czA2KgUp+u8P1XWf4ICCgR/is+tPUls0iS12p9cu7ZI/k/WSFjctrmWvwsUNDAJzSOOQFhE16t+EffzJthNrep4WVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0tiIRdZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0tiIRdZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B23C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785620433;
	bh=YhoDJj5J10915fyFSfp+NNDEZP6y0sFCVHS3rNxmQ9w=;
	h=To:Subject:From:Date:From;
	b=h0tiIRdZCw0/KEHUYEkddgxT3Qb6h9IyjKD93BqcTER8N/kjmdab2VXy7Ll3grYnL
	 R3hghiLONy6gUWM+mhuHcoYstwlB5sgnCObjQj10Y3huBrDkBcfS2JjPjAD2uGjz1j
	 W4i8tgdvro81qEqW6gJTq8C1+5wfT2stF3kY8ByUvb+DYDZiBAnfX14oCdw9WJPeTC
	 B+WAh181xL050pJsogEuTeCueRhx9pJTQn0jLH3NaI//Lm1Y8T9EZV6QQ+LAc7552g
	 Qd3ZG6aW5pKbUP5tAlhBGifazChb5MaKTPPIOdIFK3QUKOdPVbYeoVrwpupCnAzZiQ
	 VTYY5xTWyIQ8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8727C5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178562043368.8063.17985442959566228246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 342f7c626c2bc0f608b8aa7ea38e4240054dd8dae6c493433706f636c8de3f46
Date: Sat, 01 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785620433
