Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDB638F651
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777273054; cv=none; b=ZsQ5r7numir2crvQqKVkikOKXc3vy38f0tm+5IX/VIViMM4PloOLJO2YUkmMWS+iaZBir7c50iGXRbIbrA/eruke/3M/+OEcIuPpaThYPL0CpGyD+1FVMaqzmYs2lLTDq5dbNgnDCid9F0A244tHS8ZexJUHaEIqnAemONs45ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777273054; c=relaxed/simple;
	bh=SLoemBagkdoizVtaZpDvE1C7888d7ky0ZQT8NJk8Hbc=;
	h=To:Subject:From:Message-Id:Date; b=Dmtqe+2Rj/lr57N/WnPpFWl4ayiFwwSWVAxK25n5JOnzP46xUmJ0/m0mfcRvNZoWhnS5mG1mBEeHcQLjY5uGmuaFfWVyviqhRk0jjeoOdiC8DPB5uedTWOAnp9pLcMm91MVcwEoKjnDwKSvkrA7DqbQH2Ds7QqeuevskzXwXlhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmykASiR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmykASiR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA6AFC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777273053;
	bh=SLoemBagkdoizVtaZpDvE1C7888d7ky0ZQT8NJk8Hbc=;
	h=To:Subject:From:Date:From;
	b=gmykASiRMZYhXVfVn/jJp393htp63czm/rOKT78rmRqBUrQKXBA430NPic258aDxH
	 XcWcol8ZXHqiVPhlGNFtQ5/gneJdBpE53amDDB/BX299OZ21g79/SfVpV2FFtD2cyO
	 lX8X/oV+yEafEU0zXPFBHmIgtKqCKfNihGfqLBZP9L9ug0TjeXouW63Cshr4wiBUZ9
	 she/Pb9cx9HbARTyDTdqT+YmT6hvf8R4tq6aYi9fSzZSU50WRoMxwo8r7k/SmT+96h
	 yGgywnzOzoCnCCN/pFfQtXJ8LtCElof0gkbzORLnA4WeiUXYcVWjpUVXrzPfCFEJS6
	 9v3hyHDvqag0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2C9FF8861
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177727305369.11781.3855197547996795747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81239e20ab08cf4575df7eda1870a6f9b0a04c38c99cad0723287580e290517b
Date: Mon, 27 Apr 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777273053
