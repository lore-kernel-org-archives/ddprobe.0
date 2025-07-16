Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B27BFBF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752701994; cv=none; b=KIER/K752f5AF6gJpUk5ikV4wDVVdlz/aWdaHMEbaQHBhGgP6Ts6ChPeWpfOnKGIAal8PBpdYyzCSyMmZ9voMRwSMN8zXzK2Lin9WoL12/jlmSGeTE/phYL0WOMtKqwA2vY93GoAwqjaVw8l58SWsLjew4twroMYDU7JbSybFjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752701994; c=relaxed/simple;
	bh=qafQs1gmYWLNiCvUMvkx/UrEpBI+NZHuhOC/PlJrriA=;
	h=To:Subject:From:Message-Id:Date; b=XHvLDSn+5Me+4bMaZIW+itB4Il74ID44nmBynZ+XThww7RGkf+wL47KTUp9mH7rozySZiHdR2UUTlPXvlUPTtWsLIUipXdloiTgzn8cnoeAlHAS6j98i1LeCEfCc8ryzTwW50LMWh4M1Mh0vKrmX0bvCkkCOD2xIQ7uriIHnrFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejU557SU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejU557SU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CB7C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752701993;
	bh=qafQs1gmYWLNiCvUMvkx/UrEpBI+NZHuhOC/PlJrriA=;
	h=To:Subject:From:Date:From;
	b=ejU557SUKFD8j8JrqOldm2LTEh/a32qdj5CKTjz8jhCg2rfzIWhzBFIBq4+dKMDZM
	 uTY134jBgSkX4xkM7i93lU4+87guEBHxtDnpxgl/pDxDAlqat0CwvCNj7Ez6QYpo5q
	 3hT5lOZvfYo1LiAEKoIxSAsqiwutK/3FnKz0hMBuU5wtqX7wJaAXt745IL0ipxuYEK
	 u1SkwShjXOtfTbhYJfpPdTPTwdPX4gteqJpBXY8cR+YFWhBgEHkZbvFaC4SqrqBdsp
	 dF2W/XIIBf5ceIESNKenTbDy8xa0di6S/KS3G7zX7BymHekqDzKN6T0UfueV2ZcgLO
	 ZfqrOyIXTY4mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A64C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175270199358.30839.10844750582129651160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 422961c16bceab4b6298b7cbd778bd44bf6d5ae28c0256a1ad1de01b165dcd1f
Date: Wed, 16 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752701993
