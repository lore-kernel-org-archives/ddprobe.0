Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EACB146BF
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 00:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764031374; cv=none; b=W84A/Gsvvfmv2QqelzyzN1GlaN+zPz1AbnQ3JjV9cPCL6ir+TLlvs5ap13N6KuPjYny08MfGskgR0smmQO8EZEMlGAClpizX/Gxs8MNnB8svr0TuVjNdpVBXGVgzgCodTv74acoWyqNUrzt5UVMTDxhJaMZPI6BgfjXzFR8+B1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764031374; c=relaxed/simple;
	bh=1ThkI5DtvA6VKYIT2gXs8yRTqg9zmrL+WF0uV+fZVmQ=;
	h=To:Subject:From:Message-Id:Date; b=c9HeFaCJ1tm9I5jPZuO9UDnPb8o46pbDIjf4mzxVdxQjabZfv00fTZ8VZmfv5OmRlXKSVwbimyNsTEfACIFiXosFhwlVtcd+1+xfsrTVhNDPrQJTovmoLLuI16TDCoI6+TPrwtbjOjXhLHbwQPMKMMp5a+fALzpHF+NotoLEHDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXEl4ahl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXEl4ahl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4503C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 00:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764031373;
	bh=1ThkI5DtvA6VKYIT2gXs8yRTqg9zmrL+WF0uV+fZVmQ=;
	h=To:Subject:From:Date:From;
	b=DXEl4ahl/kA5Y1PokRK5Sq9Bq4XjziT8KOtHJ7Z4tbhMZsaFaUHkQeZHqH2UbC0nR
	 am6EQ+VPORhLy3GHoHF/XTVS5dWonu9wmk8J2XDZJLKFp4pL7n92RpLpUehMz9vdT7
	 +u/4KEP2A6DSB99eKaxo/X8BsaL9jSQmg2Zc3ePJ5D1hXT4DhD9thqcRPREOmWAi0x
	 MieRhaoOEG9hJXbA5Ch39ks4nUuWVBPzMcd1j62et7uPB/d9MRe6odYkbnwKlpDh19
	 t0WHEnH/cKhnMjIWXW/vCgGeYJ0CY9XlNhb2t2jdU88yD7UG3Wb0/n/APyzS9DWBsP
	 k4q9DeTWKqR8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED5ECFD36C
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 00:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176403137359.2936.4434222188836448705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95cf3b50c0a970ca4fb4296da42ea76da3ed1224e7072a95617268d5576a7341
Date: Tue, 25 Nov 2025 00:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764031373
