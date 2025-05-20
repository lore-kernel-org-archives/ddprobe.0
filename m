Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3932B44C7C
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747707594; cv=none; b=tVTbSWDco6Oa0/cRlh8I5WLZm4X2VbshBdjgHEriaxJJHh6nvqz/aw0IoF9lh851QIDxzzn0iF9dO1QiDBeh4NSoLqwMJIcf20qtVrgmEtmVLhPq8vHxM1DGntaBG78s/DW+Ki0ZlBJdsOxq0Ie5bxK8LmoMJLRbc0YibW1xYyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747707594; c=relaxed/simple;
	bh=T9SXvZJwk688ixI61qmjNpn5tFKu8IYPnlXvSsirIZc=;
	h=To:Subject:From:Message-Id:Date; b=PcJs9DXnHgqkbAoxOG2kXTcKWcwNSgob2/BkAgqzqCmVEf1gNrzuMpDLWgA9Sl8h/AD+nzg9A3Ra+oiPo8EpQnO5UZxM45E3Do6quvTXAHGV9Z49gC9zWD37KrtxwG6RSSPyEqDE1phoVcAXsJi5/UprvuW87FCqXSZpnK27C58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+EBCU2j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+EBCU2j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A008BC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747707593;
	bh=T9SXvZJwk688ixI61qmjNpn5tFKu8IYPnlXvSsirIZc=;
	h=To:Subject:From:Date:From;
	b=U+EBCU2j6uoHvAbIiFBp8dhQsGMe9/wksYj6iHZt4vbyYk93c+TTgrCV65INXB7Ty
	 grJT3SIx+nP+/UPvNpV5Bt0qwZy06644wurMV+1e/FH4iuyOrGcK3n6X45bwXOE1Rn
	 zCjxu6IwwzoNXD6RprVdvboyrFjRwP7zRPHqgJWaSUJlsdJSDiH7QZEJKw+UWdmWdc
	 l3+6ytClAlgkAykE4Whl/H3wzBAFe3si3YQC/ahgtQeNdquMExc3yZwfi+8KVNclIF
	 9/yP8LfvctlKGDjYC7fcOJkmSU+HzAXo5xweZsoMecYlh/cgenEoPtjrpkwcBqpmrU
	 wyX7V4AKM0crg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE9FC54754
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174770759357.32567.2229835398280967321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba623a272533e607679a47a53166a05ee8ee4bdb167c87b188eeb1e374539922
Date: Tue, 20 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747707593
