Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E53253F3D
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755567595; cv=none; b=J/FUaY9Euvoj2oN3o24EZR4wYPItEWShHIjGkTUg0OjK5xcdZJ32us0tpW+ISEgsb0UJr7p7iAGUIFQpBCLw6gcGXWglhYzIGPyB9NHFwARmU2zpEoWSK3CF6kX1FwJpcHxoXGFOr7KgJbl5to8LCD7mvoKJx8tMDJ7+Zbl4FxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755567595; c=relaxed/simple;
	bh=xsq2XE10vF1Ah83aLgJGwB/iQAm9zdcPi6nDBDKXJFc=;
	h=To:Subject:From:Message-Id:Date; b=f1JZGM4ZyIgQLz4AKXwuGFqL8toCdZl6Stbz0E2QOYnZi0syfNxiJXOVIoBl0NX30yCFhe1NFwheCY7vqVXtKn1+lEwWKdCKYHhb3XepZkVd+8+QLejGUnkOPlPBDnQ76GW4JWp9gMEIj6/CTaB+6A4M0XQxEJsb5Db0VVC1148=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKVOZZ/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKVOZZ/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F91C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755567593;
	bh=xsq2XE10vF1Ah83aLgJGwB/iQAm9zdcPi6nDBDKXJFc=;
	h=To:Subject:From:Date:From;
	b=NKVOZZ/Q6lSisdWjEfdueufcfcYgU37wFoGcuPvOKoRgsCxiIgXFtw34PdF6x3Ypp
	 cyoZmPfmVSbftR+gcUyH87fkfw6+NatRSdL8QrKb8F7HQEa7JdaJjAluHb6UlptkYa
	 VxaOSsURL4pFYkcZpWrrp8ZVn321EQxiz60ufYMf9lwphVQnjmTeltxqtQcsA6CCwV
	 KqObu4Hc4ktohL7+8WpOzOldq2O9tv9goqDGYFgRKRRKcxFn8aQAVC5IlLkG/cWCW9
	 AP1cyDbclZLfyekIppDGGMax5K9PsAVrCXHV0sdx08hNxXRqmDBC/XgU/N6YGdBDqn
	 DzZ6UPO2PU7CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9115DCA0EF5
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175556759357.968.14742124594755050691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f55b79995ffa87d506af491b3d02330bd4e6741077ea54dbf8a075982e3d5819
Date: Tue, 19 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755567593
