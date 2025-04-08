Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9F11BC099
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744145994; cv=none; b=K5AKQ0LE9OQctHne6abAbHgWapu8iNzGbyucFxIs30Q7zon6tuOEKsBCRODppiqPWArVgKK81A+HJ0ak5C5uuRObc9jRM4P32E8X7embk6BvdzBc0yvnsJCDe5Dru7y9WAUrRv0e7z+84dXUpaz62b5E13wmoIwUpzU5ssXWdPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744145994; c=relaxed/simple;
	bh=E5V+aKFSf4RwWKVCf7KZZyV65ytqTG4n/J5UKLrbcsM=;
	h=To:Subject:From:Message-Id:Date; b=OqU2Sf5GeAzRgutopmn9VtXoRQYctSt/S6j9YxEd4FVqo5RG9jJ6Bp0DdS15GuJlKrlEC9ytzFSeKyPYU9bbFNGil9hiYRfXZ/5va6b4U58KRYFX4AFlilruG/SdiMbdW9Gb+4k12biT9YiIobhNb48mnT7f5BBLdhNdrxfVPG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNaoGMNd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNaoGMNd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AB1C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744145993;
	bh=E5V+aKFSf4RwWKVCf7KZZyV65ytqTG4n/J5UKLrbcsM=;
	h=To:Subject:From:Date:From;
	b=YNaoGMNdnrnmx2hG7rQmDAbmDsm5qA7p0oiv4rYHkx56n6EdMqDNqPQLC+Kkw3H2W
	 qr+sRM/54KoL/89YyiwP+osO+R5TOnni5euM98J32Y8gPgGZthTu6fErk6APWOIDmi
	 csfHnxUyFhYJNsNu/r9ukwhV3nzU+sPcM0+rq73dqp4D/+/jDO3u7qr++yHP1J3t0H
	 sCUd3RtsFqXdCfGqc5ivIeuf1lqD6mTDxGq+v9OwIRSPphM1tSS3cbR29brAn9QrUa
	 fH6cH+G4m+Ywnxi5+Mb9/MtQ1GsHDEAMtJ4UtIDAjoO6japPVHe079Oai3vCjs2RDG
	 poX9fCCckiZJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DCAC36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174414599361.28414.9138019323482908598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672626da917c1afffd5b4565c3c098b4dad065d58050b57a52b22ad962317d29
Date: Tue, 08 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744145993
