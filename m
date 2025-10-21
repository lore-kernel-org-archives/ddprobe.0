Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2014263CB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761023394; cv=none; b=DWEnY/zjeFHMEhnu/vE+94usMQl8hY0n2Jh60sxXrPEKZ0UA1JYuF1AT8Pc7TTNKSCEe5CVar4s6LkllvwaX0iHzpOhLqAe2oBHfPCbTTAPh+jSr8J8GfF9iIPt5/yRiHxuVvsdIpfqyR4jwq8pKOyOhd8OAxDI/kcYJglISkG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761023394; c=relaxed/simple;
	bh=uV3/yjM/PRc2Ts/rgWfC/SGIByTyRYJdkbUmJKiiS9o=;
	h=To:Subject:From:Message-Id:Date; b=gTAWobJ5oSKU9IVW4CcPcI0eUrftXAEa03HbDMfDKJrGPE2hTgxqJvpvi2e/G1BFDTN2FQvriZa94J/hCf0rzEVKyaW7CIZ0Z5Z2kiXXM6qpVIr/5vPwBW+tW/0wZxLqohD+fcqpnH7fdneCAemYnSf+bTIuJG9mqArtYTGQD0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIpQB8R4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIpQB8R4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47E3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761023393;
	bh=uV3/yjM/PRc2Ts/rgWfC/SGIByTyRYJdkbUmJKiiS9o=;
	h=To:Subject:From:Date:From;
	b=XIpQB8R40lwHMDRA8U3odngXXJ8PHfefqgZ1h5m68xaCGOhNqYwG9mAbso748fFw1
	 Oek6JPFyeiyZBiM3nVKkLXn+OAP78CGibTa7/jQWLJ8NuVtp2NIJLK+Vhv36KshHBG
	 EMC3HEQUnT2XbOCy9rcf1aAwU+BHv7GaXFr6kOeEIheJHcvPI4Ew4Rw2sehLEX/PH5
	 IUgHPxO3btXKc3JkTiudIDbbOfGPrTo9+C89OXgBw3LEZCTSIFn7NTt4G/iKoQfDWh
	 JFA2scjVHfforMFVd2w8V7bVN/x8NXh93JEveo2pk2lu/ppcIzVJgHuy8SuodcAsMZ
	 ThIu7akPp0CKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CD6CCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176102339358.23743.4778003647185957454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a2b0872e4142cf5b0e8ce66e15a59c63fb84271055c41c2e09d5cce08aef833
Date: Tue, 21 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761023393
