Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21929288C81
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757020794; cv=none; b=ujyUxZhtuM6jEsg35Ogs2L9zYDM5xquMvEBdhPyQLl89e7SPfud+pZOFbrN0y6W+z73kJv8v+6Z6kbQTSeGCC28GBdS6TNZAUVYECnKlB2dUmoMTf3Wyq+kk+23Idpz+xxs2LruAaTJ3EwsavSJ44cqwhHwd/S9r3fbxCNAvBL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757020794; c=relaxed/simple;
	bh=N+I8HUipEIFyuFHcdz2B9IgEwmUnK6bKuFIXfAwjp60=;
	h=To:Subject:From:Message-Id:Date; b=Ey0mW31CKOQ22vbJTu+QIOQB7NpYvsrP3XLbKO7sijp/ociSjCO1E1zQewE11XsL/F9G5ZE0S1PDfzM7I5lZ7g99/fxUYMvmwTFVduLT9tJrykJ2q/oMa4egVNa2Tb5VZovg5m0VQbyM4zVSwtmabbyeYoq5+VuxfazDlIj5ncU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxe52RbA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxe52RbA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5563C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757020793;
	bh=N+I8HUipEIFyuFHcdz2B9IgEwmUnK6bKuFIXfAwjp60=;
	h=To:Subject:From:Date:From;
	b=lxe52RbAoP+nl9WuHZO7oGW/Rw8pWv+hKEfa3RxBKKKLVg59M+PXLWUTa8K7XNmfN
	 ku5BPzjzyESxDh/JcpXzVRdGs+DupwhhRwgCryimjLI7U2tzC7YIZcyccns/s9MZRB
	 8i3/0ANUmzkLTdl/4bTd1cIUYrzFItjAW0b5X2IuMNOEYR+SFfDLRuJRTDFHteE4m2
	 OGqESWpVnHa0VXrexhgj1/wyXH6ll3xsI94aYWDu1a30LFnYSzzbLtgCylYGT/nZho
	 Oy27R9D7RfAU1y2IgO70P0f1K6/uIxYeoXDjQuRJ3MjtQgfc/6/MIWUXqc2ErU7Gde
	 CKF0+DPIRLKlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94546CA1013
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175702079357.9582.3701991960648887048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9551ce8253ec2f8f0bc33187a03bf0ab80d29aa7fb00e0ca8af3dd0bbd8192ca
Date: Thu, 04 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757020793
