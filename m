Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE43309DD8
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 10:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763719914; cv=none; b=Dlj6rPisziNUhbyEsewBbdRa7fDoEFDMg4gBUKH+6+04K6ZvXqMxWtstw/ib95j2u+Ih92PSesjsgYZC/O61m9DADyl1aDbKH+Jr1QA358KxIJrfhJvuygd0HD4EMrfUKWfmXVeRZOKl95fkGJ3T03HaI4wRTCS4D+ynBjIWxb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763719914; c=relaxed/simple;
	bh=AjS2MXHNxesfNhnlSLyaooIgMrjclbScGukeCrTZE5c=;
	h=To:Subject:From:Message-Id:Date; b=QRH8hw4qKlNpsobQgTmF02pkhASrO+CpP4JmXwZS6l06qOjAAw0HKsDx+dB3FVQWjQCq4ngi8J5d12Sx9B0gX0nS9x/RSlFVgASR+hQYnqwLQt2OKmHHdiEt+b3rFVZ2aTUd0bk/WJ9LbU1v55oXZUqr+gvwhOzhkdX/GgCDNew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtzRZyqg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtzRZyqg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6434C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 10:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763719913;
	bh=AjS2MXHNxesfNhnlSLyaooIgMrjclbScGukeCrTZE5c=;
	h=To:Subject:From:Date:From;
	b=YtzRZyqgsTNSgHjvaS8m4L0xEScMy13Ux053t48hMsHZePglY7mcBcOgz+Rm8CusP
	 381sXr1LuL07VLQ5p30M1UHBKRR5+FjRjo1s+PLclXWtA+1G0hhTghzqEEwlKb6Bjj
	 H6R4J2SDn8Ulx08+ECvC+XEQ8S1c6Ic3Fi30CBTzBQgplFrR9N57Y1Dz+mU3N3b2zb
	 stf/dnI4cc7ulPtLdR1u+Qfy3B/lb3GWeJmM9KdCtxWJSJGnaAumKDwWLwN7o0cva5
	 HNnppbQom3tbwujjRSb/HtLp2z9V1ylu7ovdLUmJbKQl2OE9D+BqYKb9k/NcSZmiZf
	 vDcWdrZKuxhjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F5FCFA76B
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 10:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176371991358.24628.3546388383431592460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2de14b8a26e8863fddf1961710358711e70c80ac24d38960e1b9ec0bc2082fc
Date: Fri, 21 Nov 2025 10:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763719913
