Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A27E531E83D
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 19:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781377594; cv=none; b=Uch0oK5TzJyMG1/0djMvxjqtPn4LQ388+18khtxygAQALtrG8PVBSgPT8gckg9xigFGXRfpaozbSioac3nwXU9m87C2t9hgUT1JL6xtxZXTuLEUEGg9d6LdjKxnSwUON23fkyRKL79WWYD/m1gVPZz3yj1gB6jVtFA4UtQGRZ8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781377594; c=relaxed/simple;
	bh=eRfe7KFb9JCwKWQ3OPjq9Ke5G8l+5mmhdZNOBQkaQB8=;
	h=To:Subject:From:Message-Id:Date; b=R5YxuKIYZtoN8nyjo4UisIt3jthKPWQ5DW2lCOspkj+hwrDq/HLIcqUkY8fKks9ijG1Q3aoyt984kgUSmNHe7DEQtdR42gV8JF9ELAIbBSF/RcQDgmX98JxZYEC9ZQOaNyfl//UiinzgwDWjkrjA5s9DXIhlQLaR5PQeSlS2H/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/lpybWF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/lpybWF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9E6C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 19:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781377593;
	bh=eRfe7KFb9JCwKWQ3OPjq9Ke5G8l+5mmhdZNOBQkaQB8=;
	h=To:Subject:From:Date:From;
	b=a/lpybWFwciRGGZjdpmZe0dK9urJr3oMwq5wbYwR/94oYgdzLOXIiyoWZP6Mlkavx
	 XE0CFt5EWnPqxsDG4qZHiNNntQkWTOl69isdEyFSoTMWN9yhXZkhD40YlG7qDL3bau
	 TRrTNI+1PBSxm43pqbldsEbu5/EJfXtFs/5MPRgkgi9kwF8Imz2NwXth3wGrid1p67
	 J0AwZ6QGJ+6/OYc4ghJKB5yOnsnLqRie7RKWuHJFj5jnikzR9pLrx6QogJNndy+DG5
	 DfOFJqmv6JA+bQ+6NwKbIdNUv4lT+YJdmRJvWxgBF57TUH45tqZztGrmzaP2DJFYoM
	 2CBLR7lruaseA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1AA3CD98CF
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 19:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178137759370.22611.15944087728797411711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6459ba0ab4b698a1b2c76a5b7d59a5f54eddaaa306d015fb28af8f2fec348800
Date: Sat, 13 Jun 2026 19:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781377593
