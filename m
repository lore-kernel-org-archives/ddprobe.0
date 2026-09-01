Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4230243E08F
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788290434; cv=none; b=ZisF9agvMwEy/T7V+XOZRl0Gr28g159+XCspTSrLIKtbjR1dsAOhljJHB+HvtMkp6juUafX746K8dgGiUHBSXv2lyLBC2iYkQAJO9I31jCh7Sh5NGbyX30RMo+XNPKXQQQFYCpMgG3Se2l9/0DrkPu225ZUxoZl8hVTlyAUciBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788290434; c=relaxed/simple;
	bh=arrAJ/iGgv8fbrXDdKGdB4kCvkGtl0/iV8nwYoRH6Ek=;
	h=To:Subject:From:Message-Id:Date; b=A7fHhp9agjpImLaPF4KZzmANGHvOCYflcvpYrLbPO2n3feEw4UK1i5aOTlwMFRhhgYpf9mZ0HQ2exNu4Ggi2lMq8BLaDsrq6/g0dLop8vCebWaBdoJR+8gKOVJXJ//9BaF43xP2FPjtjWanXONSHRrdDWaIl9SPtGa/v6zAGnlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmXpj6S9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmXpj6S9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D139CC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788290433;
	bh=arrAJ/iGgv8fbrXDdKGdB4kCvkGtl0/iV8nwYoRH6Ek=;
	h=To:Subject:From:Date:From;
	b=JmXpj6S98QQVKGssJ1wbI2Pcnydj63b6OSbW51PQpq1dpftyqr3wwMJpMAcr94OSe
	 t8J4e2GaeObt6T/JrCuiD9+lJl3QyR1idtiHDYMMBXEb3yX08lb1q5ePW9SJM1ETM+
	 vn3pmAafN6NBW0gmdmRmu8S4ukFrrpnylDNynSujMiR86pSxarAJnu1sJAR6ijXG/F
	 yOBfwK2g9cs5tPRa1UrWoc0nnVuvrnDpYfw7eMvSybbIGvMv5Irf1GjaGpVwH49wXw
	 HwY/46JHiJ6I0hBPd1cbzpj7ukwnfZRRJNGgemKxtkQx81zuxUooxUSzaY4DDf/DIX
	 SwyB5RCRHOP9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB63AC624D0
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178829043369.20509.8309316207642726331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f187b7867cf9b7318ef9417d736447cdc95616d26e49a4a485db019fde6211e
Date: Tue, 01 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788290433
