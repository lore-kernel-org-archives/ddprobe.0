Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504893806D8
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792118434; cv=none; b=YqCN6GPGIIvP7xaCey/PNTdRhumtcqbQeiDt4QR9ECA9h3/+7kfO7CILTs/vab2xGwTjemoAgxGY3ZTrPM+q4S2HHVNdN6RKrFPm11dOm2vRhl8hi+XsR6TPisBu/fWXxrxKjajcD9ue5tj3a7D647SCwIbxIx0ovGsAY9lAW+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792118434; c=relaxed/simple;
	bh=3S+vWlSldEJ/PSHiIiddo9OL4ILs36nhkVaUz1G68as=;
	h=To:Subject:From:Message-Id:Date; b=LUKhMQLi77idZYO2N6VauKHxbuEvN+c8gJYXG57ns2/w3LL2ckN+Byk7/VGchQ0tLIfZ+zFTsBqrur6OYHlEPZMO+cMy8hfjR3aDeA13Sh5evNYISnzzDWAJAVYHfSdBuFY8AT5wniRhXMlIpZT9FSV3NrEm63DCI6EggLtV2oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QmWHnjO0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QmWHnjO0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBB6C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792118433;
	bh=3S+vWlSldEJ/PSHiIiddo9OL4ILs36nhkVaUz1G68as=;
	h=To:Subject:From:Date:From;
	b=QmWHnjO0F3BQHI6dJEEvFMpGuG3IPklNnMs/5m4x34tahNzigfB3K99NiCinXBSi1
	 jsEct7Pb6bd57FxuA8zuw/WUJs1Qlao1WaUP8CKi1vJ158nUftIQlaGttrTvUS3Ffc
	 FanTTsUmfZS6TGseuI+We27SuofNoYpo62eeGVwMEPY6rimDKSCOMfQl6+sJuLoFAM
	 VLjOYXyomYXlCMnBxOC+3i2uPggzGXlFmh9Dnj9pJOvFB5Q9OKtkxUAWKpyy+SK6ay
	 3hWalx8C7RtJoWOC8WlZ3OzvymI6e8KVgKry0VxJKhsUokqYul+eLg/FNIKu2ZsW/e
	 6H2+uRp1vqxZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1C0CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179211843369.5363.7227982690434256620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c6afce0a417bffb8fc38bbe5363d6f104620dbbc9bb884d0781fea7a4b549c
Date: Fri, 16 Oct 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792118433
