Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB7D238D42
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756545594; cv=none; b=bo5cp5Ccuh1nirYOm+srVFaijPsqFxZxHnIo6MAxxH9JAEWawI3dQ6lPYLMy70VSrA+iaqJ3Mhk3ltyU02yPWt+xKTa8ot2W4U4VUop67LxqZ/epntKRxAKRud/KXtI82FpfM9oJdXUkyJ4Gd1yt3n8QfA3u7J+Wh9tIvmHuO4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756545594; c=relaxed/simple;
	bh=WUSAnlhgq8gvNQ3AGCn92/oT/rw2ZH8k6nOS9bdPAQE=;
	h=To:Subject:From:Message-Id:Date; b=Pn4LP7x1fwDbTnTz31+vLMEyfkzd1niibqss/vjL6QUKQOrFrLk+Tzb/HEgc8emEOXv0F0xtXYcCGpXPluCtzVN+Q8CjhmzPuc2PyAkuMl1QZcXDPwHEnptqTDSyU2jnc6fvGMA5LiyFRnY1ZDse7jNqqDjXtU3UVfzlZGc2EOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3tYOWpP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3tYOWpP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE10C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756545593;
	bh=WUSAnlhgq8gvNQ3AGCn92/oT/rw2ZH8k6nOS9bdPAQE=;
	h=To:Subject:From:Date:From;
	b=t3tYOWpPy5TFcXYBaYVNrjO9UkfwdWy/JApVpBmvXgHwM3GeSrA+oGaAYr59n5OM7
	 I6O74HAnOgpMQ1sXHlZFR1U8JeNcTPofcJUZHf5SYCo2Xttxy76GUqmnfJHc+vctcw
	 VEvYUMk/txHzxpQHliz/PQ0ezhQU1WkxMqW0DsuTxcagtosW06lGbuuHYkAOLf3oce
	 eOYWDmrtqBNmlnc6qeCHxGRR5oiJI3XWI+abMuyd8wLCed6rEzeqnj7OlGyOE8hK7B
	 PBh+LxRD7JoqlB4ow6iHwZAliq1kdNXzwRsgBp2nFW7Vtu60wKP4SSMH7PnVCp3L9G
	 TGKSWn0FIgRaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902EECA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175654559358.2833.6640277587089297659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ebce394359381ebd27917d43f81bdafd898f7efe9d80a815d7a9faa667cb7b
Date: Sat, 30 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756545593
