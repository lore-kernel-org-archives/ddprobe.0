Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C633D646E
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774599894; cv=none; b=fJcxhxWW/bTcSlu1szG8Gp/TOI502L2D0ecPzIECj0Nicva1Eg5Dj2oWWD4caXJ9GC9VA8f3V8xiPjYw2v1F0DhhV6c0OBMGzeySFmgQqgsStwQh+t1KRC9AI3ls2jDWd/CcbJ0JEwVCwIAJLY8kKFEnBoQgpdbTQTfEDFexqS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774599894; c=relaxed/simple;
	bh=USRCFWXHvgoETc4n8H+3/6GyCOiVqHf7Veh0UMxxFPE=;
	h=To:Subject:From:Message-Id:Date; b=smwJEbyONUaZsrZ128zQ8mx3A6y+qJd6csDGwGPQJH9KVolq0HnxBPSFAZXngnmocCmpJgYtqfq2KIh0qyzu3qWfBt505X2XuddGJklJiyPuXq4gRb1/pfb2hC9WsKqI/UHzxKzIpU2oLkJwnn7z2ezzJWG6U0bl2l1N3x8wC4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N12DBFrp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N12DBFrp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62ABC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774599893;
	bh=USRCFWXHvgoETc4n8H+3/6GyCOiVqHf7Veh0UMxxFPE=;
	h=To:Subject:From:Date:From;
	b=N12DBFrpPSHRXQbtL9GHYcHQpXSkLxfa9nkZnDmLgLrfDOs1kjf0uinaZ6XGdBNWx
	 0PIAUAfVaW8eaZmJQMJEc+Ff/NxlR3aFyYHqtAwWuD+9Ir294gftczKW3BqjqEYRf8
	 GTbLVWEPns6OTXffh+gFH6taoJCKBEOZLZ8yH5BfReM9UAPdyGLll/6k/il6O4oU7u
	 AwA+Yo/IB39JEvSHd3dV877gPD8hOUeNggypjnSs4ZEQSoPeCaAsSu+6OM4ywCHNtE
	 pAtPn/Ba27EMWVPUWgqpB0sgHZnhdEg1fxa49O/ETN/levpjcUfFIau5rzWWdolE/I
	 x4j6tWWQvQlCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918CC10BA43C
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177459989358.12641.15323235332802618347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dda453fde8ee68e807481de636da07b0e0bddcf810f311e50979f6de7b47daed
Date: Fri, 27 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774599893
