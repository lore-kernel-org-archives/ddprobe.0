Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC932FE590
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761403194; cv=none; b=t5kSBFZC5pMRvQjOIZV9f5CpbeLiLW3k54nrXhkNoHh30NzcCuUvc0OO5N4Fb6GrmFZbKvc7f54Owkf+2YdL6bpv9Uvs5N0i5VD8MC6efLjCNZ9Y31fTGWB1GC266d7sm6roK1XninakRZbeWv7NgFwodL46cVPf74N4Szp9nBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761403194; c=relaxed/simple;
	bh=zi8hOOptxv9hN+w/8GTO5fS+uHp9prJ+Bqp5A1G2Uls=;
	h=To:Subject:From:Message-Id:Date; b=o8IHPQndRIU2J+kR4ZBAc+8PSl5gKf5fs73l0p7t6k90jtmK+EUQHa0Mo1NHKcq1hDdNx9zciQ+Z2DEcjzXBJzA2CJ5nDIgdSK0O0VbQhQrxLGdR/M/wJcRXSDfXznnUNiLIEwfSk9AbsNdCDKPridU+zcOAo/OwDI4DIuVJL70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEV1MvLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEV1MvLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDCFC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761403193;
	bh=zi8hOOptxv9hN+w/8GTO5fS+uHp9prJ+Bqp5A1G2Uls=;
	h=To:Subject:From:Date:From;
	b=rEV1MvLZsHFKvmHYNXkRHVfcPaCyrCcr2PeovI9EY3oNwYisnLVrWQX6pdHqnaJ2V
	 m+lddrl8ComTj8W2huWlCf3Zysl9IoMq/1eq6eXCEzLInvENUfoHTFv70Z891UaAkk
	 OGeD3SYmn9X/zQ96p6rbbvwlpY9a3KgmiSuQyGz964UOw4Fk1A7c3u3J4WK3scMuRY
	 DGvUQfbrhlPoy9ZeVfNfHUcPjQk6WuH3hC7/t/xmQK/Ymk/R2vxehm63OOxixiW+Wc
	 bIBZzdEHkBftzBnv2lv1vBbH1DRl4fbtDVrEavSJcuFNQ1Gj7AhmSS89lJv1jQ25/C
	 b8jsPge0vZLug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0CECCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176140319357.2985.12326213107509609793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f13cea3ed715bcf493f2dac6f7e437cdca2b32e344d3f805abd6ce2f3fb4406
Date: Sat, 25 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761403193
