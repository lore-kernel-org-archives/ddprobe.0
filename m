Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F95E27AC4D
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 18:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766256834; cv=none; b=imJSKkZrtmmfqq1VxL5GRSoI1zJBUwWHhRS0K255vodQlnvQAT/agUemOK6IzLPoqKl0PoZtWXkIVFqPVyxxWtOVqqOAVt/8+dfbChLIEjgw6kuIr8eDdApTijoHCn0nlyXFeN5qhH/9EQaj7DaGOuswVOkkI1cojLrelzbzL6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766256834; c=relaxed/simple;
	bh=39UYBh4TLJk3+DnxWf6xSzYJzN7NGRCpNnnhqABHIx0=;
	h=To:Subject:From:Message-Id:Date; b=Cd/h9rH8BdzL6sJ+Vv+ieIM4aPFbfRA4Pce9TxSimfLonV2hyv5B5VyY5eBt6gw7l+iNAIcC8mfkoSDoulJ4XsfgmPbHG0VmS+dG3VTVJaU3TY/UOUf5QlkXdMvU0Acki5baVN3hFfmOs4OEoYLL2M/JKeIvCKhjcDXv+PRz3R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gk7FHWu7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gk7FHWu7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37BAC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766256833;
	bh=39UYBh4TLJk3+DnxWf6xSzYJzN7NGRCpNnnhqABHIx0=;
	h=To:Subject:From:Date:From;
	b=Gk7FHWu7w00D2lcNfNE8wiOK3dGHWp5Ugyqa90K3z+hXqj3azVxIrokZwVTaMSwVD
	 0+vJl5ldLnrdNTt2qqFNZd1wXaQBPtHE1h8lyJQhZ6Bix/rFelrF2bAIbR7pLyTNjS
	 tw01hvCYkj2bjosoIOus/F1k9pLBUm2wLCTS9K6dPt+8vImcje8m68SxBbFzEu5pG1
	 y0W/Z626iSIcsRttFyDDbBvE8FpN+01cZ7S8IJJcAYAtvzelslGCemH5MTv9IMVko9
	 Nl+lokZ312tKdAx79nxj0ztK6VUBTEEZOAiPhtUheZghnxRnJorB3ut2k6NaZIF6By
	 r2jppzU6/N7bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958EDE668BC
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176625683358.30713.14401815268312534652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5d51bbbf6f77def5684ee33e601e05167ec0f1fb7047a7f4835c80f03e3b92c
Date: Sat, 20 Dec 2025 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766256833
