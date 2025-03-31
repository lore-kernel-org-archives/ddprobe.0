Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59025F4FA
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743384594; cv=none; b=CjeqjdyrzhLFOsOf6c+FKPmG3gDvruvxpombKmQdbgcPqsuxD2DNwZgWPMriLQ1hOYyqYk3ADVhtEppt7/XRr/AlD4NUeDF+XYJbPjc/prBOUhQEpNZO19NtgRzYe05IpS23IyamkOSeQJhi952lEXRETz3qPq4YW2oYhnN5GUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743384594; c=relaxed/simple;
	bh=w3d52ljJYgnoN3bvcKIRgK/I5POBbN+fPI3GHEmp+YA=;
	h=To:Subject:From:Message-Id:Date; b=rDVf/wgBvZsHZDec+6X1FS7KuvSoxYqyNrdsfPEHqqfWWOeLxPMEiAgn/Eqm4hwNy0TQv/oLqhKZVhooGghFtnDpwzt5Bo6Woa+eiM2ZcGS5Lt6lFRzOfwLLKceQvkem5GwSJM/8j2dwxBAM1z6E4XTUaTe1yRQk3sqMZ3pAeGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvCjVkRP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvCjVkRP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D6BC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743384593;
	bh=w3d52ljJYgnoN3bvcKIRgK/I5POBbN+fPI3GHEmp+YA=;
	h=To:Subject:From:Date:From;
	b=QvCjVkRP0EUesaB4GmG2f69iowtx/Ha1pXW51G1ekySk3y+MmIHxwDkdlNI2UJA+7
	 GIRyou1hiLEN2xiIqKRO1VpTbN19Kz3ZDWygbwFmP2s8lM6wxt2HFubt0lfolm5DXp
	 9jmUktCqNinwJK/pzoCcOAtEr4vlFy9zYSOLizENi69onw1Mz6rit/aR8REj11ss53
	 raWNikdrsI8KGRmDPl7b61VhHDsWLSPC9SH631HuudVuTSzRNMcbMTXPnqEQ2j01qY
	 IDMVeZyPwPxGBc4tl8ueMUt5LHfSB35O1hlnU2HwKKDfWSgNCXr9GppH6tqGvPChB5
	 edm4JxLmuBVxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3110C28B20
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174338459360.7274.2269124733818048918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4115ccaf3c908400db027fa9d14794cdbb213d64ebc9a947300e589eb76efa47
Date: Mon, 31 Mar 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743384593
