Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F05581B5EB5
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746166794; cv=none; b=el4UKvF0GjQmxzCmtZLEkUWMjCC7r5BXYic0dM+wFnI6MSkZthPdNyMcm5lU+tQNM80lwP8gm219vv/hCz8gaLglRTfgvug56fcnqCADxisjz6wATRZ1QePGJyiAJIv7TftRFYZbRbULIGDVMMo5RedXJ26ADeXE9+YwvFJjROQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746166794; c=relaxed/simple;
	bh=xxRJiNhCImsRglRFRuvZp4ozQJJ21H5OcTKVvzQamu0=;
	h=To:Subject:From:Message-Id:Date; b=ZHRTo4BbtymxWqSetgKcPSrmsXEAy3qDrucHJryAc7IZjn/5lzDk5PUIBDCIQ4lFxhcHH93Wo1jjZYRqbmj2KaWxlWb5m4ZC4Tu8QUCzeiSscvzS5QdSD1kxmDn2HWw7Upb2p4I87wJYdI/kl02DYP+62rNiYR63tKXf4zHqgYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAS6OhKx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAS6OhKx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E4EC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746166793;
	bh=xxRJiNhCImsRglRFRuvZp4ozQJJ21H5OcTKVvzQamu0=;
	h=To:Subject:From:Date:From;
	b=LAS6OhKxe3TvcSuo8Lu+iob2HPOy7Z8GaqVYtfmCk/FHVhd40cGfR2wSLKN5QW8lX
	 L2q4hE8GmwELblkCXW2xxqSO3aLH4aZyiI72q4QN8lFtrIwEj7s1N79FLyaUWEWCUN
	 Bazi8dCMdamG532eafitqLx+ErS+Bu+ZHLjmfJJXUfQgsCROLYpXEZTSmO2OMyQAK+
	 vn+f/kPi2Cu5/WKFj1uNqFLGBC7Wn+fCCV3oKi4Y0cqLOP14H3bnRGjvgm5JHqN3gj
	 zrPLHc+7gi0E+8iS4iZroQTkyyhOHqsLsGfgnvda6Z9CTonS+5rPozxY+Wbuyt7V1H
	 dnXfXplB92ttw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9486DC3ABA9
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174616679357.10121.18350253892202974056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c6f2cc94ef686b0f80832afef416e682e9143edd303f03b7af80205bd7d54b5
Date: Fri, 02 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746166793
