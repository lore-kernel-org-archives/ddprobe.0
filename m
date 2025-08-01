Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E372C9A
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754020194; cv=none; b=lr4wIzyk3+bXF1NfVWZu/gdb9kmPJHru7/S8fyBSQ7r2vFwbONmj/GLb3IN+zxNBZJeyZisga7Pxz3JF7GUfuuTY+/lIgVjr9qmkpRucg0kyamXDEvXmpfKJugQYrl7/nhO9nixyrYKBfkbxac/qDMyiE5s/Cw1+FJWsJDD2P/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754020194; c=relaxed/simple;
	bh=iXBG2eLvbkc6DgDKlFshn0eZLJBDkAsuGC4mZnUQfV0=;
	h=To:Subject:From:Message-Id:Date; b=qwrhpZ8nXuYp/pUyXy6CDRw7qjmyegQ6Er4ASst3oHNs3+1LSS0FwXnmKRJq7WFKDd4YYVrlpHojWUkbAC6rUXHD9OLD9mVzjm2E2GACmNJamKXrWdvX/uj4rjXOQoIIDkYqCACuEgXprQGysHg02wRm3gat20/Kc+v71RZVfWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPjouMnU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPjouMnU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CEDC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754020193;
	bh=iXBG2eLvbkc6DgDKlFshn0eZLJBDkAsuGC4mZnUQfV0=;
	h=To:Subject:From:Date:From;
	b=VPjouMnU7eojEQWB5zYb4awL6OmpNA15s9qlrutfMg5+jJFQbJ6AtEekMokTplmwc
	 twMIi015liz4ETqRBzMAuceKW631tRNndbO58sqVldZb2umEzmHf7vtV4pqg9LrOWB
	 dRCKHNIZpv/dtxumQ77OraMapYUcGtWgGDq3kRBnuZ+/iwGZaUXNuAnjjoebRpjFNP
	 k7jwNuD5Efm3Jdd7dwhP6k/6ez6cQFyEmne+IiAj44RyijQ1hz9cJTG6M2ZC6k7mQo
	 VIDwcHBhy9+TV4mh7MslPr+GArbW24IW15VS/bpM27A7YfDUny9ZyA4jYRfA90UIDT
	 izJcRwcY16HRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91558C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175402019357.5258.16304499326135960833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b129d85d69001bf1082b0447cf7455480629faa699eb27a37843659a654d720f
Date: Fri, 01 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754020193
