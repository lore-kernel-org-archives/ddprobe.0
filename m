Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5103F86EA
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787592034; cv=none; b=qulU5HEv0R1oE01aMmOjttSecO2lUTeP2E4jdwnW3x8pcz344a9FoGWVtbooR4plhreT2OFqAALCA/noDMOUEtrG1XsoHsEMt0PW7AfnldM0dh05JmSkEX75Zpv/yT+cdfceMfwDF5/CtduSCgz0tGyNw2CPg8/LJFtl1zU8gV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787592034; c=relaxed/simple;
	bh=DROsyhhwVU1I0MqMPcjW45O8upeLrfU455XBbnp3o3Q=;
	h=To:Subject:From:Message-Id:Date; b=Hcn9/VEhDaUNU/FLJUcTMGxy6g+Sxs/qgOO/J0aM/xCN8W/UJAT11p3kukqoUlptxtFtSMU9w8QsPRz958v3AAli0IQdGBnClc4qLpN+2cCjRoaPl1c8xf65NL/I7z9v8FaT0RWW76yeT9Q9roQxmdBzJJh2TgfbMjck3rZMG0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDlX5XXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDlX5XXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61D7C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787592033;
	bh=DROsyhhwVU1I0MqMPcjW45O8upeLrfU455XBbnp3o3Q=;
	h=To:Subject:From:Date:From;
	b=uDlX5XXSgn0yQmbNMnoWnn6N9gWIhSD9pCPYYKAObqwKICVhp+7b7xTuX9R+waS6Z
	 X2gUdGeYTbxNSiMnSsUG26ktDdeohaIJXitaounoVclAmQ6PIYcxFv7KimV5x1qE1y
	 GCuzUAQR1U7Av7sqq6m7xqaaGnBH5Z13ynCYMAACEZi2o8tEL7D348dtzZTquQ06H+
	 4PETRZyFPcVlRJU7JsJqhO2aiZiUha9I7svknCuY0BCdS0zQlWDfUosIXYK6hAoAnN
	 nHbK0vR1W2t3iLQP43o9u2u4TnPHOBBwR+8Guo+01lS63WcmHIxCQBEgWqkYUsWPJd
	 I6jQs139qNX4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CE6C5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178759203369.10298.1518778469438418475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b26c1bfb2e84634014aabe151733532d52ac74722c0701ac09494e3e47c491e
Date: Mon, 24 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787592033
