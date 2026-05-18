Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C961380FF3
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 06:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779087034; cv=none; b=fcW8CKxUinVielBMKyfvzQwITepBWRYMzILei3qlchnnUoNUOLjE8ac6qC/hytnXhl3jcLcRQIsM/zhyjSIgfJxj9aLoFp3j1ObSQePhUqfJJy7AfC+/f1uSpcX6CcZCD8i36RIvob+PTivHap1wFCH6wXReuZRhAktW76f68/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779087034; c=relaxed/simple;
	bh=iO/C1MyNJagwsTj+CSLSl7+5GdgBGs1Z8Fln+u4GG5Y=;
	h=To:Subject:From:Message-Id:Date; b=XnPxDJSSRHxG5Z0+4iF2NKwiEpOLVqE6Mo1Kc1gEvep/MUwQrwGbYvk6hlFBBJkyyvMRloXFdw2sMTWhFa2MKALcZbH396gIcoECzJbUkkI8T/tSJXo5m24hM9ckUn1Ge0jpQn9PnKtZteEJYFuYmZi7pyNYQPZDHuvKtDVQQho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OcoAPxMO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OcoAPxMO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BECDDC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779087033;
	bh=iO/C1MyNJagwsTj+CSLSl7+5GdgBGs1Z8Fln+u4GG5Y=;
	h=To:Subject:From:Date:From;
	b=OcoAPxMOf+7tEZHjrvAdvVHctfvvzpusvNSdNokabDTk1JONPYr+dtI+Gd2Qk0qrQ
	 4JVMFwhtXc0fDSwdfATLA0LhkQklhrWcjSp/lsNm6GEMUOJT2sYLfhFi4ciljYGFsf
	 pLR+wnTwieGW5ND5OKtL5VAB/FQvFs87PPk88w77xfiY3andqQthN83oQRQOV7WoBO
	 dV9JnchqcfZRfgM6PCogbVTQvoZ3Z4OmkCq7IHsGdIEELkzO7ronAq0une0niKuvl/
	 UCRKZNo1kQV93y+7CH2wS5Q8d66AtQNJUZ4NL7kIpz7G13GolnSFWYyWYYfUlDIMBC
	 t3H2B1BevE1rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB091CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177908703369.25223.9204913114305449453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10d5a8c4a9f924b5843790be6c19e39f01a66f506c33a947632da45fa252eecd
Date: Mon, 18 May 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779087033
