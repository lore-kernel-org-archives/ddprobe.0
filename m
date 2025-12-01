Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC6127C842
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 07:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764572574; cv=none; b=SQjXyHclJuB/XH6werjJ7/AfLwdvM2TWabfbuxeoEjsaVSavUdBVRk8xsHdqNMHzPh29ap5WY7eDG/zew/ZLLa7WJo17RqSHw2LX6Yyy1sJeKr2aMjSnbhplXMqFvMB4UQnhQOsA6fKOk9DToV3p6Tgx4RkcjDLsspXDObuXpzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764572574; c=relaxed/simple;
	bh=X7vJ8ML1cZoApfU0Hd9d77+dD/qflOGfdaACMg2AKuw=;
	h=To:Subject:From:Message-Id:Date; b=eQCXxInuw45q+aq4bRrgqD8eOh7e5a2kluF7SThCKJNXs34Mdm/2KaecUlbD3rvDyJUiZp5AfNthy0bCoUpEG11rWY8BKonUcX6oI6PH1vfpfHCwa29U+q11/E5rh+hD/t3CSYdrfpbDL08zJm6BXnjmbMGxRjVn0Jee66Bu/RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEnRDVnk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bEnRDVnk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC44C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 07:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764572573;
	bh=X7vJ8ML1cZoApfU0Hd9d77+dD/qflOGfdaACMg2AKuw=;
	h=To:Subject:From:Date:From;
	b=bEnRDVnkpLGebV33v4OJmWSUuEphaqfuV/GdFykr8DUfu/CkIl8xf40rafIpXED2D
	 EMEx5IzEWuQYB1kY7D11MGJbwcDvUPeleS0b7506bziIxGYnCWi9NvXhZz8lM0qk8x
	 OpmC8NBXtzd55YPXalYnA23ZVnMzQaAvyYfAuMzN+nmyEQry0ZhWvBwNw3ZU2Xua45
	 YeiBtHPTu9yjkautCX9cXbuHKV6UO/WtqnvU0mCzRjeLBQBLjf3Y0PXlfZPbYsjoKL
	 91YFevwKR2xpp/kbA3iCRZON36iYZctSEQHORHCfP0miYjYS9L+MTAXD/VMg9+ugtR
	 0C/ry9b7TWspg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987EAD116E2
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 07:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176457257359.13575.7428854134409689075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d70a8079fc9efc7646f1a14e1105d5dc83bcc1a61138a322dcd242d54e2b2f8
Date: Mon, 01 Dec 2025 07:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764572573
