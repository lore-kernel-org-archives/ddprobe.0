Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1FC944E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735719354; cv=none; b=U5zqfcPojiBKPP9aCFx5v1p7gNNRruAicsoS1OVcygmhO3jreuahOtUP/yq4Ja7BPt58CWFxo6m5A7tQk8QQ1jyt/+xKJ2reuqqeghAlvUMnChOilZJnbRueDZLlbbz92hVrevxmfgKOvhxLKDnkmNPCtZKZwV37FIxzFmpHGlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735719354; c=relaxed/simple;
	bh=2yVpkLIWY2SSrYVRKBdFdIoJaCvu0AMTDGZLdzIR390=;
	h=To:Subject:From:Message-Id:Date; b=NEAfz1r4sH8qnyrC+nSlDjqRXaq7FqCPI9DS5AHoXdvaw/Cxt+l00pbh4VY+8AEzQikZ+yLWj2blUFwT4u2hUSuaYAzV7budp7Y3pKXbxAC8yJH0WZXblSqM27tYjHLpNj5mkqydL2/3x3JSpD8kAsMCu/aljdYSV46ES1Z6Utc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzEiLF3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzEiLF3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D3AC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735719353;
	bh=2yVpkLIWY2SSrYVRKBdFdIoJaCvu0AMTDGZLdzIR390=;
	h=To:Subject:From:Date:From;
	b=mzEiLF3Xyj5sYE675jX4HlARUWExnoj4EelLdKmtAlsletD8Z5kfrTZuHOoSeMl7y
	 ACBgRrgIsYx7vWwbG0zBmCs6v6rzxHIZFnVwLpPbUmy/OwXCAqRubn5Mm+2oeEJ649
	 si0nlGT/dcSOGKA/Api1KDx0V92DeLXqYa3hxiVM0CXJXKhFDfNi4RrSDLaySrKqVr
	 STwGEpLCfHI7Hi4q25z1G/Dvd1ahY2WzvAD4rtQ4WRUv4gUvjplaKA15mhBjCInX7E
	 lPDpM+LeKK8I7UpsQTlb1k1G5M3t+oqtfjghUIoFE1BI/FCnQS866YcHensWNCzwyJ
	 ewnAJGkmmhwxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E62E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173571935358.728.2505211628012106199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 078fa5334914e89288d1e2ea66e3f3f34b6386f1e6191b9bf338715d6d83ef18
Date: Wed, 01 Jan 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735719353
