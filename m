Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4160FBE47
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707113897; cv=none; b=IY0CSVHUxhwE1jeFkrCW/L41PrnJRktiNYlBF74GgXlq+ZIK4utmGS42BbkIGJ5VruLwRmMXGypZtBVcMSAq4KXKYkSqrsxswCwQBHladTIZBqIZ0t3Naw3krBrNufdQ1XeqB+sZAM9LHrk3ATtXCdr6zRETaF2hOixlmQPWN2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707113897; c=relaxed/simple;
	bh=eeqFC32wgv4cgcprj/cMDEU9zvLpiWxHFg6KI2wFjx0=;
	h=To:Subject:From:Message-Id:Date; b=pm4lxpZE0hW/GNd8wPVjHsCdlAeURcL6R1XoDS2LGB5P1NRTaUuqdmnlqmc3NCW8EpP969TGD/D1I0Ua7eQNr9xNsGqSoZyE9SzHNQWZ12xMSZLH5iMvRLzVFQzpUr2TLyuUjWD1TaBik2f2+pn+tzKzq+saxkPRdAbyWC8KI6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxfjBCrz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxfjBCrz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A825C433C7
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707113896;
	bh=eeqFC32wgv4cgcprj/cMDEU9zvLpiWxHFg6KI2wFjx0=;
	h=To:Subject:From:Date:From;
	b=FxfjBCrzXuW2IuX+JLu4SNNXRXfzczW+DPTG3qKVGf/hKrZFGjEympVIIgZ9BhW9p
	 AwjlzNoHTJeiyZVkQyZK6n3lgUs7AB74680bakWUH1rXvxtWmabwb+x/LSX3bZS/SE
	 rfg+BNBwpuGthQZD/gOoE+f7wLt4AUtE1XXtYTmycncVJOkDqYdV7M2+OdCxKEuORf
	 hqx4rfCeoA+OS8t+rK+4eCDyk66bGQMnpDiyrtV35FJrOYICgWQOTlnEgTnO3gxb3y
	 SbR0rBv+K7l99kCndUUJwUtldhkCGfGhL8iyRn06MCvA4leYCqSBJQTcGtu81JigEZ
	 3GBJwgHJEXfPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D0DDC48297
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170711389643.24758.13768863602575905962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8d62676eb10d75b222d8b2637183c9f4c44a2ee9b87da002ee1c530458f0414
Date: Mon, 05 Feb 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707113896
