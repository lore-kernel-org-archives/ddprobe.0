Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D881865EE
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752853194; cv=none; b=jpLevLFHNe49/JxIU7XlXygFXUxAzAxS1K2Sge+Lw8ep+d1xsdZWmLTusZ96KSQG3zzKHrXHuzAb/6ApIwLp4CrocXZzzBpABq0JhPRZYAMBrCJw/MBnjauTFuOYH2aeXhjH9DPvI56QA41cGg9anzsXSkqSycTUOzpaJCbR318=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752853194; c=relaxed/simple;
	bh=eC78w9W1eSrB1sB8GI0GWkKrXseuH7BA6Wb5oNJ9EwA=;
	h=To:Subject:From:Message-Id:Date; b=Eg1PMsxRZrdSxPWHWsnxF7/8pNHydKJAKdjNfdiec7dD+eomhikvxk0m434Me3FG/lX2Sw6F6bYqhuXpFCEMo6DBGvxJZQ+GcLc+o4FMHzlsOa/BRmax/zv4DN/E2N5rFyMqdYLxWZDomHTvDp1CFECrBaV6xQBP+TvtIR2E/8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlY9wfRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlY9wfRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E611C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752853193;
	bh=eC78w9W1eSrB1sB8GI0GWkKrXseuH7BA6Wb5oNJ9EwA=;
	h=To:Subject:From:Date:From;
	b=PlY9wfRBdjxI3PAWovD1oI9FP0bRZHg3z7PKO3IlrYhzrrT09lcmFoKat7d58VGP+
	 cjtJuxOY+nEmscgDdhrP0LrldVMkiij9d1oT2ZUnAvGHSBtFmmDQt86g0GmZyMrAtd
	 pPvrTakcvE5vzUAULEVS8emRXXVKguFjyR63pNLJNtTNE3wm57GFlcxZKf0rH5vjBW
	 ouw+E75mBNrDyV/VBffkmjWZyI48sY8J8J83ZQpSC7IIYEZGhGRLx9Mnbq5FlxDIuU
	 gj2O5LjjU4OEv1y7nfRtDqLWq0co49F/f+5yka+QhAXuCIjsi69CsmFMfP9a0GLo9e
	 54yNAt/+Vym2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3A2C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175285319357.25834.6879769480735698932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e493a091957ff11d1a2db2ad55a8aa156d887568eca73a68aaf4f1c432f1bf52
Date: Fri, 18 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752853193
