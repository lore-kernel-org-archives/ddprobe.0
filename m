Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D35E17A2E6
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749821994; cv=none; b=SOWOPG1HSCZtOlG4zfkuKTkXxg7PhZThGCJnq4Kj9vMjyNtk8snDUswyBFklyvtnPN38v83AgC88XowveE7wX5cRdAOzcUlREVHs9J9feZ5QclR+x5WJpLoDiYTjHT6ggZvbAePoSaTJVyeUrqTn/JYVjsoXjBkV/vTvrgkaY2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749821994; c=relaxed/simple;
	bh=e5phzUtfgroAmx07qe93undWg2lc00qkYHf/5lvLMbY=;
	h=To:Subject:From:Message-Id:Date; b=aqvbsnC/dXS2GNHIEQppkAhX+AjmPGUcpa76H+DBYyk+UpohOBrn85FH8eYAFsIc4FHInCNrIcpReXdVbwpsR/i6qeM9DlGxYUi6krO+DnGmbUnnCaV+5I8zHaaGSikq+yKD+j9QOBpLHR9lCDHTVYLdJ73Y7QdunuQk4+FaJhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cma0+b2z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cma0+b2z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD466C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749821993;
	bh=e5phzUtfgroAmx07qe93undWg2lc00qkYHf/5lvLMbY=;
	h=To:Subject:From:Date:From;
	b=Cma0+b2zZXCUAxEXwActxYS69DLMcPW2k8xhBznJcUCKwY2ZbXMgTRoAKMWd6J48t
	 /YxIxhriarfz6omxTNp5vp9G2GiD86GxVX8Ayuq7HlmPl72e7YOdQFzd6dKY9bXwta
	 CR2qBkG/icyz5IGk4K3uQsgitpfIamez8C07cWmZ3riLjNfjo3p+eW+zmuUPuqFVOe
	 4DR5W1MHcGbf5kEPpEVal/hH4yCjM57BuKY7pLPCEyzJzwEUWegyFCLz5Wjtd+sb06
	 h4jr2aHTwrubdK92Ei1a7ew6QmmLMx2F0afn/jonbtdcL3jU+GSR2nQ+EkZcSkQt4J
	 4W/JL4Zr0RKzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C5BC71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174982199364.3025.6638140876748765540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f3eafa0fff2c6089cc2bd2827b662b7319b21df35be5a39742f4213f9545cb9
Date: Fri, 13 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749821993
