Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CFBB13DDBE
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 09:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717666043; cv=none; b=iC6F0Q/D0N3y5iY44LYFYMCzxIwPs9APqRBkzMGDud2uPiwCJC3kcouQZO41bEzlHQI6CY8CpoQr4W74p7o7WTybHXatuN4ZJQuoVrjl0H1zFs98YQo9p7a6gAyWzP+hSkzhMe1jnQz2qWOHL2ZmEnJ/e/5Q4LG844d7rYJq3i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717666043; c=relaxed/simple;
	bh=r34R5P8NfTdj+rdJOfSVaaT+JapU5BD7/sgjRlJUtjA=;
	h=To:Subject:From:Message-Id:Date; b=MbtIDtFhW0dneah3qcE6CPvWGTbuvthtc9oxXhrkZVvOAlUU0Cfk8tvMvVyHAHQu/u2u5WExmL7Jl9hHyfASw+Ybedc0XrWrI/6J0kzyZyt9wP6Az7QbvS0bTJ9HrND8jOg0Pt6QQd2JxG5Mf7Gii9p9/b+A6W+q2FYgd1A7qbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4H/8pQs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4H/8pQs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 10D3BC4AF1B
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 09:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717666043;
	bh=r34R5P8NfTdj+rdJOfSVaaT+JapU5BD7/sgjRlJUtjA=;
	h=To:Subject:From:Date:From;
	b=V4H/8pQsMu+X4pJlTuO1QMmJ9xUo/HPQW2Aag9afBh6T22BCAtS4Rt5xcNeEbruZs
	 SxXzoqsuQszdUIRW4YLUYyVhe9gBUv2qpGgEW81LecFcdVoCj8qarfqyxZCnLlunUE
	 oakV/2eucoVprT94CiiXWY9YKUe9e7Cz1v8NjFJ79Bo+oNzhmLX/o1TLa4g5iQlG9a
	 fCewalvMSdlwK5EFxiJOatp2K1R9oDQjJh7ytI7lvRDodOimiJLHR1nVthnM/YswwO
	 DanRx41EzIoHgOamXKeeA+MQN1CNyIUq5TG0xUdzP1UpqSgrpXF2TC9TDKoN2kPsnk
	 zREcKqGprJaYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E991EC27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 09:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171766604293.22598.8789455461556046197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 084330dcc5ad2e43670feb9b6a0f7602ce02525eac3084d305119be94b794c2a
Date: Thu, 06 Jun 2024 09:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717666042
