Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F710288C27
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758983394; cv=none; b=Y7YN+ZSJueEeGhm/Ei1dQe5hPjtOammhquH/72+S0Fy2iRxk57ub7cWRhTSEriyg5gp+FJPCp6LY9wzmg1kOkP82I7JIq0fXOp3GuVbfnI8PBNPHhI7liTK4jrcFteDcQDoM8I+t2bYLQcv8i+4j+mabc62YAFfm6c/cP3kpmYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758983394; c=relaxed/simple;
	bh=CgZIzwswVn0PUeznx+9oWJCCR1IdCLSedPmb6PX3uyQ=;
	h=To:Subject:From:Message-Id:Date; b=BO8jC/tDEU6TUyemCwTuBcABhmH5mD7zxHwGXES7Iz3HyrLTz/Fhz9GGKr7XMQt8lXkWqYBQRNob9MRjCOpvOl8op7pN3D1znEQI7Cih7tQDku6QC376lhNb20i8N7hzkm6G02BFXhsD+XztNEzgW0ZKhH1m4JcrBWJPylz1aQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRwaz/bJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRwaz/bJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8210C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758983393;
	bh=CgZIzwswVn0PUeznx+9oWJCCR1IdCLSedPmb6PX3uyQ=;
	h=To:Subject:From:Date:From;
	b=QRwaz/bJdm0KvGzMG/P71DAhuxCwiPQL8672PHaCXNtPYJk9PGqms4VQxiUVeS2uh
	 gloQdSRYStBfJAnjtxi5kdJeZd8wntR9Jej5ZaahMBrrhthFAf3X0GpwcjsBQNcVvq
	 KO2Oc5Dg7eXhtyCQaGFIyq1UZZtH5CH47TU+KQ0APV4yXZELswzbh7onz1l5lS26D/
	 U8+aVvyYIvmzZHxxOyUXCT+x/wjkpSv+H02kcEVlevIfNgyOBQA8Js4yWfK9ltu+rS
	 aMi8EQRD0jy+bntvGsB+9HqnRl+yzyVvtZGMCa/ODGOThH8d6+pRUCOPpEgmluaJU+
	 HqfMPOZ7V1AOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9556ACAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175898339359.30506.15886730455021753374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d363017094066c93762f531794cc01411aefe0c5f5fbc42e683b88b875b30a5
Date: Sat, 27 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758983393
