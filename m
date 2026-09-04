Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84D49378D64
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788487834; cv=none; b=QrBDxaf2/NjKFjCZCjArd5M4OBYssjHmvUm+Om5M4a7GX3MsBynJlBkGc+L+MaIFUxcbl/lGkgt22vGe4SVZevcO4+Sdw53VPN6njMbKHqZYHRC9jl8/o/IAQ9R/m2x6XfHhUZMFNvn2s7a3EWh58o7PqAwO2YRPr6fIhjaT1P4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788487834; c=relaxed/simple;
	bh=CN3RWDg+14iOCB5PJ0ZQ0gQgdoXGWI+jkeZrFcaA11w=;
	h=To:Subject:From:Message-Id:Date; b=eQ9lvpA2c+0ei0VGEQ1mVUtcPzUCg5NKekAdSCxx/fhckAtdCPJjvbIDmEYXvN2f8bYejfI9TMlG0tNPJIlHb2ORsxS+cuMmqnJzSSXIB/Gf4obtWUgRhDlMKuT5j0IWBiB/KU9pZ/3K0NNkTue3x7geV1l6GHcD7Bms5yC3SXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctQZbpLn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctQZbpLn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78F7C2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788487833;
	bh=CN3RWDg+14iOCB5PJ0ZQ0gQgdoXGWI+jkeZrFcaA11w=;
	h=To:Subject:From:Date:From;
	b=ctQZbpLnaQWApSw+d4NNoNqei/+YGQvBQ4qhGKyuHiGnwe3/NnYSp0CzPrhI2VXxF
	 DPNX4C7ReRym+lTlnekODVH+I7MJ6FAvTOI/WsCQ0qrPFAHGQpMwMInKZauAdi9fT9
	 EmhWStqM2vFpfQ7175y5ZwKvF5Ex8uF2dVToXXb1qQ+UO0BdAZGg0dLRWaa+WDFDqv
	 TL1WUBgF7AdIQGpHophcrTa4yf9ZTazIhM6B6eKOqiiiH71cUrQLiQQaTYm0gUn40s
	 RgR5RimQVS292XthvBC3tibyKHeRX3LP9h15yhXYVZ6HtqhkjHVFewGzqEJHHLNuH9
	 OPKHVfV7E3dKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E15C61DD3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178848783370.19851.11596851025377084544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34b61141190bef085927d35598aa9369edcf4e23ff107c2fad67cb7dd9331ce6
Date: Fri, 04 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788487833
