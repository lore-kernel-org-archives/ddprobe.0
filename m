Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8AE26ACC
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776746854; cv=none; b=otq7jTYUiU21v2wNTf7l5rDJdStc/nB9HtNNe9n1aBtwXv4+Hsq17rLAZstC0dSMyVDnBbUAr34xNufePXOA466W4meV4qVwrQUgnS+7N6C8iprXaQ4Ky6tI121zIzE1Kj5UwieNjhP/LwM0ruemBHEf0oxnmXR2I/vyvEkvBXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776746854; c=relaxed/simple;
	bh=YL9B3TjsR/3Z7/q1q1afgIcXByWCuaOFHBFxV8n0V9c=;
	h=To:Subject:From:Message-Id:Date; b=lRYHqjW9mUlX5KyrUg7ciABefGgxOHfl6McVlRHNeVYa+ZEO0gVFBilVRUmjLv5SGG+ZQkH+1F5UDnejfUSxNmipOqkFbnmfJf4yHG8GCpzs2oQbHtZ6ns5c4t00R4dr+RBum5svo05JpWPUq0BZiRgLFa4cBC+0bQoMY9q2LPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TmEC/Vas; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TmEC/Vas"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFAFAC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776746853;
	bh=YL9B3TjsR/3Z7/q1q1afgIcXByWCuaOFHBFxV8n0V9c=;
	h=To:Subject:From:Date:From;
	b=TmEC/Vasnvnki35sfgOXvpirHiTCTbQWGWX+MIkuVrkFUwN/Ney8VOE5Np7L2bRX3
	 MsrBsqbeA2yBX0v/KbeC9pm2Rifs90QUWWb2Z8k+Wg3DaHUFu3V9sekrzIXLky/wwS
	 I0h5s6PVBVIhrL8sa4y2thpTDNsEZiLNwjMiuer21z+9sji00wov4nexh5WWHBIzLH
	 Sq8xWxgNUffymDMyH+lYFXzEDTvq+7t2bVc3uivAoGzaAcS9Vw7aAi+5zsuTpFM/NF
	 N1V1wTJf7NoLDi/4i1AM2OUyaBGa6Zm0B+BdRkf5cgJhrwzEm8OtBVkvZjZ7Dd1Fap
	 IyKOsa73B02tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6D1EA71A4
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177674685369.8231.11803742385679300988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06a451cb3abeb6563fc5d338123e5b5a157a8cda867242b3c08003d000b1e9cc
Date: Tue, 21 Apr 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776746853
