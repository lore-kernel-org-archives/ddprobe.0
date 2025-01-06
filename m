Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339A278F5A
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736174754; cv=none; b=d0+e/nR+tymMhKwQHyuzerKuMcNAisuT4qCLz8Dxy3DCqIOLgZa4eBMlRyF3vGz/4aJLp5vWavDDQ1EUfvyhzbc/QCfxjWIgwBzS9iyPi4wUrz+kwQ9C1p242Ch/CMp8puO8b+FPHhJflBBV9FI2quy7FBklckigZsPnD6vvrpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736174754; c=relaxed/simple;
	bh=vnIkV9ixvwr7Ei/RiZTM7YS7PxI6k1k0B3yLfpKni+E=;
	h=To:Subject:From:Message-Id:Date; b=SMFDqoNJK6VcjI/NK+7dtHIoQ86VR4RxvUOgJgnHLoZQLD2a+uneXaeCq5J9B69AISkUjKO5qopbldoF6OAlYunUZTlLKhTnVcTS3+9rGaq4RT2B7PHasOdjhKpCgg8fABA6kTzruGJJtJ6aasxwicxRiW882qsfr0S5xfp3Kcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okVlFU2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okVlFU2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC14C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736174753;
	bh=vnIkV9ixvwr7Ei/RiZTM7YS7PxI6k1k0B3yLfpKni+E=;
	h=To:Subject:From:Date:From;
	b=okVlFU2VWl4UNcLfM3zwdl3G/1hT33cNIPWAF5QIcZN2TIAaYWTE9X0FL4waOuZdz
	 KhZk7hxb2WYWYspo5REsW4BJuCRXu0413HqAKdXSawGTDRg+YFiwXoGqsUT+Z17lAv
	 elJaueUeUVZpKqwXo/j7f444W7tLAcF6qq0OcZ+TnFL/eCWfZCwf7kcS8NND9iPuUO
	 hkQfyrUAUFlIathyQjbRZB2jK1nL/xQArcLgqLf1ChcJVbMk3H79h5L5Cim5Xa828N
	 pMACfo6AOQVw9P9iKfgUgNvloxzqD+Tt9TonX6OTG80nbucM5ni2tOGfH/QkEXlhof
	 qZp6TxkfNYmFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C079E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173617475361.30441.8479874424576528327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62ff394bf567dda75614397a5fd55020fe61157bae7314efcaffb96bd7532405
Date: Mon, 06 Jan 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736174753
