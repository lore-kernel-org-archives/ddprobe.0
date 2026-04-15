Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17861280335
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776259054; cv=none; b=sPvVDgullxVvRDRwGI3E1BtB2anxSvr+AgCHnSKWviBysKIAvx9sCeCQUeGFLnRWSP/NLi818wJ3nBS/HXf/moe5Ys/9qigBq4L/ULlE1PLtHHpDrlTJgoGCAXwfItnKcghk6yg5a+OoXqDm+RFEjeZS9bCNIK8esVm91dwAL/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776259054; c=relaxed/simple;
	bh=bgIu+7PDMomSouhrqAEb67sWxzziz6/wQKdMIshHp2I=;
	h=To:Subject:From:Message-Id:Date; b=TR6zq8uPPCC8ZcS2YEULPlYAtgMxA9sDV6PSJgwXi+fL7QgkrjyCzaJCKfeWTkXnE3ofa+uJx8Et859SVIwA+tKlzrWV44YhhmzA0jU8NojQRC9nSZ0ZPumY9fUY0/nEKzTJF7PFmkNJRGD5eQVO/3JY3MGrkaRpO6ikc7PK8u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QdSAV8QY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QdSAV8QY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5BAC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776259053;
	bh=bgIu+7PDMomSouhrqAEb67sWxzziz6/wQKdMIshHp2I=;
	h=To:Subject:From:Date:From;
	b=QdSAV8QYYu7eAK2FCKylKzttW/Rydckk3IWJ3lWsdd6nM3DaG7aNXvbRdtlqgLHAv
	 TY4ORba+gSg8ZdxfynypHg/jdipvijpjinmIMEU2q4gGQuZQXNE93AU/E110g6ZIzr
	 uTcM2m0ob2ZS1GDLgUTHWnf1muqdB3fbmOynlMUiTr8IJaMjhjFNOpWS6/cvf9vULe
	 0h1vk5n1qVpp9E/KHa6J4QlEJ9bSfaSKcVt17Ip0sqhAaRCWbbyaUCCCjB+YoLzfom
	 TWoTZsuJGvwkXEhnAGRor7pxn3xQ8slew3qkLNiNPpXmhz6SX4EUHffTnN2SZAlSbl
	 H6y0AO2CNGTeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EA9F419A6
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177625905368.8711.3056301610829953632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e13e89fb585cf35ba39a0b1c572b71123709a613500fc85f505ea22635a644ea
Date: Wed, 15 Apr 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776259053
