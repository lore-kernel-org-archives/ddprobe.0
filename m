Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46741182D0
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748088594; cv=none; b=g78OI4/vG8tJc/h1lQ5KU1h6qN2exBaDpO1cEmBkCwbLa9MWiFdJm82nUOB94PlBiFYIZYrUsJ2l0m3A8yEE4b7Cy/csJrohqA70HJjlgrYIFU9bOnnmdF0gNoPr8I1TJOKI6bUwx7k2sXSFSUYlXPFn+5WsAAY3XMOJXVFeMPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748088594; c=relaxed/simple;
	bh=2GgWuFbh1h8IIdAVaQQp+klgPJArh1NPqyfZuLfKBAU=;
	h=To:Subject:From:Message-Id:Date; b=YV671bFCWacNeXRGlvqeQfNrKT4uUhnXtz1GPNduC44mQ+Vs2rEQAni9F0WM5cRFZdHQtkd8CdGyFlUIhjjbxDUTai3ipCzlv8OzcAohFUmDWL7QMF52pg36aQ+HauXt8prWHwnVpR/Xj6jESsspCKt9yHpUcZaYcX/3fZM5Dxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxlqM1D1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxlqM1D1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58A2C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748088593;
	bh=2GgWuFbh1h8IIdAVaQQp+klgPJArh1NPqyfZuLfKBAU=;
	h=To:Subject:From:Date:From;
	b=MxlqM1D1j0KXk1bfr+0G2oREyHroVneiv4w9JsB9/9yXtIL5Jv7ioCU3UkBl5sVMf
	 aCv9w41eXxRuy3GzHhycqWbptTyvN5w0gxLYph9c1dEyqC73WmdubCb84AadtuWPtA
	 OA+5kfFetX1byPXZ002XNc8nXQyzBU96rM6ENT+J+RffTSeWfJZwgQYQM7BEA2/CoP
	 slJeNg26Z0VsO9Y7FYiQD6Qe5scwUX/jWqi4TdawADG6BMVoc6k0+MGjquw+Hipevf
	 fPv22YGNGAfoigVwnkDa667FbteUmXXqvvtgxI3mjDwwSsjprpH2mbyhsNd2SJ0zuU
	 rZHvbCiGJlrkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CB4C54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174808859357.29076.10498622256410194310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3b4652c0226b967f237a53eb9c92a1e969d362ae718a099531bfe7f8709a383
Date: Sat, 24 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748088593
