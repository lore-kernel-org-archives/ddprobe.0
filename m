Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349F242049
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752628794; cv=none; b=u6WffBoPO3SoZ6v8G33JGE1IiM01jK7v6PsIs5RkMLixL6F5RVZoc84xZDtPnHx/ZtnKXSM3p7oZWXWWLlLEl2vFg/fUqkcbokPX0miGDLrMIlOttAFKf0Uk4V8sDzqgwBKBEmBz8sjZPg/VFjGvogCZhZ4kEmwd5zrVP4SDBsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752628794; c=relaxed/simple;
	bh=ElBmGGGJG+ksPnz4TN1OwF8Whu38JSHHT/s58VKR9DY=;
	h=To:Subject:From:Message-Id:Date; b=YBG4dwqGkPg3wVmCSb0kqRWcRpGFdKpLt6lEaAigtChA2es+kTNoyXqeTSqrZsQ+eG/46Qp6Xc1zSCurAQCAK2E/UWLXP7fAVBOemMXLgohQO2Ok4pYjoVk2kXU35HAYB0fJVLJMGF97b7wQn7uzdUbJ7F+eeG+l5DdGYP4Vd90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jJmdvtgo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jJmdvtgo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F26C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752628793;
	bh=ElBmGGGJG+ksPnz4TN1OwF8Whu38JSHHT/s58VKR9DY=;
	h=To:Subject:From:Date:From;
	b=jJmdvtgorA8GrUwq7lFJLfRsKwzcEnHDgijbyyBvwQa52fP0qX3aLkF80KS/UGIS1
	 3E1Xgt/gPWn7zHY+TChJjni431tq4XaUcWKVO6QO5xqnnZ8bMAg/DXbjLdpgSyvxnv
	 alCHGf/xy5+EXEfEDvBAcWHYTu5IGT3uUZEt2SP+/nqM3NrUMtS8RWdwSC4UmHDKHT
	 1o2CnMdS44+AYsJRJHLO5wbPHKkSPaPI1X41PeTQcaWNhbu2F2cVFKqZF6+TbuKbxP
	 1zgJ4dxPQtgsMJewAk9L68RIORHqPAUqjX4kMI8V2tZq49mvnZW7KtDuAOQ7iF1sIU
	 sFmhFoqebjmLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3FCC83F27
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175262879357.25669.412048221831319372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b52a2334f16fc178a3cd659fc9af7886ca80ef8b83d07b83d9df5c4a626c321
Date: Wed, 16 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752628793
