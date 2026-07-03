Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FC612727EB
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 03:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783049314; cv=none; b=ch2jksR+jjLlwayGax3837EJxyzTlZVDa5XEswDLbyDcKJe6R7ApHks84sve+d2Eejs7q7rrLUsL9zct1RZSvA2tDKDRpdKVydchBQJKWUSzYh1zN6uUaNkFtig7Y5LqA++UbtLIk16nvSkr2EmEYKPPvQ7x8WB+CITWdK9FzEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783049314; c=relaxed/simple;
	bh=rjUM+mwt3wwOl3iUxvh6AKbUZ9m76VFkQKr3PU77i8w=;
	h=To:Subject:From:Message-Id:Date; b=Fz1r/PniZ9ojJ2HhnRfSL9G8KGQFRw8PrLl0sB8wY5N0eGBhVhxLy+FWMRHt4Mu8Uaxl1MeL0XyGrNuy+6BslkTVugkEGNpIElZgfxjOsty9eiLV3+i+c9PCOteMj4z+tKCqcrTbq2TJepqKIICehB1XpsTFXcE+g+Q0IjmxB34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/RbTQVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/RbTQVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B41C2BCC9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783049313;
	bh=rjUM+mwt3wwOl3iUxvh6AKbUZ9m76VFkQKr3PU77i8w=;
	h=To:Subject:From:Date:From;
	b=P/RbTQVUXIi6WmgX01vUjTn5s8df+fVanw/oamfBZpDMtv/JpiYqwlMpOYciMWI8D
	 iqvddDlXr4YfjS7IrY7II0oN3dwfWTv5YPNuwncatxnuyQFLI0tuYR0Mcg7GkeyRCh
	 ZqgP4t8fViUOTmFmAmO2MzQO23vjoMraKcKTtkSKoZEQH+R3MvuyhZDqU8R/uAqoLs
	 x94ovx/JMOrNhtTdEOSBUHAoGNTOLr5o1v5m5dQh3x1KeE9iybaN9q/98jQuBDuvtp
	 otk/LBYz4BC1V0wHnYqY6Yn6ewlvtq/ypeemNP2/D7sNzWssXMSkfV4lWID9XutjNK
	 5GvSCRy26vN5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B86C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178304931368.11978.6926497694326731359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c59e07f8348bb370f95f231d90385196b6376b3cba21464cc53ef73bbeb14a30
Date: Fri, 03 Jul 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783049313
