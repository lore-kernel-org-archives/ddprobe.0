Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B414AE8B1
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791215434; cv=none; b=ah5XlHf9drTFPeaxhQWG4CerE9CZQVXxB/UxvDelh2ES1l9kNxAzy/y5faS5quRbqnJi6Xu7PN5qgeSIM7VYn64tVsrCYzUodQeOqniAKQGNqZ6cBdLldsN9FssmnmHKY7YBjol9kP6zSnAPMlGxYN+UDv79uqVMxtS8ACm2P98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791215434; c=relaxed/simple;
	bh=FC6cVX9yd8Q6CaJmk5mSeO9pa8oeUKm+rc/oKkwZVlU=;
	h=To:Subject:From:Message-Id:Date; b=JmH2dR/NVj7xpxfsuuoceJ0tFvJ/eEkWuxltJ9nunHm6+r8nuLId0qaxqwcR6nRQBKtL8YlKvUO5wXfr6XmiBFvbpmmjC71pbYdVOLuTMMXCX6IWvNgLtSttOhsRym5/ka7Lo2h0WDkvRB+3FAtFodMCMZ8vdB+EO2GykAhiO/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4WeYJLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4WeYJLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBCAC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791215433;
	bh=FC6cVX9yd8Q6CaJmk5mSeO9pa8oeUKm+rc/oKkwZVlU=;
	h=To:Subject:From:Date:From;
	b=m4WeYJLrBIX7ewEkNOuAbBnqk3xkGVjYhongy+Kxb0MxDdQjhRWgyzUN78NojAzx1
	 juoahnfBqfgrv3AZH8zGs0wgSt/tdeZmLN4LKmsS/eQUCuqJdtm3cKV5RddDLJj9Tk
	 Der2L0s4KEYbMkBxNi9pbiXkVZr2ax9C42nc7WQwz2SDcW0ILrXOTCGwSzoeZZitcN
	 7GPT3VZrN/mXgEr11u/u65oPkKnKuArTKo3pxr2Xpv/cS0gg+Xd81QmSpqkamtLqZf
	 OuF6ZXhh6xIOHU70aSvqRttpEv/IpJ2WFT5Q0f2WHOeCO5jBGCBMXQmJeFRCrcELb7
	 CS60FgxB+J3mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7CBCA5FFC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179121543368.7444.5387768655412493815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45191a64796530535e30eb3fad2db4c34349261e1a9fdaf5e0ea3233a4ff4e32
Date: Mon, 05 Oct 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791215433
