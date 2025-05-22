Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C6F221545
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747894794; cv=none; b=i7huLJy3IRpmUtqAqievQi/0qgJt57/vgOQn6sBMLuWrvL35hP1gBrpnkwjsnEO+03wNtosJ445FNx6u2JEyB+E+iJLAZLkjG3E1WjBYYnxOxCi4Zon4fEHYQ92wM5gcwyxnOs6aaEdZ4ZOVH75PddrJOoQDjVOsAzXoA0IDmvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747894794; c=relaxed/simple;
	bh=HfR3KZvbRtmZ48k6tvqCcei0l+mgFOwAfwvsd6J3ba4=;
	h=To:Subject:From:Message-Id:Date; b=nJQgCIr/LgPA6XjLnr4SCX1838xbzW9KMjrXuBMtTrHuGdNTX9FDJPpI/pV9G8yvWPyfN3xuZuHDKIe0FYtBIne+H6CoM46sKcuPZVpkUJqIZ6S3CyInS5KjsM8zYjoaCim+8Kwu+OdefWu3f32/LuvnZCKBVlvbQNTXhAPJNuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eq+CE5jc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eq+CE5jc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ABAC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747894793;
	bh=HfR3KZvbRtmZ48k6tvqCcei0l+mgFOwAfwvsd6J3ba4=;
	h=To:Subject:From:Date:From;
	b=eq+CE5jcnuptadVyU8k4OdPV7VIzn1/RVhdCkVtRVNQJ9HhOwpTWpZv+1FiuBFrdj
	 1sdJHsF8EmQG8a1lcPlX6m7MIQ06vakXaPJ+drzTkYcgWcvTUsU4JZTj2FbT9TUkVT
	 DQTQz5RwlFrZ+pXZfjR5DgjxaUPdsmljwcOeAlYNpvuNKju6P5JkshxXwY7SVtxUuv
	 +Hxt/MWHPbB8t4nbKlpsvrHdCKdAP7Hjpr15UElWYxYZPXF+QkX0PTuyefguMuuPCy
	 mKRwXVY3m/UD5YgNSxG/NKBpzdxXnZFpr3E8cwO/mF1zb4LvB1iZ8xIRKgfxJgc2Qz
	 vF3voPzHMsPNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E555C54756
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174789479357.31174.6677310705931246904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 974c95ac16406ba9dcbe645147c305884ac7253d07158219b6199dfa09c8b353
Date: Thu, 22 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747894793
