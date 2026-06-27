Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423E9313E31
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 12:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782562114; cv=none; b=abd94RfbUpPM6ckmtFynnXRkISWIqqIG/2hSJbOnOHKV7kIJIunZCw1xIIqyn5A2MawAjzhQYAGfUe2LF60J9cyTJFURup5HY3LLqUVsx+6A/9Gcp2PXgcfaXwQ3uNyztd374E4eLQMo5rHT4wXQwzbnn3CeEUf4rWwi3nBGnj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782562114; c=relaxed/simple;
	bh=ShSxDjOKY0FE+CgxLfNIqKHrmoHzm511KwQPcyaTYU8=;
	h=To:Subject:From:Message-Id:Date; b=ubTEX56wbcsq9b0C2EMnNUoj7LM4UB6aOB6mW3Ahits0+T2t4SsVj1mX9Ed7X2g28J13dS8ON2gfGvWo2GCf6OKjaUBbpZLykxMlsHJIlBHvGh1zM4vz5qbIjyZyhtJoeX0bjLhoOj/u+WvJ5+L6jfV71+zLfIjY6ZoLeROK+R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LqhVGNab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LqhVGNab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3782C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782562113;
	bh=ShSxDjOKY0FE+CgxLfNIqKHrmoHzm511KwQPcyaTYU8=;
	h=To:Subject:From:Date:From;
	b=LqhVGNaboXZ+0kRrR9xi+fSPo//xeND1URnJLlr0eAObhf5b4qoMuARnnKSTgdGGn
	 Nr1uWlQg2U0ifNUAsYADzNgCp5sS0CdQPBGnwHdF8I3nd9XtEmIAh3WnrP8cOAUiua
	 /aa5Vup+ggRfvtrIbXfhTLlehmHrIXeGgOFk0R554rHuU9Fqt6cvPuNdTQ64vMfKlq
	 JWdG+5ce3o+aBSH0ESY0Cil6gEBiYZiSBMqwXcvEtKiPTpPfK5Ex8Z/Gbg5NuF/eCS
	 otvI+Rd8Zy/CZSXn7oTC1SAbEPLd1gDqFy95S8/P+wx8xGxL7HH8A5xJSp3PgtIH7g
	 /yNNRM1oye0mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7D5C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178256211368.17522.18140136674429236681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b48bb5f4a6e3a0e515fd98bb30e85317c0f8486cacb59bd56fdaf44f7569ba6e
Date: Sat, 27 Jun 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782562113
