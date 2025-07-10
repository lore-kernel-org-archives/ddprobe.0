Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149F91EF39F
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752141594; cv=none; b=HrBp009WW9CZorDuraSMWFJpcz+bVmvaxQ1YwJPnC6gXCRmGn+Ot+2QvQbgGhpaJJgEcm/hdAHhKLbVK8cJpsCDIliNivMzajrnNmfdF2pVP/Xl0RfYG0OPgoJLBrfMmJvt6f5BAqrHRLyAFLDbfFNgUXdsrh7fZn3T7YIfLD3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752141594; c=relaxed/simple;
	bh=aUctYwYqq86dtVB8XNE3WoSJIo1RiKZaar9X6zEvTAY=;
	h=To:Subject:From:Message-Id:Date; b=t+zvYNLtrRoEv0umcQxNEgXAaz6CpAdLOamh89I62TzvxAmymiPaClOTMHabyybumr5gFyT0YDGWQhQHSl9wTrvELbib60bjfJGwE+ajcIEJfPhbsL6a1ZHoavodoM+YXSGKaJNkAx+BSxNYQXxKC2ncTpPUKDqC5/pvzIZxhg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYxPIpu9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYxPIpu9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC3EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752141593;
	bh=aUctYwYqq86dtVB8XNE3WoSJIo1RiKZaar9X6zEvTAY=;
	h=To:Subject:From:Date:From;
	b=eYxPIpu9TAzmEPTZKUQBa99xwjpIOrcj/vqJ2pnf3lAiK0EYIAwk/zyBBT91KBjql
	 sOhZA3m3DEK4chVpATnOjClj7gaG3WEBcuDfbp/3WVn7FaButwiGho6hkUx+QOD156
	 0TxZ0wGF7oG4Nb4v/eW/KVHxIHpJ131TWceZn5nYaUQYZ685D4K8T2xwEneJueK49K
	 5hdCHA59mR7aqn3igo+DZtFxIzQXm8eHw0Par83ol84sO5wl7uLPOrdGOKbFDdq6ny
	 B4Bnoj/JyRGl2zKJQAS2lQOVEs6rfuDcMDG53WeQcJlka1CV7Q90xxNzYEVRRpM17W
	 PLSx852LMn7jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF5FC83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175214159357.7446.1157085766507163806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f4b65f36efd64dc7a5dc683d5ed3e322cc96dd424985c4825c7ad68e9cfb5c5
Date: Thu, 10 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752141593
