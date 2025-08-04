Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083F51FF7B3
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754301594; cv=none; b=AOAL42LD1etkDjBWCzl6P0PZbHq+FCXZTR9l6sneGQcjDXwOcI3DldQSua5C3cgLhwwHiyMPI5B6HXutWBO52sxHLIgWz1UzwMzHfxiaLCM5nCrXxAbLa1lGcjWBNXi4PS3WkQr8OwupMRWbEZqudOtMzoCA5CAk6U3rkdGnxeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754301594; c=relaxed/simple;
	bh=F2oPDzzFiG69c3KzE9Or8Gsn5nb9KTdu8Mgoy1gb7DA=;
	h=To:Subject:From:Message-Id:Date; b=uJniePcFFc3ilf1x3Zzd8+L/Yfat9K+H7D1Cvq66rELnV1+fR6BcEaAATeGAajy0H1Sb1U+QfEbm6+W82p4cLCrFWm0orXuC7hcJ150KTVfkTBsR3js7W8mQ8rb1qnHQ/+VoLg4bJMsKXXe3izhlrZJ23fHIUoOiJrhK3QV7bx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spIW9hY0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spIW9hY0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A63C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754301593;
	bh=F2oPDzzFiG69c3KzE9Or8Gsn5nb9KTdu8Mgoy1gb7DA=;
	h=To:Subject:From:Date:From;
	b=spIW9hY0gHKawCOpQB0OZgk5cRW6FPl3YiXlSLyeyDaET/K32o+AEyp0N4PG8jgAs
	 j5pfkZlhQd8aS5jfi6SallyyCS4hn4jLjaYGzFlUH8bIpfakXoMH6438amWaEaT0NU
	 VhrNAZESC5tq08n2Dbwwet22AHL0493zN6r/4Hc2TPWOangQhwLGsTSCzhT2S76cQR
	 Uy82AZftYbYcqm44QIGc/aRpIj02X+Orl9fOA8Lso0UqYiI6HCSbhvqVRUkTswWcKV
	 BqoOU16MqLnloKM7jhi+UQUpeqd5t0oMSNp8qkk0dAyT5RopGtsclYKtC8P0aftjhO
	 LW/TUmTWvG4DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9100DC87FDA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175430159358.32232.10703615720848402280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51cbaeced6e71b708d4ebc7e4e020f3dcfc625473d0ad1ba73da565237bce5df
Date: Mon, 04 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754301593
