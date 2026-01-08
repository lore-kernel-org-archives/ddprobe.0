Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5A1296BD0
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767847434; cv=none; b=mXvAHlxcPS/O6uABK2lg76nFR6OuOBFwWNqagw3/FOeDsf4/0tCX3Z4QHVvoqD+5pYkXl+vAj/uILdlGQIBoohue+IYWtwNUcc/uuYp9dJyz+tmZUYkSliW3U3D/RUap1aSQYIIb72oHYgHYdv9xKjLMTZAT173HBoP5+JHFWPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767847434; c=relaxed/simple;
	bh=uX5+LXKWxag/+vZWvus3snwBe7RHjsGklsIoXgnxXnY=;
	h=To:Subject:From:Message-Id:Date; b=kUtqqYlUzx5geifiX5YqGyvGgiasO4AAMpdSf7AI/nffCWfgDPD0KoUVpHbQ2Zfj2N2OamN0Fn5M0KZhmivQtuaV900P5s1YP8vNL7d05rjz0x+zgDOXOtinr6Pl5YXrdJ/mnNxQBOMN56geBvDmj3PzEnGC1/AdTyLe2t798+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wj5TtNpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wj5TtNpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A365DC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767847433;
	bh=uX5+LXKWxag/+vZWvus3snwBe7RHjsGklsIoXgnxXnY=;
	h=To:Subject:From:Date:From;
	b=Wj5TtNpeiX5AOqn47ScgQ5NfXrdCBNFbIgKY/VDPIFpKOwG6R6Li5JHsztdTIE/yK
	 QSXDwauGhegyF46fnhJovrxvYOKJp0IPeVszUvoQ9viZq2lSsWI+cKQUhfPVZ0X7wF
	 +V6/Z/OWS72Sqm+mNjltgJSGTP16wYY84vYn4UCyeiEKif9Kv/jZjUd1WC0w932RPY
	 5/6A/5SlFh20HLnYlClZExtpXqdQlh5aoTfsfDrDs70JFY8oPS/MQWMGa7waWp9VFt
	 WK+WAZKFkNRNaf0NAY4vpksrluzNW8uoJLDeRpDqkZECKclix0Oz38dH5XffkoujLr
	 6MwXCzC4HIiLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922B7D1489D
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176784743357.24544.9834819357143789956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c61c5a31487b078de60a00cfe5433b6965b146545560cf261c2b4dcbe23479c
Date: Thu, 08 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767847433
