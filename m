Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBC73AB298
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 06:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778741434; cv=none; b=TiRhKrQQ4rM568mSPCFMMSDDRjDMBn+IWpdmWc6kqTMzYiy8Nf/Nrm4u1jxO/NxoRJgCiiT6fw2yU8ZncZ0RCBrLSvxrrCyEimIFFLtVo2cZsKcbBxO496Kqr2OlMzLgN7HazWYzXDfKXRTQkdxCekayoQs/M13CB5DXChkyj/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778741434; c=relaxed/simple;
	bh=ZUYbr0/QJNpSKbFGGUdGOoQ6sExTtsW31AupOE79K4s=;
	h=To:Subject:From:Message-Id:Date; b=X8B+df6ZPevNiVDNEEe6o+CK9lvW01ZIvkdAk5MtzHAMPLZFRZvUiJOunha5zKxw/1dIoEJ11vX4nsPOGBMf8JIMufcA2qyrr66ejBjarcKMBh/cWs9M87KNT6F2A3rXcEw35fBBLnF9E/nith8vu9c7UafzEchcTnklijhWdns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8hUF50x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8hUF50x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B877FC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778741433;
	bh=ZUYbr0/QJNpSKbFGGUdGOoQ6sExTtsW31AupOE79K4s=;
	h=To:Subject:From:Date:From;
	b=I8hUF50xiGhxkhv80KviMMc57bUMqZ3A8HOh5E3jQr2qTi+hnu2mnPELJiaSI6PKb
	 aqAcvbkqZjNpxDawSi010li720WKkZODvcmdE2nMxe0PxIPy275K7iRzxlfrNCuJiL
	 0YG0dPTuKXHyoRafSc2hD/5cntjHTfkBkEwCrHFTMNRkVubyxarUnUX9ZRCYNcDRzB
	 94U0x5E4F6T81MJcW9/bA16fMxaaJhIDr8D6PgDywNorG4EmvOme3TJwp+LWH3Pm1W
	 GXo3bfxhR61IYP3BP6x10705361UYQF9h2mdNVpvDpvIz8h67bk1wdHj9ff9OGvTBx
	 XpvA8A1SIfsvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA336CD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177874143368.11765.8105993011909218921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5bb23cbfb74db9ae4bbb86437ac7f31bdecd25916c3a8aa98531474a5a73fde
Date: Thu, 14 May 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778741433
