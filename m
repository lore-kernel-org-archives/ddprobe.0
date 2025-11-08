Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09CE5221DAD
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762596594; cv=none; b=cXiqZz+rBf7oETD/0ziDKI8/D5JkWh1/C+grfQi1SWUlMA1yZZzBJ2xt/BZ32Ww6ILGGqoEKixWJtTXHxmc4p1hi7thNiYrYANrQ+9Q6dRwMTrSn95g+H/SpMs+QvSB/FJUXi1kyI16ybV94EIeneQmZkg0ZzdroWlbVJ9VDl/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762596594; c=relaxed/simple;
	bh=kDJ8pfLSQgz6wXlddgPwkQujwmTr3QbGSeSzTw4FgnU=;
	h=To:Subject:From:Message-Id:Date; b=cLIMUYtdO9d888O3TUcadTxQcahD/JL1uYz1hvMuZwHTTJ4San0D97+1aRBka9AXWb/MJJkwvPZf4G4XK2haz1CeRvacKdYWooSt8Vf558LlUaQiw6jJ4OVehPx9vjE7zoVkMKpbkdf7eCIYynDwgNY47B4HJG77dVufstlC/2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ni2IGxFG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ni2IGxFG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FCDC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762596593;
	bh=kDJ8pfLSQgz6wXlddgPwkQujwmTr3QbGSeSzTw4FgnU=;
	h=To:Subject:From:Date:From;
	b=ni2IGxFGsVkEJmMNq7KQvXfafZogSEkFhMyyWWyeaeXHZNmZwrprHzp8TEuj/LzxG
	 ivKIup7fS/X/wjzQpWLTf6xEs97OsOVTa/HR7IEN5wy82y6xtaHHi3c971xWqpS3Y5
	 6EQeStzYYS1rC1gaItG5r9i5Ai5AtzTJlxb17a/akuQe5l8jEraOapug6ySWPR162u
	 qy2uZJ7cdlNKzcKCl83zWWsT15LpAiKJwyvhGz0UXy7HiPlKuv5+eHjr+fzPHjrp6J
	 l95j6JiTs2G2t0YCj+QShQo1hjbmz5bQlFeCF8xtzrYqGoMtBSg3S3GE0YIo4Vt9Gu
	 0zLxvd0AXewBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9584ECCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176259659358.16510.5752807354001974087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8901c92fc4c3dd033a705fde3793d045444b7b6bfa309a9ed4f61e992b491820
Date: Sat, 08 Nov 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762596593
