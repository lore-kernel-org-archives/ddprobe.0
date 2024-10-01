Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D251C8FD4
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727794554; cv=none; b=u83eY3cPihObk41cLQ+wz5guIB0G6vhLiNHFFKMk6a0/zsk90Av/bSfyjURC35cNjcM1txwCxDExCcthYqcpyeb5VTRRaSOKEnIB2cIq20iNaWn8apyJQR06r/mfG1rHT4K+9lCZKeLlfZ590TIEfUhUNBzZZOCGgcXh02P95Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727794554; c=relaxed/simple;
	bh=LK9hlyS4WnlXjPG8WQKYIoltB1R777aO7O7+oLBkO6o=;
	h=To:Subject:From:Message-Id:Date; b=TbEXOgxsSuW3rjHUNYZrORSqUTmhVIN1tUp4QAQn3iFvgjtrk21tNmnvkJltqPEIzN2FdUFNMAKNDKSPWoXGJfa47pKC3tz07hiAjWOla34jkakkOXU6AWc2U0RKAMjqgPPeEBMg833NMhkVoF4Ylcshq8BBYt2S/cDPFXFVwQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=emN9sfO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emN9sfO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5798C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727794553;
	bh=LK9hlyS4WnlXjPG8WQKYIoltB1R777aO7O7+oLBkO6o=;
	h=To:Subject:From:Date:From;
	b=emN9sfO9zluTT60ZqslC8EyiMBP0EZmoW34g21YfkNjN05gbZhCB2xAVRGkf24cZs
	 9wU96NU2qsjrOcb80x8St7rf3PzdrSCTTLJzQIOVKe77aJ35nPR8dKO99p5keiwJMn
	 viY8oVFAYg75RfS2SymulG9yhV378v0v3KO4bG5qf3jPV47HEiY2ob2zNlIs6bSz1l
	 Z9AYnVYx3/LxTdMJVwLJBGHZp0+jA7LhG1OjcmLXNyLOYvQrhFdTgwsDhMEXxKw3zJ
	 P+rIhYQuICyhlRFdw6pdwn6nGmKM0bhWhYjtMMbH0D5P8+o9Gbxv2LZonGa7GJ0Z6C
	 h0OgH7qwdKwlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E479CEACDB
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172779455363.30684.1460858616771040908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c722abba2eb738911e772d384cc53eebf869cdc703574499c5f2acdd736d079
Date: Tue, 01 Oct 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727794553
