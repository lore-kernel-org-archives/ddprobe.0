Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB691F92E
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776129454; cv=none; b=Zd8bQhxUYeIR2BqGgNUBcCRGV44NuJtRdegjUL4h0ASrzPUbQib6GJccfACivlOdw4hEdEModm4PUU12VOQZAzmfnMRjvO22ILNQErD4t+dr2oaTpM9GwmXgrDANoH3xJ0ShwmFVAzUojhFDCX+CXt1htWGjYGbykdZe6RdUCYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776129454; c=relaxed/simple;
	bh=PILy7/GglYFPzWS7yJsZaBzVH76Ign/pMyB+1jO90UY=;
	h=To:Subject:From:Message-Id:Date; b=QWkuIgx4cMfGBmc5Fbp1yj450ouAmO1/EQNomeKyoTHIFV2FZAetbWWsbQfVQPxpSycy26DiaRlTutiZpAZ23noNEgbyDc5sv18J6/9WUSv7iLXf8qQ16FH/uL9Tr2ospl8gR7+2CkPvqsdnmZRNshlAe/NPsjJVDgLig5N9dtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4F+7Qb2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4F+7Qb2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F15C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776129453;
	bh=PILy7/GglYFPzWS7yJsZaBzVH76Ign/pMyB+1jO90UY=;
	h=To:Subject:From:Date:From;
	b=u4F+7Qb2urqGn2RrxLBXCACt3lloAYJKaEeK3r1pfmcz5QUptyp1je9LwfmvX25SB
	 rpJD/kc1+0znUXt7KbbsdGTlQcITXeUrpWYZtuMW89djEZ4aSrxCImwoIgU2RiB8wy
	 52e3tHj6W4iWuJLM9fLVA7eOteGm05e79BwlRcBRG46d0cqXGUK+y7616VX8XDwfsP
	 YOmkLi27lf4HmDIezJUe1GZKann7BPZohR7IUsh8VukiiB/0boLeMQUNJloyZyis0c
	 0r6g85VbOkl9OXfWAOyph3a4NotvHQVG1Buxc+nDiOO8rMtkMUclI1aP59laU7k0Z4
	 nagSpPkhZRNdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB8FF531E0
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177612945369.26331.2546983343214209936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf8dac7af161b040d51259bd6ec96cf611a2b81ccf978da623daae6702ea823
Date: Tue, 14 Apr 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776129453
