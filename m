Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1A53A7F54
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771953294; cv=none; b=B6ijiWgcVPNJ29rarloqOYz3H8uVkbO4wM4eDg70a50DkjItk70803Ds6fMyeZhFkRfoF6sVmk65l0+d6mr0C3tU+/eiHun9ppe15pug5tq32Z/IAKCeCQ5c0+0xQ/05JMouIWfPS266fF7lb56l5sPxMT/9LIolOK0c9TG52Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771953294; c=relaxed/simple;
	bh=ek39iQTGhkOEgsubdBp+bMLGj1HvpzJywdbqGgpBX2Q=;
	h=To:Subject:From:Message-Id:Date; b=P0PlCw9ELcIRn770be6Z4C9cJvvEYgZwSOChispK/caf4J+y5gF5gWJHfIajtpekIcA07CWfEfORm2mE291Y5wcOqwHlPHwvigvgzPC8j+ZpCcG2/hhwQQehQ28osn/KpOfVGHlboFJlg/eBbHNXCvrb45tsO9XdvE7OvE/rArA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zb9V3EEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zb9V3EEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A275EC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771953293;
	bh=ek39iQTGhkOEgsubdBp+bMLGj1HvpzJywdbqGgpBX2Q=;
	h=To:Subject:From:Date:From;
	b=Zb9V3EEVvGPSlnVTeYRkdd02ZIGup1AqUv0E0YI/0TpsC5poM07AjabFgI8sUnXnG
	 IKl9GWnEAB5C9I9ohgtC/wkslMH7vTvsic7dJHhMh+GzoQKGPrq/oYD9kEWgtSoPEQ
	 mRAwrTZZjR1EELBFILyvt8uj7PL7+DWaLGTs1rqZdVVP1bMQX7xLZpvSLXk6ezM/d9
	 jHXXOSnRGvPPxmUxJD3I5i53jedA5d+YKpWe5FM3AN95ZZuooJnDze8cnzsjVJFeYs
	 ZlKNFTGRhwcJvMjuXPncqHEkm2OWA4JsARKhnnr9v5lbDnKG6H/kWmaGZjokIKyuvs
	 3GmispaeeiGyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C13F357C5
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177195329358.24847.3524793159935298588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb81864bee37d3508b2bc31b975bc56734190a3fb958346899e22698943a0aac
Date: Tue, 24 Feb 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771953293
