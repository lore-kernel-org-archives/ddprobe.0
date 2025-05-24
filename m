Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F761B043E
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748084996; cv=none; b=tvSCLfZJLXlSzAe4mZa1NeLF1Kxxd1xZ2fTowpJYI96eTg0M4fEvf+kMHU2BjtZaKfuK1gt5KcMGHCXjDhl2U4zdeKTfFyafc1GFRIN/Uh+JY+e84l72Myc0pG6Ckg+p/brDITe2EBbIgXj374mf1yHIsq+SFhZ85rAH3MSVSx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748084996; c=relaxed/simple;
	bh=KZlUe++ZBkTEHJbVuRyPS3rFqpHhyhTVDdVJURoj3lc=;
	h=To:Subject:From:Message-Id:Date; b=dKs4tEASGT8RgyfDeCa5ErtwA3OD9k4R19zOiwAeJGvBOIhTUcIv+H9x2seL1D1dLismpqI9U3Kf9ZZtruEL00Tk/h3dXBzr0QVPF+rgRas2/ZPt9PKFhjkRN1VvhyI3xmUdYo7hmxSilGIXsZj7dje0NWkIExFHJxe6+bfZET4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1ieY4ck; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1ieY4ck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23F5C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748084993;
	bh=KZlUe++ZBkTEHJbVuRyPS3rFqpHhyhTVDdVJURoj3lc=;
	h=To:Subject:From:Date:From;
	b=L1ieY4ckxaXJsPLcXwJUX4Rs5o712PQAy7qQ6fh4ytVgiiAMz4M+YirI8/itUmQF7
	 bsdPWE4HX/6tCIuo6wIbErssZhWpO0gK/4bJGmeWOza+SjuF05N1Qy1YOW7SdnEDwz
	 Ro5pYjNA4eoCiIW8oq4KZBPGGcmEGdNfAOLTkdu4uUVWrtluuNxqQEo3w7tfQjHf3l
	 N0lTgxygjo6BsXOTMUWNiuMYPVu08UXelCc0nVWtuU/DjIWKjAXbB3MH+6TmYzBrju
	 mNJD3f+D2j7QoAVFCVlo6isY243vOnSoXuwn4ll7GmOZLYBzzUgtR9wKabaiKcRSgo
	 WAKCXBtIXQf6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFD8C54EDA
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174808499357.28814.10272266669148315621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b5514d6bc525e36ee1571d0faa916eba93df723fb8a16e6643ecaa432f4642
Date: Sat, 24 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748084993
