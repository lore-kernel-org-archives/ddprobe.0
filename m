Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E35E2566F7
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746191994; cv=none; b=fKksYrGIEeE42rKRsmktKyxuAxpfdQsdGX4TdKBRsHmsc8topy792H0Rrd+VNM5ZpKhLjp6XJlkhmLHK+nKJpjhjpU/+4DSMGveu48Xzl+4MifcYWZZYi06GhmreRT32jf96PpH0UdZbcMp2+ewAjijFGuadJTdIbYBG0hHZakA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746191994; c=relaxed/simple;
	bh=0gnuRNKRLoTPBTtbNjInZ4jkTz+QFysLZq0g0ndTCX4=;
	h=To:Subject:From:Message-Id:Date; b=bSbH9PLpEmIB/YMvhdBAQ0RjTnf/3Gaj9qHFeVyJ67zCP7b/UlRxCsCyfm/ZllI5vaQJ1rNcNRfR4bRuyr6qAY6Od/qpgtFijRnqdFO4wQvUYC+cKHO6ailxz/V7sSPI4qflC7gDLEzHz+KAzDxXhNbGdccEoh/ini6grs6iheA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JS0pAVkd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JS0pAVkd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F292C4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746191993;
	bh=0gnuRNKRLoTPBTtbNjInZ4jkTz+QFysLZq0g0ndTCX4=;
	h=To:Subject:From:Date:From;
	b=JS0pAVkdIE8h5ORtXCrfvmiusga+93gHs5o33O5wVFdIF+c+vymXDf9w5lLgX4n8r
	 /xsXMxn09xo5MAOwQOb1fNEd4zQEC6qdTz5M6wL51h/ZwbtDBN7ZMQriSOyWaOJCCY
	 ZdCA0JdfxNZ84bgF9ZFIKlLWurSjobCTDLtAtLd4uqnn0g5b4Yd+DOTjQrE0U8SIP2
	 sgqTIocTKBraw01zeZDdhSA5/rsUG3uCIPsN09CJXHzdokv+Zau+3ao6UlZOjBWxgv
	 yK/iHJjfLwQfuypLhJU68LAILAtRDlY0I3cI+4PwSXLecPsrL02XyiMs0cn3xagXjZ
	 A6lVt2Ui9K6Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F664C3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174619199357.29528.474467416979098098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f3946fc27f34c0ad07caf3121ae401e29542b53b6572d7944ffcc34e431dbfa
Date: Fri, 02 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746191993
