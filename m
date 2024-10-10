Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB2A1426C
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 13:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728566155; cv=none; b=TYCUZptlcT7WSW9fFjQIwAAfevAg+ZBp57gyk9WcfG9b20XQetGF21YY6x0phq4uWpvJgIbgD8C7P2PYUpQJXVKwRaEOHpMQIEoq9YhTzVAoTvqdx4a+1DAQOBaKDErn5uydgt5L08QcJBC+MYV9fxR8zTu7nf/k4by4DDBmOk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728566155; c=relaxed/simple;
	bh=eiTEYvZ8hRaoMeJQxqKYVthzi9zE/Y84tyT5BOqY4WQ=;
	h=To:Subject:From:Message-Id:Date; b=ZZdI9eNyFHTgY6Gdhtd9m4piSl08jpEyopFeWUpQfwCW+wD32HPHT56RdBv7xPdQ8WCo8EC8PgleURSqendVbSwkNdxY8+0x4qTBliwDYYfha7r1co/GHdNl13O0N34MjTXBWskiSk1odQvNu2ijvE9Lt4ba0QHU9YpEiGRLFT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lug2EWTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lug2EWTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA672C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728566154;
	bh=eiTEYvZ8hRaoMeJQxqKYVthzi9zE/Y84tyT5BOqY4WQ=;
	h=To:Subject:From:Date:From;
	b=Lug2EWTaI2ILhtPMvvBd3d+oA/OV3MCVBL/qUpQRkmPOZJK72FK7ZFFVwE9Rtf2o1
	 a1FBvQ7/bX1e+7wYto8E6k2pB7QE/llpiJBK0iKvUMyIQ90oCumS5Vd7ezk8a3KNij
	 7t0cYivmo7q7cx96qtTOCnaqcTSmVe3nAAXEGb/Jv5E1q6VxYQEmvoCAEp3MvJ4w1B
	 dV3+AgHgHTW3mR9zb9q1bxBgIrnVffGhYou4hY/8xUZn/cx1XSA1jOz0DXYIGJv1eV
	 ejZ68t4RqdnN0HjAKC9a2wsuHDp9KDS0xfIy9uciRh6kYrnNSvAYy6VMlhP2VdpLhO
	 nSYitsQHQ3MWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97092CF11E9
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172856615360.17409.13217522179453312849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47a37fbb41d4dced58bba6c9661e504137b9b779e2d2e13b11afea369a2e1702
Date: Thu, 10 Oct 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728566153
