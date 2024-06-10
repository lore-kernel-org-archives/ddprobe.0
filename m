Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61EFE224CC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 07:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718003843; cv=none; b=H9iCvcCjrKvw5/7sPB47/9TQIuz+tZqdPzW66KMtRbkLMWqNxc6Si+swcvXHwDeU4NTHt4kivdS8O+DhkTCW+2/D9s7ralWpxh5NYS9qSy83J+54c4g0InNwfi66L9PASZn2KuP+cNGXgHkymDSy8han8RDqalloxdjEzG5EpIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718003843; c=relaxed/simple;
	bh=k42fdVcWQKejSaa1vHLOhE1jXrOxOFw4FqWN+Ztt92A=;
	h=To:Subject:From:Message-Id:Date; b=gFbksAyvx2RygjcTLokEk0v9LFge/MYKiDLAPd0uZ8I65RFhGkKPkNEEQNOXZGIR3U3icAtzn2j9AZ6x+8cBiZghZHTwM2bngd0ozkGGLTkfKp+I1pZbA/z07T0nexArXQ65UyxX+OdzmS5Y+7f9tvfjrsSOTwpw93xLAYcp9Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9pECqmf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9pECqmf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5446C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 07:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718003842;
	bh=k42fdVcWQKejSaa1vHLOhE1jXrOxOFw4FqWN+Ztt92A=;
	h=To:Subject:From:Date:From;
	b=U9pECqmf44IrLa+zQUR9L68BbPQbrgPtssc2CNHug8o6glebPmxiHyFo56HvEQln4
	 r9ZEMEuFcbLOFpzi3HHaRmCyk4n4u5byWEGsueQn/LMQmd3MHjL6Hf+WdRbZRXk1E+
	 gJLz9lPmWFZ4UGY3ndBC+CkyKmfav3tMlHr6yqodhfnkjTF2FYOcYIrcjJTqPMzAVN
	 E0EdJT7xU+yPIyCjMF8QzSdM5g0AJxoDlqUFMuXkxR0C/JHa5IC7OZyYBVMgJJeyiy
	 TONb+sPZZ60i09n1aSDlIqknLDdmotjXDD6HvhpcHpTqhQhf2XlFxMBXXWJuYelO0K
	 gLojuK8temKtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCF8BC27C5F
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 07:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171800384282.4873.3027446036755812616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7009d7fbea4d2ee1dc5949b702b827b58d79a63c7670c72456d8b624fbabb659
Date: Mon, 10 Jun 2024 07:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718003842
