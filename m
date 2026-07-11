Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E498309EF2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 23:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783814314; cv=none; b=ZDPblfzcWVnoIkTdUEpG329g0Bi2jXh4F03PuyMdHndl6azvCae4VsvxDcLfqz1F3j57FVdHl9PrGxFSPTlDzAlTNIDBYkXuDkVtk/WNs9vVWbPm+SehSminH0GDoFPQdg9gJv/OPjUIz49APHkFgAl4bJG0NMox+CSH/0qGrq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783814314; c=relaxed/simple;
	bh=lBsyTUWU7olnhAuE+OVn+MSP5jSVt49CfGp3gVEeM0M=;
	h=To:Subject:From:Message-Id:Date; b=frfBDQU17VzkSRPKmAoto43poON51WGNuBJgkfAWK+Wg06fL1VHkDZeDRLBZv5dSVIRj2Wq1AbIUOAqMqjF+85W+Q+m20k6fm98iLeq9nIRSBc0huf1yDLvJb9z8bPUyvKw+1ND1UkouGhicyMo8chZlB47xXZaJ8JC8A9XEH5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3Ms4Upo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3Ms4Upo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFB7C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783814313;
	bh=lBsyTUWU7olnhAuE+OVn+MSP5jSVt49CfGp3gVEeM0M=;
	h=To:Subject:From:Date:From;
	b=O3Ms4UpovHbIP9/oLh+l9VrByxy335+0I8vlQq+ZzLOg3OvHgDlmUtQEjwUFshJqy
	 9Vo3Jz3xh/7QwUhQRdy9c8gy0Jo6hWP/I4zqEJw5qq17smz9JkyyTcJprxKjoDCxCK
	 YX5JvV8B3uExmwCrbdIFJeDZIv190YXTzlp3jlS8yan3Z64g4qdh1poilKHgCo5lfE
	 qmSHm9gY3Nrt/Z6f1NG+NDgu0wRYKeOrvIDJo4AA5TFrrwdDr8Jesp2XGZNQmPunz7
	 DRzlJGn5D2MA9L6iVnPhF+V2SPqUsTloJwa4vFRf58M9WgELviNa/HqwzcxYD5HC6A
	 wZdNuUay+AeaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD899C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178381431368.1547.7939168968266001738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1cd8c073a3614f67257bbd44aa15fb034bdb90218cba1dd00935646063ffa3c
Date: Sat, 11 Jul 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783814313
