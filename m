Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B76B6BB5B
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762734594; cv=none; b=Dd7h1WUCt4Jfenxy1TmYl7ANc17+wUJe3nvCASfp5Fm3JeUF9LZA147j2gwyY0ztUHYjVix73HrNEQhDTXDuYseqNUK8903mzfbvUg0iUD51fezfiPAyZpeY1hoXiXGxvykFX1c8Yrm7pgph9yJszzgMiENrarHUA4NhGaF+z8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762734594; c=relaxed/simple;
	bh=VIdyqMZFCEljfY5j1skVv9pnvGULnK8q+cmvJJ4gpJM=;
	h=To:Subject:From:Message-Id:Date; b=VIZ8DwPy9pGP2jxTc881f2qCK5DUHQPWOF1xiPYyPRCs+/aOzMUTEho3h1BQeburbWhDBU5yuE+Fz1vcx5ZQAHQxcCxmjAmVFpcoNL0nGOOSac5zRMMVpBfw8k65yz1Llj14BeqM9BXHItMagwf5nNYr6kaIzbKzpIi17NY7TRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eiBbJltp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eiBbJltp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4452C19421
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762734593;
	bh=VIdyqMZFCEljfY5j1skVv9pnvGULnK8q+cmvJJ4gpJM=;
	h=To:Subject:From:Date:From;
	b=eiBbJltpzf+O7ki3s/ksTCqq4mvrTzLoTUGtfgm5DccWlvl9QgUDm22xhjw5HOqxF
	 YUxATbSc1gImVvVzZjUBCFVGJp7l8rODQrBhPyt4nnMz0e3sAQNzNEZTBSFCIpid7h
	 0/7wzlYD3HEgYtfvIZ8WrHv5PsKNWUsmJd0B2O/B3HyD0ZgPyvM9V6AutaQ4RkDeZ+
	 iH5YzV5UjaGnkkrnH8+TKhlDp0f4bui1qvEjN58xf6T4SYpdI9lpWCoAf0DXqywJ4O
	 2nh8hcResAq7/bmFD+kO9kvP/03gtTXNzZp9w/z6Vph2JIsDJJv8XLU+DOp6Us8ATJ
	 YgF9GxadMxLSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975FDCCF9F8
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176273459358.29547.2142041195002972272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdc3deaa5d9e51ccbec89cde0733af1e461e2e234bcee703d0a340905d977b9b
Date: Mon, 10 Nov 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762734593
