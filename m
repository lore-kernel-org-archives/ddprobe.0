Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB3F4BEE2C
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789183234; cv=none; b=Pr7wj6ou/51tERyeBiwJgcA1KumzIR+heIoXMXPHXepUwGLsQK1mVTlBX92qXgqxTmaYEVUf9ibvuZ6Ih1CoYmq+IZTHKVmxFoNk5Pcm9lNa+b9opmYO0zU1CWFy8U1DYAuK6WPVbQ1b/agQhKtGbCB/pZPcBELE9FEZiEb5YF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789183234; c=relaxed/simple;
	bh=/gNlv8/UY++yHRutmCyos1SA5A+SwHjamWgVzGSX844=;
	h=To:Subject:From:Message-Id:Date; b=hexqVdHykf5iZ3wsBsHmsKmHQn7xlWhM3FRP42uj/hrybrQ9NSC21osku1eQY7L/kbMaDKjlRlJelelmQazdcSOhBH6NDKpIXvKMgj1fFOiicogczZoe+6767FudmYvSIZrYmoZoRcMmrgsc7mMRikGcb6K5hJ7BkY6Flf9Wv+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLzlJ/A5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLzlJ/A5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42D1C2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789183233;
	bh=/gNlv8/UY++yHRutmCyos1SA5A+SwHjamWgVzGSX844=;
	h=To:Subject:From:Date:From;
	b=HLzlJ/A53GNbbFI7m8pyREMggcurIfdJsH+MOB66eL8aG8tIT6Q/NlwXKM+UuOW/c
	 5LhnKUDeklqzatCPI2VXknQOUn2d6HFe/DYQaAQfVuY9liOQlAPP0gOSZC+P/vhqUz
	 I49CuvpkVPTOP0DQe5heY4qPS6uOaymSEeQrzV5JqVUcBQHtstfwybW2yei/v7F6jA
	 ct9Epum9im5NEOFdZJoXjcjIZ5c9vs6xXV17wghLXN4hEl6Zfio+nzP9bGqrz0VTeH
	 k7zf/CDK4o2jav/mMK0T7YiRue1wQvC+LZICmXcTFhA+NIZy8+n6NvlfIP7Vc2NKp5
	 3Y43jzImoRWqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B116BC88E50
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178918323371.23135.1401861099173286547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a15fce26cb96bbf64f4455352c64e6e58f096fccc3647c21ed9f50998b8b4209
Date: Sat, 12 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789183233
