Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DBD20B7E1
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743525594; cv=none; b=p6eQVV1MD/aF69+GmoN/ktsPXGPCvmVzaTzeTXVIpV5TLrLoJ7V1+A4F8fTYKHImb5V28ObYCp16QqA8wkjnTH3rylPFjkYjcht5TrHuD3o53OR1115nEtcmzGog1gMNmLSYkJ2rCltsk2uft+ZUg9/0m7+tXqAhfPEy2caRhq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743525594; c=relaxed/simple;
	bh=kq+1GHxER9ml4KMOAA4i0BVzb+fGkRYwCqiPWh25GeM=;
	h=To:Subject:From:Message-Id:Date; b=rBLD2BJ7Vxa29FPnOgmhxXE8mZePY94pSnwymEg9AuAWvSRu9xh61Xw0C5Ut+5Yuy/0zErY0RQ5XVnpbWgaTZ+krGIshRSU+axzLzfjXn7PepYdKuX8G9aIoZNqJDRr7sAIAzo+nnWoNNn1DgZTkg7Pw3DNuIRwtrvPG9u3m7UA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RAIfOv5Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RAIfOv5Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48A3C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743525593;
	bh=kq+1GHxER9ml4KMOAA4i0BVzb+fGkRYwCqiPWh25GeM=;
	h=To:Subject:From:Date:From;
	b=RAIfOv5QAaF/0pNk0CJujkyQKt93AC3GCFf4k4rJAQyvW4bNqvaG/keg4F5eUZMN8
	 HZwQOVLK2O+6Iasej3cCm2EkAPf3BCMv0C4F9jibQ2P/aJorznm8F5Lz5Kw9U7aLJm
	 fYb6b79bQw/j57wFc0kRlAYLTGCF7fgaVEsf6eBhFZcnLsMgB3neDt/OzRAqSjqSCm
	 EfCz/P+ucd9qw06lSlAzZrm3tPzVRw+dGXnxTXaBF6UiEM5SQducMaDhDz0e7BUjDF
	 9sDUVNV4gJl6L7tTq4CSgk3KrFEuNSPERR+v6UDyhJpZu1KvPm5VY+LRy4HTZKL+cH
	 sKk1TJ9Xj42UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F95C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174352559363.4077.15015298600770093995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbc98c9fb5a4f2636ca9ee4ccbc88bad49b0747f3b3d2644add5586d6a825a9c
Date: Tue, 01 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743525593
