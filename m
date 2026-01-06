Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D97329367
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767723234; cv=none; b=W/NyJHQq6uzO44N/dAbQTs6yWlxdf293gW2sM7xHC0GiZoH9yS46FMhEmYZdd/BHqUR/UYyjGqF5Vh/X0O3SkXPt/Ti+vyh7BltLk6ZtYryWesVG2OpImUaVUibxvlbta/ERiWUr1NvQZnahEtrKLoKd1b6Ezyw/Ae10qOHwiXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767723234; c=relaxed/simple;
	bh=pHb4fE5HzvkCDLsNfjOtnZJqlWqnfQBf8fPQONSIUrE=;
	h=To:Subject:From:Message-Id:Date; b=rMi91e5PTGHHEESwdZdhiqHKrf8YhqeV/D6lJ0WeNWxD9fmziYMrWJGNyztatQ8Xl3c8vwfLzqV3xqxW/YO8hZC4M/wwSRiocQSggZC5AumIbtuvFOH+4kb+K57u1Rb536AUcxoGpJc5kOqgbI9bjdwEvPuGlKpIDzZfONT0iQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgy+Orvx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgy+Orvx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4CBC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767723233;
	bh=pHb4fE5HzvkCDLsNfjOtnZJqlWqnfQBf8fPQONSIUrE=;
	h=To:Subject:From:Date:From;
	b=dgy+Orvxc7vDfv9saeFPUE7Odh0VBK+UuYOrEGnolq0N3Lm3Vy7NrWRAdbcoMKogY
	 FKRXsqqnMRtEkl5u+GvHtpMLva4oYofCLmoLFOTXDNNzY9Ubf9dgIPxkAq7Bx7VZC3
	 TJAyrFaWwTjadArpuGagOg3S45RLDhi6imQlggKc9hI5gujQY2G6yE61RRu44wQNIu
	 A/bLIJ52WCXZqzmVnMp1wZ8gwZumf+ExVG0KVA2xogVR9v4ldg/qacsmwL6eDkVq8d
	 Lj9K1EQhnxWZKgVroP86yzp5SjP0/vn9HDFqehlvJDub6DbWQWo4tJFimMEV+5+h3F
	 eWgUhx8o7otFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90985CEFCE6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176772323358.2640.15205704022141074017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a87c07da10acf7a7f084cf10e2e5c4f0f516e0c4a01348776d87114b18209db
Date: Tue, 06 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767723233
