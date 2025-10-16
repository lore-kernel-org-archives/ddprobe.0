Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454F127A444
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760657994; cv=none; b=dBAB///pePhEKAOLUPHfy3+LnT0+d0r0vfE2uWry5jS/98PWD4DQvLbNpFCD9MrzxNZj7uzfjJ9Ev/iz7d6ZD/FkjVtKEbavtf28TGN2ik3OZ6/me91+I1vYEdqtC0H1icekwq/kzUzXFsHOOHT5UjfthEvCx+Bep2/oyHz90GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760657994; c=relaxed/simple;
	bh=t3FEnLofeB/nKYdhAK8vTM85F4fRQzg625s33v+9+Vw=;
	h=To:Subject:From:Message-Id:Date; b=UUuKFR25gz11v+X2byJMlgxs6HNM1XGjlB3C6R+xYJhPpO/7GIVRww18SIHZaXV/9DDp7rGXbDosIPL1V+/wJOv+hodSe8kY03HkCSGOqBt6gPs9wGa1MVHTU+xSFVaSX0pmRIb78jb5go+8fWB18PD4zIeUACDm1zcX4jvRgo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvHg2zCF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvHg2zCF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A384CC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760657993;
	bh=t3FEnLofeB/nKYdhAK8vTM85F4fRQzg625s33v+9+Vw=;
	h=To:Subject:From:Date:From;
	b=fvHg2zCFsJeso1ZAXZLXcm8Ad+tdxlXwoTyyyxhChjXkBofzEhNHHiHuzYLgJgcQg
	 H/sBq3B9d0cnwy4PFzvr53Gm8hJpV9VuOMajPDVUgFuRAq0/iaDyj4wsP2bqJuwIEv
	 u2EBGT+HaRO5DPs8uJMwcq1eiTbRKMZxCyNww0Ozoag5N1IKEvtZr2CQYI3wg6s76Q
	 jK/ZVLlTOUQyVMNuZuTdkILiNbG3JS3THOKhR5fuoYgrlIxrA5VIonQvWckzalv6dS
	 KxWB0YbjA/F4D8E3jGF64yC/+Iv6jstlkB6f8jqO9IVcY++xtGPVUE+GhuMN2J5mNw
	 2JRbsx5OOxEvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5DCCCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176065799357.25592.4726938622132415873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e30893df11926f7b2be55cd2cc124aaa002a8aaceacecf27400086a2cd40b71
Date: Thu, 16 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760657993
