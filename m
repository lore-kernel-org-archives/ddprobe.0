Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D661361
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735317954; cv=none; b=S4686LFrtFkBKD/WiPkcANIqsYSQ3JHBylevO3ERmYJ71jOD8UuU0qwB/XzDOE44txIEC8BkWHigwI8R8L0dUE7TCszXBC/2sr8VgbnP60sp1pwsEf3yfhYJsn0aekDTxwhQg89Xe9/5+olnh5HrCr9FDwqeyrVrnXgPTc/VKPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735317954; c=relaxed/simple;
	bh=ug+33DeyUiwF9roQbEiWxCKvR37SfEt2NULTq3imYYw=;
	h=To:Subject:From:Message-Id:Date; b=Un/X3QRl0d7Am20kCUvqbza2oXV2EfXamnE9GcMBe1Abtobj4wPfniuKgx6vhgF17E2lezWaNB/074PZqFAzf0vqGeyJCvXzkfExE0RKtn7lvm0VU09QysYS8sUD4OJgsYYKA1mCoYuVsQyIlQTAamCUNgwh0quVObCjtAgcGbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrw4ksly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrw4ksly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE522C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735317953;
	bh=ug+33DeyUiwF9roQbEiWxCKvR37SfEt2NULTq3imYYw=;
	h=To:Subject:From:Date:From;
	b=rrw4kslykXyDvAKAL/xoX2TnjK1dxGvDVLF++I03PJRskEHIeJZcQKieI2DvZmxMh
	 APk7Xsb1o6SiW95WNBngE3JeXqtjNRBt8WDbyNurfSIRIsroT3ZaXuYfSQ2z1rUum0
	 3/hqE+Lz71ru7IW5GRIoexkHZdaJEIgruwen3Ms29hTEsHlMvhyldQr47h57+9XgpA
	 f+KSKeKioKK0CJGkPrb7YgCLEWK9rTlZhC9LonMR97fTl+KX3DEigFay3ibvAsloF4
	 In8W/M2Zh9Tqacrp7xt++uVtuP34LUR1Fv9pQ7JWdq6P0JRYOhK911mt9NYqkWs+Ga
	 vJPHcwl766Wmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9441AE7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173531795358.20218.7759286110248882941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b12bb6177441ce6089171041382b781fa3993051bdb070e78165e66c548dcb8b
Date: Fri, 27 Dec 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735317953
