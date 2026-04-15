Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506C93D890F
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 15:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776265654; cv=none; b=Qaw2xNEnM5R9IkW0AHrwAqqQDbgfRCweLUdL+0OmOOHs/4jffEda4x+POd9JLx97xkPX3FNQ7YGNOKiUXq1LjmgN2/WJ1v5Ex3j3Hg/zhXZfcmT+OKsNBIieaTPMtKCUXLMoCYKBr5ODkW/9vscYGO7cmlXv/fDxxFsEnV71lCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776265654; c=relaxed/simple;
	bh=waCeo6Z66A0seY7cu1jmveg1Pj9B9/So48HucGsQYtU=;
	h=To:Subject:From:Message-Id:Date; b=gVKaGU27ANA4pzYXmcn6fowaA2HncGzr3NdfW932+CIihWV+l8YuEqn+biPfa2tbu39+6qYVNCQncnGOHd1YIrmvXYnwKAJIl3zUVPSkibVnMbNZUWYr40BBHnRxt7kEqUjJv5yoLWccEvXf0XiEUogih0uIKUQzpTXlpDsoBOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9/eZsrE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9/eZsrE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD25C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776265653;
	bh=waCeo6Z66A0seY7cu1jmveg1Pj9B9/So48HucGsQYtU=;
	h=To:Subject:From:Date:From;
	b=Z9/eZsrEJHJaM98GBSWZHAjmE3dJfPoeZnA2JT+vaPJCCyk0Ds6/IAK7g0bMMDl8v
	 0rIozqsw7l2qQ+fy0GNF9vtjhxfMKcIDH6IO3W15rKWQ0fflgmv9fheHt/z3L+lm6Y
	 eVqKkHrcuQrQZCvxvLCLKJSl0UDmGjRRi2IhBEypvI80A4dCiwt8Al5BMpILl1NESZ
	 zDE79wnItVywhGSw+B1yofzxI+qD5Yr/rQUHoRgbDJBpa5ARvOD4//5O9DNu/XClyi
	 hLdblq0f74fYhGvTkSYc9tvawj/YlwChYDU4r0u5lbtBvIMNLkPYUuB+oWsc19dowj
	 IAaBOV58Bk+UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9D8F43832
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177626565370.13143.14245480233319449283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693a6b004c777a2298d67372866840100c69295d1681a48282ef06525ee5616c
Date: Wed, 15 Apr 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776265653
