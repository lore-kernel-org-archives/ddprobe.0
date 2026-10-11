Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2361B3925
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791684634; cv=none; b=hp6K1yiLCd3ZnjISn1tmKF84AvvEwXtFgfc+Xz2OWbo2F9ZJo+7QzPbWhNqTJtIQDMFUrHziTTTX+4uQXHIeBn9TUXD7p+bUKKZMoyu03Fm2awPLBITFy0qVjpQpXha0KnatwRrkei9gCopiv69DsawbVD13iOmP1yd7WDNe8e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791684634; c=relaxed/simple;
	bh=1kyzwbZVYg7e89XthDgwG3gIyRkXYHvcLmsk6iiSo4g=;
	h=To:Subject:From:Message-Id:Date; b=h6+S1CxEno2FxN0yvLaRTRFunjeQafgFuQfz2lTkCqInMHtYL2pNXeq42w2RtG9SwVj6A2u+9tZUaw4PsmyqYkMBzqUaqe5OuCXhqX/27wXuxrCGIKlRuD26hkVyTWxEHGvwG3310diipxDMvr2cUqv3sJrfRmAci/3xyFNdRtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qqh3DniM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qqh3DniM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4552C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791684633;
	bh=1kyzwbZVYg7e89XthDgwG3gIyRkXYHvcLmsk6iiSo4g=;
	h=To:Subject:From:Date:From;
	b=Qqh3DniMeYeJ+uDi/t3QJ9Ap5lR0IV3RnFom4h745Zkp1Ga3J5kZNm0tyxCuxJVYw
	 eOOh9CwJR8LvVH3Jo1mn3IjKc/D8fOU1KNapyTV5NPBaaOiqC1yeDjUJ92IdvVKn9l
	 m7TtDP3lTmMtJN7Kn4gru2Qt4XYfUi5Hwu37efTujemHYxugQkC2iaOgxW7aP1iBwd
	 REe4OCzt1MAAflQqbaA524i1zG0UOvVinPU8Pe1GiCU174j4xmi7b+Q4EFI40VcnIv
	 /bW1i+7gVXxnkmKDGg+XF1ZqJ4PdSbXhQ/wlNNgqysqW5HHitmIKwoSObgtYA7x45/
	 kga9uASXa+05w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC149CA9EC5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179168463368.11576.2608320805032417200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b5b6dbad00b55a165cfa6a4868c44dec4649a468b9e5113cf845f2c93d70295
Date: Sun, 11 Oct 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791684633
