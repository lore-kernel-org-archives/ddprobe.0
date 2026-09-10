Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541662D3A7C
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789024834; cv=none; b=XNJFXtgLneX/Q+7xEF5nf/5XtewUou7R3ncWMCThqQy52EeVRaJjv+XD4irwUfDBAjEvBD6SRwlv6LWOpw4wNzQxJ9RhSb+HwszQsrnszn1fkSbS44cNZCeCvnGTJfcgVAOzDp0xueigDafqmUlFCV9snfobBxTMVEnVA4m+Aow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789024834; c=relaxed/simple;
	bh=Jfm+Wwd4AyO/FpUhjHcUUcRhHr+mRRoJzjmkVQIVaDs=;
	h=To:Subject:From:Message-Id:Date; b=Ij6OAQRg1NDs6im9+sRlm3HIdkAUwpTjn+/2MT7HgPNQSvsauHXdddyb/sfevKxeKIVySuptwX4d/S9mN3c+QK2OpfhkRnMxOpbhhPD3dF9iYIXLfLbNplhG3qx+CG1momN7DnftH4hm8JS/3Y053riTIdlEUp0EdPQX2ppZUpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3txzTuH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3txzTuH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B01C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789024833;
	bh=Jfm+Wwd4AyO/FpUhjHcUUcRhHr+mRRoJzjmkVQIVaDs=;
	h=To:Subject:From:Date:From;
	b=j3txzTuHodevBTDW9Mq0O3uk2eUmjJ0eD0Zl646P4UmAzrC5Tlr5LMh0k56exIkdn
	 R30xM2xluLExxPAok+RfM7actZy4g2enj/b0KA7FzV+mQARzeO+gGaoIzAuwcAcxSt
	 t3JgbmgBwnGKO7wusQw81sd0ON2IAajcBm9OkDA/EzyCesLPvKizUzyic4tA5QEaMN
	 htA4yrIe6xr3gSUdo5acEixg3x7JeCC3s196208EGNCfr0oLTylP+J4yCx1tWHoP26
	 SjXrxpsDBtPlc77Z+QD0EWSokP7xZfak773/gydxi78vUyDzBOTOHHhkzldbhv1vrR
	 O4/qyUdRu2MDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFBAC79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178902483369.14540.5154232564429732044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ec54174cb6b076eddea44d821f0678b0c1eaf256942364f2a5afef807c156d0
Date: Thu, 10 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789024833
