Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C885B21A
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770432234; cv=none; b=lVhSLCRvmukAanR2hroR3RvIAEdBRPSESgeJ4S9SP8IbVbfTttDiR133MmFve16EZqPj4cwIlPKMpH0ZTUWP1Qvv+O37kZc7sLAjkkVdVHGPlev57yMkcseiNC+QiznbyHKWvTMzRFAwBtQhFryaWaI32B96xa+rS6Ye1WJc86s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770432234; c=relaxed/simple;
	bh=qJVgiymfIq7kfGgS+odNf8S9Jxd7XKAAoNqZoIB+H3A=;
	h=To:Subject:From:Message-Id:Date; b=fQFfITI4vA8q8Hto1rEbmjDbLongejmhkHh12Utll24LlAZC6mfBC/QPphaHWBi4F0PL4c0rmaACGDUPw74SihJL+xiqdG83pedfmsf9MVKUCPdmTTMPHAMCaTY7GLjFxvFxhzsmPNEWcwAD/fYHQVvxTHMBH4MwAONXvq95HDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QpUyMIFP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QpUyMIFP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3691C116C6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770432233;
	bh=qJVgiymfIq7kfGgS+odNf8S9Jxd7XKAAoNqZoIB+H3A=;
	h=To:Subject:From:Date:From;
	b=QpUyMIFPiwRIjHxyTkNk4KW8ZuDqDev8lTW9RCIWZYNgF4Pmxr5pZ9hqbQUk6joJ8
	 Y0sWjx6hTCELtqKlF/rEsT/yHt4hYz84vEi0HB6m5LdmhyV/LqkE3XMAEbmKcduwJz
	 BXU7Xka96DzxEn1iOH2NtXplnPRwt8dBFvoYuNZ6pPa0Jb5WdB3weHjvixQVSYmHfI
	 p4lAOR5kBOpLcuNiPqMcBPbOm9lv/f/tZb7bY4gifXaDiDfW/c42Ldpi73ch7szaFM
	 dXuOzX9u+QiirNxUAEXw/cq8rWEYf/jrYv4gxJU72LECKAotlYAveTk0+MMfNeuQ8Y
	 bEBwp4BOhEVmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9DFEE6B6F
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177043223360.23428.950171145034189827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 100d61049d8b6849b4df1743d57642b71041feca22b9b227bda7613bac5e01cf
Date: Sat, 07 Feb 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770432233
