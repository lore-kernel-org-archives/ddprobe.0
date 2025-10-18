Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3496FB67A
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760823594; cv=none; b=itp0PZ0A6LFt9yjLY3zSSOyk8FEb+Pswz+NrpvMK5xZK0f58B7VxSxfcTwRGw9tUVOwuh3YUu3psop6ePImyOYfHmMydM1VG8VshzZqW/SGIn7G4UfVfy9JlAjhO1q4n4/bGxa2vC0RPbarhju2d5QL/ljK2B05fhTzQB8QPhkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760823594; c=relaxed/simple;
	bh=J0cRYnywIWNBDpgIx0dIX2uMWiI05iguAK8ZVvnGlXY=;
	h=To:Subject:From:Message-Id:Date; b=ZSSq3B+NRv8E+BUL8W1svA/o/iJ8LJueLby99GWu+3NRNKSUsO48gdLZZlKWGB9nbD88shsXo4VuEU6D7/lmVVA7RQZGNLkXxcthtR3nrkxTFJo03ye6gqP7DsREgoEyla+R/FaoY53j2sphEpHJLSW+lqKQfNIEJXCxWcwmq2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZ3hC1CM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZ3hC1CM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F29C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760823593;
	bh=J0cRYnywIWNBDpgIx0dIX2uMWiI05iguAK8ZVvnGlXY=;
	h=To:Subject:From:Date:From;
	b=jZ3hC1CMNWrKFk687fHVjuWLE7wpUmyoDvLIPOklNOr44BmZmUEfUdQAWryXttMua
	 GbQCwiZya3nW8k1QOVQkCDEeIoC35oE5yMkxdaRzNk4FpWIyEqYinKk30kOE9+5xnD
	 WkI0WK+32dkoTdhmLI0GJRcT+cPTJ29ktkesGjx/PhSOEcP7wGbLTUKlYR5ueZY6nn
	 uaRtt+k4uZ9VtLsWbOlgqcD7e7Pg0DtFOCz4ylHHO6kN4w2kAuRjoJNdTPqoMJy3wZ
	 xu6Vp3wGHKPCZoHxLhrr0P4g/r1PxXwTGMaboeLUGW++zYl+JkI06gIXmtdgY9fzW5
	 AIhRfManBKMvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93191CCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176082359358.11076.4124809971443121109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cce6ba71592d35b7480216c8e0c316d16f47f22e249c2b1639be07277fb14ed0
Date: Sat, 18 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760823593
