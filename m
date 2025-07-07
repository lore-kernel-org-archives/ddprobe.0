Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8E917BA1
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751894994; cv=none; b=cd1FVo2XkwAP05LiFasKu6RSVLM3fmxwiMCsTUBwM4Tpuwim4cYeXNwLkGvM3m+SiYxJ58uhVxD/FOlmQL88vddchjeLgn0XZKPSw5XtPrUAcVYulQ7F1CZAAXpBEnNxFczmHnGw0JshnlV+lMDAA7ixYdeIGi1bRj9vKgeH14g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751894994; c=relaxed/simple;
	bh=eBA3OTf3czE4giDzoV63f4iqM5tw+xom0VFa7JzJsNk=;
	h=To:Subject:From:Message-Id:Date; b=jLOUdFqfDXAaZJrECnUSPJ7QOekpkGIGWM5ypHGKdw6QUICRJgIt7cAogdvuHXvV0n6517+/SFdKSZGmFnhUc9Kh9OT7drZNlAQ1rUAONNJnHWq5/4lojydMRhqIe/Y1/+vr31i3UdNdBd7ci7f7RUzNiW5jUpzdWVbpl9Vfurc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlGfRfdm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlGfRfdm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11A3C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751894993;
	bh=eBA3OTf3czE4giDzoV63f4iqM5tw+xom0VFa7JzJsNk=;
	h=To:Subject:From:Date:From;
	b=XlGfRfdmd6yQ/MHS7P/ruEHdPw5tw2IjLbaCJ1AjFQ7kWhGVeErAxxnIE7eevfvOD
	 PhspdrghhJCCWvROuXYa0jUyfqc7khgy/e2/XZ2QWijxyTGC6CipOU6AkwhADdtI5n
	 QE2xjVDzP9Km/x8/jVtAd3OO/R9O0hT2F5o7HSz5/TcA3Xk8tBGyo4SOgbosfnPjGr
	 r0TkhffG60B3eVy7RCGcs3KvJCkVsx6RhLvKNaclAsTa2Tq1WLhP+zD9TpBhFgLnjl
	 t7LGwo5n1nr9Pi/5wsHx9YjoBD6LfVTAlQ6hokTL3O/g5skhBaYQC1gTw0wmP+gWz+
	 MhvaJyaFOv3Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8C6C83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175189499357.31664.11798283822063431734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b508d1d3752060f167d7ce61ccbaf2eecc63c40e134f9d610181b3ca34ddfbc
Date: Mon, 07 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751894993
