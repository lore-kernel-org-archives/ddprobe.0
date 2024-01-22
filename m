Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA1C4778B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705956497; cv=none; b=g+bbWLRC5fTrpZ52uY2gl6QLXK3fMzdNjj+PTeCtla1fJyuM3JE++EMS3Px9gfGK53SpcoLlacgAeMXo2bTSB9sPtexpObfTDtI5R98hWemrd0IXKt/vBNPPk7DCCoQZDPpwbqoAzY+btrevESrDw3//BmDXOgzKjH77esN+q7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705956497; c=relaxed/simple;
	bh=b/Glfdc0ogz+jTwE5CTef8t3VgfzEDg1Eqo7JN9Jtfg=;
	h=To:Subject:From:Message-Id:Date; b=SHa7WX0sj1VtutGQtrwzrOY7KLZ3949N4BUfQYy4HXEMrAGhfFMOC/IEmPKbLnLsRp4LPru12HhKNTyBMI4R58d/VxWUpK6fskvZH/diIZxhJiLZKvGYCkwM1ni7aCrc+QTBJnZMcyC2Cmxk5hwYlYJVSJx7i+8lmlfzJGCIsmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j9kKD0dx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j9kKD0dx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74D1EC433F1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705956496;
	bh=b/Glfdc0ogz+jTwE5CTef8t3VgfzEDg1Eqo7JN9Jtfg=;
	h=To:Subject:From:Date:From;
	b=j9kKD0dxKZ0968Lstr75re382szERpFhG3Qe3OLfgDJpNkb2Xeq0qttKhoum4+PNG
	 5QHcUstew2yzhE1ZXVbqMk64ABCzodv1zur3eqXFyZ5lqgstSj8kZxZZKTkbhazijK
	 CQAvfQZEmzmbX5BEITx50zd9CdPyVDlIfUybx0jNWD6INEkH11hZ2lYUPpQLWx4VzX
	 EFi3j8bRXxmkJOCvrq7xPqiiMQMLEWY05HYsDuJ/jx0uvDPH8Lmavia12KOBo4RFQ5
	 c3tYg3431k24vCf+0dpwNi3ZiUbs5al6kBw6QeDbQKr7aWw2dq3lbrJ1C9RLdOKp05
	 7vgrQfUl17U/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CB2BC47DD9
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170595649637.19250.2737574902494182307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0edc135ec4ea2598aecb3b60826c0f0b9e8e1c60645cae9b8aca1923e1af606
Date: Mon, 22 Jan 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705956496
