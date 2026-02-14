Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F763EBF38
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771028094; cv=none; b=JzbXXJa4HRjOYDC6plGXfbHWy2kPABIedjSyoG/K73LJu4LMO2WhpgEuaE8p5pVJvVULIZa5FxmqSXwjkd+ONz9Kbal7zFim8r4i6LVVrRJp17FnFSSa7OYxCDzgURIARnVFER0pL7wGmujQ0GON4uWYeT9LiTzRGFIOye2rQGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771028094; c=relaxed/simple;
	bh=r5W5VtabdOT3mguf2wvQXk/nk3OWFbblNmGZJk2Fs+o=;
	h=To:Subject:From:Message-Id:Date; b=aTOWdFNB9Fb2UFkwrTSEK0dXV5sDVBdwj78njONYqtPdwIHqbC6hVGytcOCDuG6UwVzhCPyieJ6x8W7xI+2ExAdqOAb/8YejMrB3AGt+6k4wPMzGcAVJ9S/ZZsWP6UkuzUtQE242KEsHH37QCIqzADacidtwCnSOHzIj6Ryl7Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bc6XeK4e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bc6XeK4e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE5B5C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771028093;
	bh=r5W5VtabdOT3mguf2wvQXk/nk3OWFbblNmGZJk2Fs+o=;
	h=To:Subject:From:Date:From;
	b=Bc6XeK4ezVzJuJruOayoM5peOetbnIq8SrNoojs0CsovBGKxBvNSlN662Bnrbdlah
	 LOSHWsGaw+nU8z6LfOqXg0+3PxtFnGxdtMU24cX1ZJ71fWVveZN1+jeuk+kOvfRrOw
	 c1DbDZR+EsILqcYdn7k1+B4BI9GF2hRa5HpU6LARz0RAkspQDcyQBoFbOA8JMHZvq3
	 dfCJbqlIlNYIWxsj0IgV8pCuIk8SqmG48nvsFMfhGJ9dxYext9rxqHZ012kllmD2bX
	 XXmkqf1eZs5b6PTB2TAP93SrfRTiRhgL/UMhYlT6SLcaOjb6unH5KHs5aeZOX0ayiw
	 4HT2NrM/5rgdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5726EF99E5
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177102809361.3183.3550196104658328097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 417f4dff71c6d798e63d65eb09abf8a2615c34b91a205d031fcf739f00eb99bc
Date: Sat, 14 Feb 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771028093
