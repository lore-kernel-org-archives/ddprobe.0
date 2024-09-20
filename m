Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CD845948
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726814754; cv=none; b=tUce1NjNGIn+Qj+jeC1meqs4GsRJpCcFCtF5Ya6Yq6mvEWUryhIqjQYyNhDWPHhmyt3N/iH0n798mM5lcInIHUAqtkrbGzeHdr3Q0RO6F9kOsVuU7mNxfOKgEEvtDatMGwoZyb+RTmboKGBrfoZ5lxxrm0orQAjIpt4sxSBNons=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726814754; c=relaxed/simple;
	bh=S6tZ0tKNm5CUsWMJQf/XsPbbITYwIL+WxmU5NroFf50=;
	h=To:Subject:From:Message-Id:Date; b=MYQb1GANrzeVh+PnolugW0EZnJNxEvK5xV2thYPW2pYeS8ZGj2Pkik/QOh6M1LzSx8iOgOiQYRcaUtzS6DWOyG0hyu/1ZGDu//ZCU+VHAx71ti+6JFeJturOMozOQkiC1s2S9KWD4Iq4UV/bvGM8iWI4Aev/FBUPn72LqzHCIyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9hZgm5S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9hZgm5S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B147FC4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726814753;
	bh=S6tZ0tKNm5CUsWMJQf/XsPbbITYwIL+WxmU5NroFf50=;
	h=To:Subject:From:Date:From;
	b=t9hZgm5SOUHBWZfKaGqr51zkDMMTi0WnF9CIEMGJ7bXu5S4kiwNF/C4uW/YFwJj6n
	 6eYl3kE/nm4C3IIPogEUSbog4ZlZn/S0KKEASRzXBQNzwDeFOPvSW97fsevaLO2Pmj
	 pMTkCdfFkijDlgsx0R8I1Hg5/4WvHb49O+WJZXsUj1x4icgS+FEjgH8XzvIWJP4GhD
	 6z5CvK1XO0GrshrMz1NH9haBnDfMqMDAxuXhIjooQsCwULxm4FBZfslQ5jGdARWDlB
	 xj89TtGO6DZ0OHJ+d+dK7UjsTbG9yWUmyUOD7jK/m0vJVUYuSGofvyca1Ceh7fft82
	 XU6kXrmebI5+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA57CF58D6
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172681475362.30931.2919159892434862291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3ca03cdea2d179246ce3d0e7d8137ad7234f913f5935cfc1e5ee77bd712ac02
Date: Fri, 20 Sep 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726814753
