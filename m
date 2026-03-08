Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE07313558
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772970894; cv=none; b=seau9UrAcvhe3iKnp8IpecP1eWOidX/zSu/rJdcVWMkFzgLiBy3n9fe3lk2U3mVDHDrypqWxLKVv/8/h4TstOqOfb5EodWyE7ot43CU3UJx7OmQnDl/+iUZroClXwIcMs8oESvaLGsjPQYKIKr+1GMAvbQ2abm9pD7Babgt+g2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772970894; c=relaxed/simple;
	bh=FKq2ma5SPvTExeGJsctcOnpsArPZTnObuZwC2kLFQpw=;
	h=To:Subject:From:Message-Id:Date; b=CCZaQ6oj0YbGsAC9an7znm4Fm4p5A1GOSL8ZOKGOWJqNLFV2Fswd8r8vRYbOwZ3jiDjk0CeXtp/1VG8m1YN5my787A1Os0qJDnW+rDWYavHH7jW+8szTGK9LM8NN1Wq8s1BgdUZkQW4Hr8quDEn0vIaUtmpMkrwQFVsevACktqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjGblFkv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjGblFkv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FB6C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772970893;
	bh=FKq2ma5SPvTExeGJsctcOnpsArPZTnObuZwC2kLFQpw=;
	h=To:Subject:From:Date:From;
	b=DjGblFkvq92u3IzE3myt60NMoKJLej9thEFbaBPvxzxJoCUBXfG17gESm4P+6m9wj
	 uzIeXLOw86ST4Vgcw/ioN3Zm7zuhL9G//LZvgolO6mWMBFk3htArqBVjdM4CXTc3+u
	 bpI5sh4piNrsf/10+MV3tLX5zpt8qFoAYZBaC+EEl9rNSyKD6wPtyErVAtIrENnjwk
	 k0xB8MM9z2snasee6MzjnGQ+GucxuYlLhkX+2SUAZSrfPfKN3IZI68wKPvFyLRfcOD
	 HkFJAQGo52eR+Y/Lqdx9YA/jcC87ZlAWJNCyHsGcWMJfHVnbmfd+13DDRRX1cPDHQ4
	 jel4kWYTDxDmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92016F5513E
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177297089357.2234.16634499170815616638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e27b686f78a47e25851e0f307e2afb25b35e77520431a7fb0060ec3fd43fe009
Date: Sun, 08 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772970893
