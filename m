Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535E65A4D1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 23:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714777943; cv=none; b=X9lbgpSqgcIuL8UOSwBRC1iLqS0R0pbpdy88qOb619tabzrK83tDV08YfO1189fmUU0buFldIulqoyAXr2AEM42n8xTgjwznfXOWIhHTtSTCmHei6K/Ppd6tYgIX7R2Qf80uKrQdefAEyxu7NiIIcFPVpmWTqUuRrgCy4+WOx6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714777943; c=relaxed/simple;
	bh=b38LB1rMnyGavpojXUIKc0BCSh15pgiHh1KR88Y20R8=;
	h=To:Subject:From:Message-Id:Date; b=RfuiAyVc0Rq/gSb3s+ZjTlZ62r2wM8RzDZn3bHXvaiaDuNNhnl7I4KAJ9+ygEoG/rp1SNBFasd7Zw8IYadV/EiJCEbQhG1Gq6F38ViRRJ5sax4ICfgkhVGeK5gCQRFWmQ4dlUmngmm31/6GEaMEyOQKJSDVYA4kZzLdCC2mFM9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxQsiChj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxQsiChj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3699C4AF14
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 23:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714777942;
	bh=b38LB1rMnyGavpojXUIKc0BCSh15pgiHh1KR88Y20R8=;
	h=To:Subject:From:Date:From;
	b=pxQsiChjowNV5vOqrq2PmbvdrpgyQysh92KhB3Dcf53nNIzKSFPPKgE/ielzuf3uy
	 KMxKMhnX/yfLOmjDFZE/U+tprJEzS3hhim7vse6Ic1GkSR35vJ8LgoNQIMDdzF2j49
	 9FNedUGMP+yOZtqsEDO1rF4IvFDJfEMQQmJNZKinRBBqhphr3DSF4jberMavDYH/Gi
	 vnDihneMeKgR7wukshfPCzFuVwwXBBHbcWZleIq9r1c2XBdDCH7KWbox9vsJBkd8hH
	 3P4u5oRZ0n/7aYdlupKHXU0sdbnVMviOpc+ucWHDKLeaW8U7aYw0iGZ+qsLAKzrbAs
	 X9dp5o6x5xrvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE258C10F16
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 23:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171477794276.25425.2397365578076762096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07f46087c505b56cc8c62c292fe12536afe07902422299255f78fe99d4adc730
Date: Fri, 03 May 2024 23:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714777942
