Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B8A2E0400
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753439994; cv=none; b=Jc72lMMzWxO1Je/Wjo6wXWWNjflKfZ7Ya8fI0yJ2dXlTIDIaiH5yeQ0tGiWGT+hhR4zvEZzlQArTQC6qaKi9COGAxi0ybgWr+PveEoqP7tF4JuInV0aRxNeWPmI2MErIkb/ziOgt9IPM1rUQ9oVgWLG1kNhz2SepCHTTBbFV/3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753439994; c=relaxed/simple;
	bh=wL9uamnScp+IIekcl0/7HrlNNHsAFh2bEW7IpM/O4L0=;
	h=To:Subject:From:Message-Id:Date; b=KCzDgACzi2LN4OQu8SwDSywlqyXahXcm87oeNQvea5x273imiDJUkoE+EYSgi9O+Au+99/Q9Do2klgysnISzFEOwyoNkJuAVLOEokPYtzFG7gzdM4EGfW7OzP/+ZfmMz39zltoDvLALoBLM+nl9yPLB4WL06q5NFKUHMdYA0iWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stuoqqe2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stuoqqe2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFCDC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753439993;
	bh=wL9uamnScp+IIekcl0/7HrlNNHsAFh2bEW7IpM/O4L0=;
	h=To:Subject:From:Date:From;
	b=stuoqqe2CR3rjKYk4lf/I4w8NJPpeGN3SYr3PYgHqG4z8ZaOFtN8kngVxYMvqzVGd
	 1W+cQprBvzar9+l9Hn1wlhXImu/sycyzQ+e2xG2Zx+PogzZyPtzCeATpMTBx7Po7Xu
	 ykVlVus5sWGuStrRke964iqLcaHwzJ/XjSIDYar+m1gYKifszzSzQXlJhUxGK83a1y
	 Z4Ovn0uWGGFGnjHUKwOvDR+i1tHmeWqpusWv5Y15mN9otxjKvz5g32Zv/+mCr9msej
	 ZbWJAyZGoxdvW6+BOhT2UcWQTadALkiBEnF2tN1ZaYb+4wshfnJdiquvNu+j2qGnCw
	 ezKLFzJOm9T2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9114CC87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175343999357.1764.11372970727938432662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f01a6a6eb8628b211a558246fc11d2f90e3238c1b1755c095596d0643122ecbb
Date: Fri, 25 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753439993
