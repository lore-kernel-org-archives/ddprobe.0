Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5148B168A9
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 13:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714485143; cv=none; b=h6+hOI4B3U6EiwRup3lJ8RrxC58xI1W73EBHoB3RkudaK6zxNFKb6+SVb8LwJvMp1k/VWVfk0atq3LeZEOSlLLDj3D8OEviLjPtuzHbTg58euMYpHAl4bhzlu7XS172/JNd7hl7S56KJJZpKALR7DZjGz7aBYZpFZNuz/iHEIo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714485143; c=relaxed/simple;
	bh=KJrXZi+7zEfJfFnNImAnMqP3hGnumVbFxrklIiIjoUw=;
	h=To:Subject:From:Message-Id:Date; b=rOm3jvGqFaN/v/ODMqeK2l55vvWjiukprtShLL+O62dRFnm5qwfHzdervxs7togD9ICMmpO/i3AKhlnQPveneLDr3LY0zgda76rvuMLnpbNGc/RZaREWFd/zdTeMw6g/AJLcShUHXGVMSfgZyewGqfr0ayydUZfBA6CxnlFCyNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/Tp5xYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/Tp5xYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECC7C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 13:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714485142;
	bh=KJrXZi+7zEfJfFnNImAnMqP3hGnumVbFxrklIiIjoUw=;
	h=To:Subject:From:Date:From;
	b=j/Tp5xYxdGaOBxqls7NJJaVso5lIiwi4swrvUAJUkLim4/6fBi2gNrcrdo7kn2e/9
	 qeJVTGaIQDVXTZCd5hQq4LVEDJRl0HxGpV7OYGq47CYUytDg2pg9+PuegqIdImE+vN
	 1qK+FBLEJ/RV2RYYXTTKvJ9FIbrDjTewl85ldP6xJX5BsH7N058UmlM1DSjQ5isYVg
	 d3QXigJPy77QnupFym4Vv+0iXChvnW/x+a5/DZOrjx20A7hs7hixmQmzbY7HIHT2Vs
	 muCsRyuz6wLY0OUYZUwy81FhEt0wAiSG7ctflz71f5Te3d0OwuRArD5EhvDvsXaE3B
	 HkcEu2OaDBI3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD345C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 13:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171448514276.16090.13011028513488210685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a41c73128314c6979e0183727eca0246b43af55a44dda42e6463090322b7bdd2
Date: Tue, 30 Apr 2024 13:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714485142
