Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C4C8F5B
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745041194; cv=none; b=qulr6qlkABXpvBFbO/arIbGxK9114zLgHxy04QpuyYS3eZwtKIfFVE+HxkdpAPvAenLIcGmNFygUrwRRwkTFuKGyk1pumGvvKdvPDdeuI9aTJcxmYQOY8KtyytlmlNmTAjKDHFSAne1cKWinwtn2nLii2TglQkP9rWJ5pSLGNaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745041194; c=relaxed/simple;
	bh=fKzHUKuDS/zaVoEpKsuJsGIDVvvHfx4zMiqF3pJ4ff8=;
	h=To:Subject:From:Message-Id:Date; b=Bs1ZztoQMRhdNRAymSYTxvj+XefyFI504EDnApY7guW4EDH+dM3lclsoymoxf9KMGShnECNRfK/Roc005PetIzffePbKfEHMXRXzspimm8QnR9NgGljViKG/h2vs6vQ2FNKH01aZ36q1vReTNGfEMF2LhDg2p28lp1Mlmh1H7gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nFqhjpXb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nFqhjpXb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F65C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745041193;
	bh=fKzHUKuDS/zaVoEpKsuJsGIDVvvHfx4zMiqF3pJ4ff8=;
	h=To:Subject:From:Date:From;
	b=nFqhjpXbocCnBJO+2T5jlLhFJiJYUGw8bwFLONawr73oiqW2fpuWn25UA3DsjzwFw
	 Yq0muRfP7DLVjQLaEJ3iBMBzIUEBA3XWcly9J3F6nUGEdekGgB5POFkVOLLGl6+mna
	 VgiLN8Oe7MhlFNxc9CxmnJzIoD2it1/tK0TTuPsZYZr/Sea1OYyUbixPJuNXBKWiMQ
	 25IDECfLx21lY01s/ShtNMBMHY7snkZd+ldgJOJuSxekHDcC4dBAwOU40UQ1AI8YdY
	 ddPj7Tq8HN+WMhHZ16G7W8jW8yqpQsoXUxKcGU6IfVf5fKbehfuVgI9jwF5nv78QiE
	 yO3+idi8tjV+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2350C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174504119365.1146.8166972757454169213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 871688b580dac57b91beaabc40ff4f01d0a72dcbaa6d59d08f54583d0943db5f
Date: Sat, 19 Apr 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745041193
