Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1060A1FC104
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752593394; cv=none; b=l9NsqHacOtOMI9zFMP4cBRoESku6S2tn51wp++tO63nkuNcEvrXZxi8ANtlo066NQyFnm6wtvQJMs73H78B8eUMyJVe1BUqmuQeC2g7GWppD7MNGIv9IAYdf3+e/A26rYtiwidMIHPxdffuIEnsXU4JZS+b+sfQehDTX9zHHRac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752593394; c=relaxed/simple;
	bh=g2a0/3FAswGaNVrmO+OVYnKMwK+7swEsTrrqP+zj63g=;
	h=To:Subject:From:Message-Id:Date; b=o8649b3ofl71fp2XnmyfbhzD9LnLjlFz9y6r1OHqaaDbLtSwyU7K3e/Z+z/fAK9z6sqxmFdzX7UCDhDJV/RR6TKxLAAY/Pem/iRghzg7bP+8OwzwOkj7gHzEcrdj93eTXlBjEg6AzkHkDwIs/QkLJ7v9XXfCx3LP9wLDy2dUjiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRNml89u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRNml89u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E30AC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752593393;
	bh=g2a0/3FAswGaNVrmO+OVYnKMwK+7swEsTrrqP+zj63g=;
	h=To:Subject:From:Date:From;
	b=jRNml89uA5DF1DxFH3uShNNtkfWtOWKw0JSOfc/MzkRY2TlE7gs1t/i5Jp1TppYGz
	 nRSM1icPePnsn1tIWbC7QG6aAtTaX8DbqRaCkAqGNom1xfYfGoVm/TuiH63GPSjvA9
	 H0aUMSSkqjithVf6loxOI3qr3qwOLokJ/PwyuiD3yC9EPuF898tQrHn/X3Ec/CnwkP
	 +DUUOelVEwat7OUUhvgj1jqNkSCb5x22b+fKT50ycZFLTYkxzLDbeVfFjpVMerXBNR
	 FEaV2qp3Nn4ZMRrqREejlCbjbB94sGpaeOkEf8qBjoGyb3zZTU0/HpSdg61vy+sB1q
	 iAsdsu5uqG4Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6F6C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175259339357.30339.18375367212056420471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 961888a79f07bc4cc6fe3388e27ad22d4478fb4ee16acc5f163bb64598440d4a
Date: Tue, 15 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752593393
