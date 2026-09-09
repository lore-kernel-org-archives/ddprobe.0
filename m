Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC6057981B
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788970234; cv=none; b=cO0jokoZWXCEw6t7JGuiRwhv76H5GBYcla2TqrqjKAQCluxLx3K212R/D8jKsPfILkoEBY79O2TFNgyOo2ZuzANoxr9F8RS1y8MnLKAvmkXq9f8I88rbqwEhZVfdYa2njSfDHIx3B2WO9gAG1CZOApB7mFqdZt8QHLgfcIQ5tO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788970234; c=relaxed/simple;
	bh=E4JHrSavGdUg1/Zjtu7cAONB2rdAvSgK6CGTvdXZH+c=;
	h=To:Subject:From:Message-Id:Date; b=VVEA7ZQQkci48WNoYD29i55h5VLXYAPSHl09J8+gGcVg8Gcefs3XOMN1Jp1JrSngyr84FnIqH0sjnZaEDGiDlxSr07pU3nGOp0dxBZETcmoU5GX2nu0lOmu3wi8/uKFnY87vW2NoPrFZRsY+eb0rFt7aCPzqll7E+kTULR8NTsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=soX/oKWF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soX/oKWF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E34A6C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788970233;
	bh=E4JHrSavGdUg1/Zjtu7cAONB2rdAvSgK6CGTvdXZH+c=;
	h=To:Subject:From:Date:From;
	b=soX/oKWFzN5sb9S58+6lGyDkUUOGqzn22WHbzkJ/K0P1FJTYZizQ4rV2VF4/NpL+U
	 1gtHlE2O9Dj5E1wALNO8k3imZRrAuExEcbrT0JBC8dh8Xm/v2sPVEcqO0vGQa6zLSj
	 BWCMTSKaq7KeaZaK4HWjt3eFvzU98uTcs/V59ZCOqk62odySve/0cgbdUmywuTvNGM
	 Q+tnqukTqzPE7PpA8Clrhnwapd4dESYFGnU9eaNVI+BN7SEHRSA7KvOwd3yne7feHc
	 6Ac2ma1RaYYkFnwyE1x0eeosU0N18MafM47lRadgBXOIhQ8M595xZ07dQ0wao84pOk
	 ktztzuwUqF1zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B90E2C79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178897023372.7397.12829661113188150068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 115ee1199b7c350531f895920b9772dfec935bb54e403d207e900f8239b4eccb
Date: Wed, 09 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788970233
