Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB141849
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722572754; cv=none; b=ioBbudRsZ+/F85/HN3ocFo10t2IQ/4nozqVcF8k/VI48ONj/AC13TaEtBULKt0pwRPenkTf3k0tRRVQMc+G4iDKPKjzFrkRMMJfPdtO3Pyk9e567XLkSuhNUR3YhjktiyRPB7qSgCWmdRgIWVbs1ux42IVq8gfK26cuUldM/v1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722572754; c=relaxed/simple;
	bh=RAnwct+tSsuHyrRxP1XFcuPhoJ2Esq7g0MOCOPwfYgE=;
	h=To:Subject:From:Message-Id:Date; b=KognLDKDRANRued+HFjUhHZ9V8Hz5EYifBv/IDzheq9kUsJhUF3+tO3+c+3zNrdP59QlwGnNwY3oc+Tuvyfn3zUKyPenH0XgUwMRiZTvS0zZpnw2r5BCFVnqFXlb+cBex7RHc4kbuRz+O1H11oRqGnwD5hW1xfRNmg+b7TKrBbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bM6/ILbi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bM6/ILbi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE10C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722572753;
	bh=RAnwct+tSsuHyrRxP1XFcuPhoJ2Esq7g0MOCOPwfYgE=;
	h=To:Subject:From:Date:From;
	b=bM6/ILbiXcpm5nasT31Cu8crqJu0BW76bbxyj4KLQ7vBI7ifoZsf0rDqVP/x/s9Ml
	 s71yE76C9LkF0hq+ScebyhAFZU93P2CMtQaOxSkcvN8kid1Na5Bb2D28q232VhPSY8
	 UHbHglSbMuTt3uxz7hAs/F6YF6MQZO3reuqDgEbGgUrjnkYUBLCggtDBgQGeYf30MW
	 3R40UkRAeAq/nZrAkgtKrTDP3AWrXvhghLl86UMc/6RKR5TAHwj8EhGcj9ZQhcAQJ0
	 mZKHzDcgiihuaJGf9B9TfVTU3FnfhA+0IsrhyJN/oCZxidUlMQQuKY/URPkVt5Xxx9
	 CURaNP8mYbBpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C372C52D71
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172257275361.25034.9553862712595156715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63dfb741de662c88d1cc10726a5d5b5ca3946ec84eb29ea80b6009853db5c938
Date: Fri, 02 Aug 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722572753
