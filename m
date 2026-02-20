Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16024366042
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771609494; cv=none; b=q67veO54S3PoLDAtbmNCXdYXqSxaEunT9e1LFw96t+TmqS75oetEHGZmeg+VrYaMCWryeofOx6brVrRTW5fF2BEM043UHEKAZvvK7vGSOirsxIfFniaNv9/hNXtDz5FBD9l4E39P113JNuOdvhMXw09zs6/FvvpzviSybq5Vuvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771609494; c=relaxed/simple;
	bh=FG22XREGkhwnt8BhlcPUO0zawH8yjs+mOSvYxSpFvfM=;
	h=To:Subject:From:Message-Id:Date; b=inzj+xs8FIfT+ol/FstLVvq6V6TJqM/tJTtOFu+klStT9QlacgL9weJZElDAhLc6QpEdagOpogU2PmxnfYLiSBpAjE0dYao/NQSkGnOTc3eoLixv7rDVJJ9/Ywv0lDzbSsWpdtdV6hTRYJE/D/mWLZleZQlbYZr+orW4b1AHwz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zx7skRkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zx7skRkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE3CC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771609493;
	bh=FG22XREGkhwnt8BhlcPUO0zawH8yjs+mOSvYxSpFvfM=;
	h=To:Subject:From:Date:From;
	b=Zx7skRkVwWjONu/b43dvjAmHszFoxVf/jTdlwReVNa0fAknq603+ZmHGFC+R0mFm7
	 0asN2t0G4eGl5tn1RJzHGC2AHZPgw5K30MNwNa7A2qYW110dr0JZ6fidyfNnWt6pWv
	 02k91GoBkshvSzebMWSh67TAfc56R7fgwfmaRehP+LgVanuiXw5JBxoArPsfrlzQRy
	 uZar1dFNn86l2xrbWwYz7HWI4wCnQ8IJAxaWZthxSptVrRxiQFL7pfp8ZU2tcmDwF7
	 4Te6FUpdJeUVpb3N6iQiFsOWtaY9n97NfEaLKxwpTUIZD89Z99Q1cV/41kFNbxK46r
	 LpdmMY2nP0m/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D7CC5AD46
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177160949360.15676.15683353299571241141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69043904fcf983c20fd95a0ae4216ef4f8786fdfd832a48ac931e9c613f0a9fe
Date: Fri, 20 Feb 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771609493
