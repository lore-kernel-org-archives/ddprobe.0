Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D558D3FB99
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710883696; cv=none; b=j0pJ/DpVbfgY4FeYh3d62N5tUpfjtymnvWXqQsAA1KPS3G4IOGQl41vfA5pBAbU5EkmeN9WwlgPhFn8B87/yphefUeqsEwWADngQs3I4nyaaMMTbiFNjm2BMATyjZFMiIsSa6VFmlp1tdaRK9hbvskMhCjP8ZuoRlU1KzOHJTUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710883696; c=relaxed/simple;
	bh=f4G28GtiAIMkM4vno5AQx2OAZmWDuWLRaGHffiESR2I=;
	h=To:Subject:From:Message-Id:Date; b=ctrpCeyAEvUBm/aOIRT94Buz06K+W3zBnXqr6nbZozeNjw48E/Me0ZNCrhQG3pXpTP/D/JjWiDMZgZZ1Jo7ToMVULnLFFZmG4J9VtiiixL8cstUFBUyOVk1uSMHTv2AU9imbYvhugT9fL4gqUOt7yDn64FYXwtBl4MOtX3/lg7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GodvM044; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GodvM044"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71D45C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710883696;
	bh=f4G28GtiAIMkM4vno5AQx2OAZmWDuWLRaGHffiESR2I=;
	h=To:Subject:From:Date:From;
	b=GodvM044GQQqzY5WrHVpxIYgD1VoT79mjmntOeZLwvKuTXZO3ks704tq4gDh+AwU1
	 9YqxoWUZSMJC0poG2vwfZb5nFkMdSFKAlhK2hEbrdcoKmg7vAKCFGBfYFCZBdFUibO
	 2v3syqFGO35mjMY4RU3cIeQ7cRfeo2oVZ2bH1gCH4FTgC/ewc8emcc9tu5eoOY3Aqq
	 IiaddxKSwSte8Su2r8WDjj8Yzs/5cpXWhihyjtSQYBRVm3DsV9FbBPvZsdeO86Rfiu
	 b6J7KGZChmN+LstK0MsIaruYcF9kBzSUTk37V1wZpYyGyy7EnqbssqSe8McRtXZNe/
	 dlJM9lNDDXT8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D3CC54E68
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171088369638.26438.8120476813175711003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0acab45ec720685100d36d57887224f51df4ecd2eb04973180eea58b6a6b4f89
Date: Tue, 19 Mar 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710883696
