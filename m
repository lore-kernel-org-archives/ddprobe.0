Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8AB2036ED
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750532394; cv=none; b=lSBubijalQqVAJAV7rHnwoMFL1jOoGb+Uzzg1vPYeMjCwroMNaP002/LQ2+6qRjnpWIZXwohAUZzOY+KWk23vjp2ikvZCFrpFy31zGhgcpgzysEpMx45S1AHv0VPfWyw4oepCUlIsbIn697vv+EEQAlANBGnxj0XhXoGqigknAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750532394; c=relaxed/simple;
	bh=hdobWOhsACC/YTo77cnnKfeEWgq8yXK35J5nkcFUNis=;
	h=To:Subject:From:Message-Id:Date; b=hw7FVtkpZcU5YdHnx/8UPoCu0NlF0pT7u2M97XENJ06VwaVO8dZCei1h3YoVblodJ7AEdSYXLshBQ9i3ooumsFcaredfLceYUhDg5P2kjh2EHq5h3Y/96F/S0t6XC0gB9SSBiTmCo/VtiTtytbf/e5yl13WayWF21qRpTM3H+dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JdvZeKpj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JdvZeKpj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE452C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750532393;
	bh=hdobWOhsACC/YTo77cnnKfeEWgq8yXK35J5nkcFUNis=;
	h=To:Subject:From:Date:From;
	b=JdvZeKpjWSNX0LO7I2Po8RA6osemupYrAZwrvm5H+cLqKQtFRAwg/4Y1kqGtDvBiw
	 2rbh8Er2lZMAaFZ7Kn1w1M6M6ans7RjT1G9yrYnksZ3DB9jHsOvfbEDwNwmJiaJVBP
	 55zcsOimJ1bUKk1gCjhwmHfXI5kWlMRf8QiYC1scuRVn8f4tVAwqVmw1NzV9SvW0IO
	 tT5rdVu2eJ8vrxl72ljYiyDl4uwf0dnxaufO1nBfYYy3XTqoxYuOuq4WwjwWodssJC
	 zZ06C9NwO9rlfeH8K/VFZycxEME7j06ncOOMXFOnIGGAR/CjezJPaCQGgl4c/Py//Q
	 7mC4Gkhg7pl0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91991C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175053239357.5753.10274839618640451445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83802cc8ea68cb056bb841cc479f6d9ae058f87d81ba817bf2541514f508dea2
Date: Sat, 21 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750532393
