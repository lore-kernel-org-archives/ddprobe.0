Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE13800
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 01:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740965334; cv=none; b=DutVD9tS47Ni0XAWfWih0UZpauEudZONSxYcjrnU312Fug2fySULqWwgWUqgjtR/6njBreIEvRVaIVjkFo61wZEnkOIB1N3BEkdJgmAp05syyN9X8pquBoGVx/YhX2tVt1ByO024aIGqcM9xrgJ5+k2Daid/BpjsPPaR6gsVZnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740965334; c=relaxed/simple;
	bh=95+YA0hJweFuDZa9r2SZGaMFlD5NgqZuF2B+egMoQzo=;
	h=To:Subject:From:Message-Id:Date; b=NrikkTOyIWHnQNFLT+GZUNZUWoJVTz2mNADNllX2uhVsKUiR58+18rtk/rbzAEqM2VcyZZd34ENYkHWrnF4/fG7VwrSGkaMUxPxekBsy7/zTEvW9RHk6QZbz/GvQIt3CxRKvq3E7BZDu8NH/SE1iTlGT1dr0lKAu/X4A9zQv3ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uFJDzQxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uFJDzQxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B893AC4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 01:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740965333;
	bh=95+YA0hJweFuDZa9r2SZGaMFlD5NgqZuF2B+egMoQzo=;
	h=To:Subject:From:Date:From;
	b=uFJDzQxh2jawgUYLzk0SEP9X1ZZ3fe1rtQTVqRBVcgp2SFTelLiv5sjgxIcX3UzTX
	 Fg4wJNHatlDrU5fr0tSKeWVEAZzXm9md1AKIn4q4gInpPExQIyJYOyoyybU64E86z/
	 YcQVDWiQ0voZwiQjZpr1n98jVl3ZmWlP9q1aU+NdW3IW0KuTBOYfbWXoKFSsvH4XQF
	 hT2rWXL6DLxFK8gNDoUekmKbEHq08R+TRNTa+XPLTqMjLZixdPynIgcHaO9FPeiwIW
	 5KKDakAsX6utRY6dk3bsjO15yLkVWptv8AT1v+u27jAeaoH4TP8FLW7aicKUvsY9wp
	 vbUaKIGMFiTXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C7CC19F32
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 01:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174096533360.24176.409457860235987168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 188830660e450d3005a1a05a78bff6759398dabe13ebecba3fe8d4dbc56270cc
Date: Mon, 03 Mar 2025 01:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740965333
