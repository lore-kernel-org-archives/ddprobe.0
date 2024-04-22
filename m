Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576F54400
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 02:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713751223; cv=none; b=ELA2IzL22yeUKtPffAUMrqBre72aQ9p65ys8eWOYYZdpZ72lJ5Rgbh27v5fG6aT5bODrVpBQblzvMl/8zZioiW82+EnIcLxQwApP2Ck8kl6gtMu2MJ1fVsvvojpKzlN7VcLtz/nHGNlhV8ueH+EOnG5ily5Ql+r4wZZqCYnLlZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713751223; c=relaxed/simple;
	bh=hq/ziqejV1LBco42mQQQpyMFeRysDUdevGhAemYuAHY=;
	h=To:Subject:From:Message-Id:Date; b=IZGzJeGSKlhcS68akptKBWfOb9WXAXe5d4FSAAj6Y9MOu611du0NhbyGGq6e6zxRM6swyuynMAlsWGc06JSdHRF14OgYQamGBDNRn94Hx0YEnrqPvx32N+tPuG+SQgokeGqjjkdW1D7mnM5AO3ClsRze/dN6P1NFsQ2czQWRW8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozjKofES; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozjKofES"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E86C4C113CE
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 02:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713751222;
	bh=hq/ziqejV1LBco42mQQQpyMFeRysDUdevGhAemYuAHY=;
	h=To:Subject:From:Date:From;
	b=ozjKofESNtheWwAbHECA1dzI/zJy7cf7rYCsHqx1/opxp9wZpeAl0/OqeN98EWOWL
	 ON+Omf/1Y6qCn9WfbkaxIVS8Kk+QmtmPO/345RC0spjEorSfJBBjrQNdloYJFZbSRJ
	 s8qlWQphLjDyYBfw7dZxp4QRoMg5XbK5TuWgCu+RQuU8RlFAzxMv/jWhq1CbnV77ox
	 eS7J/um3p9ExOqVO21ASV/OtpVcbBzSjTAqydq4G+9GJqO5yR4BOCSWbONDRQrCIlV
	 EpitNJ7O1k9facpNFDV62sb4mEuQDw9CRu41a7XtJr694plZXieylKBf0c+4O5A/U9
	 pmaYjDln61Y7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEE77C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 02:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171375122283.22325.932388001533253749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18d5758bf82f52ad0aca0a34097d5473e0d95fdcd814ad3a267d1dc26f52d924
Date: Mon, 22 Apr 2024 02:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713751222
