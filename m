Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7EB15CD60
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727371553; cv=none; b=KA/vbEEBzFoAIcYoDMc7Hf0KEByQvbxE1pCuz34oLHDIsqolQee+ZzTaDxKIgPbGeACXysHgS12jFgqYVYx1ACyfrEUpnh9MET0oktWDM0u1Dhc7QKIsSV05sw4FdV4pt3Yqgx9PwP4lRFu/OKK4FO8YqKHDQJwTnq4oeEHyTwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727371553; c=relaxed/simple;
	bh=HoOgcm+au5GR8MDdIOVZuIqGQKzqxnI/p9IBf/XXsaM=;
	h=To:Subject:From:Message-Id:Date; b=QfoltOD3b14lrsV1v8LECTZqNHAY3l6uAc0hKSrXADUR8ZM9mecSrFo4ugOJc/itF8A4HIdc8Fd8wC+kOr2GbzdmbalBumS7yCGTDY7tR73NyqPe59wxi0LKd20vznLajCyw1XnZYlzIRA1ns8apqhIRJu9V+fHdBlya6f5cmXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IaFmSz71; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IaFmSz71"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37E3C4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727371553;
	bh=HoOgcm+au5GR8MDdIOVZuIqGQKzqxnI/p9IBf/XXsaM=;
	h=To:Subject:From:Date:From;
	b=IaFmSz71qTXHuLNkKvcoCj33etv8+PtrYR+Z/RVQzNKaZVi0bXxGhmrG74kQns8ox
	 WnZQgiAm8VXoS0rJs1V+1HtZkUinCup+LBSc3BZOjfSvRhusyzZ4S30Rr1ES7C+rgB
	 HiVIf6UzAmo4ByT3iT18bUxX+92lByxRnnGFRJ3J5oNxPnNjbHgYxEqbmJnyPyFBdR
	 e2DQvDdbIhluq0wsoqO1NSLs2lzeLe144l6YvO7v0sVDPIKYZGiczGQsdgNlQTU8Hh
	 OlWKJhyLD/189j8O78Q6r1iqrdxEZohwyGATbPsxUVm780g/UcV7zUqcBPgK3uzSsW
	 N3ouTlrXMqxPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B74CDE024
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172737155359.12190.13190031223425576228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54e55cca7d7ca26c6b7ea538cbd105bd715206b56fc0e17a79c5076160a6210f
Date: Thu, 26 Sep 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727371553
