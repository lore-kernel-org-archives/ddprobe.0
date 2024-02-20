Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C6A2E630
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 03:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708399098; cv=none; b=Pf7dp0FIDD5Av0t93AiU6u//XchB3DQAt+Fg+avROoZYgllgp3RduRFkBwaFMWhgSPnWWBf1jMkUXExwcezK5JpXGrRmjHNjBMsWFIdYFFk4lbwfc48svJz8K0sOL5OOuMOvgQA384CMcpQ0XjfX/6+1ieqlQd+HdafwNTwMHoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708399098; c=relaxed/simple;
	bh=MIAddSLXekrODMk9usIKDcSOFHoGAIwWB89hg3Dvo1I=;
	h=To:Subject:From:Message-Id:Date; b=JEBOruPOP+N7ygob0OJghCb24xswb+YXH/67JhXB5a2wGsyB835Jf1r1ZZSNx1flYRwZE63eA+n2zVoN/enHFri2r+06OKJX8885vRsr2vhZOVXeUtrC+LWMjTIoh2ruNYCrr4knLHkUDFrmGevhHy5SVVaFXxviDWwyrvK/btk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TK2C0uRz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TK2C0uRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9086BC433C7
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708399097;
	bh=MIAddSLXekrODMk9usIKDcSOFHoGAIwWB89hg3Dvo1I=;
	h=To:Subject:From:Date:From;
	b=TK2C0uRzT3Jf4ZywTm24CQKR0kRsTzFYUF1aLLmxPZYOhnJ5y2E0rhcdVxaECyLOc
	 Dh3T+BZPuqhfdZobK6vE34QhkdEgeQCk9WJqPn9t1nlHMl41H8fldux3IvryiQnkPV
	 2c5KOzXlSA7wkGQOAL531RAGFi9Ol3dbnEVNGj1AXwPNYRFLWWxZnR6edCOGkGd/Ya
	 lZU+o6655GztLzAL8gGXuciWoEGJD9VYx1HubWGaK4O0o2DUUDxvYLkXjzxafN9Aro
	 eCK7pBS56QWsL0N9nGJLhriEJBWDSk1n1LgHiqkaOL8qnPh7ROTscUICRXdKfh1ktk
	 zTKh5T16mmquQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F62CC48BC4
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170839909643.26236.4561398985733567714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02c5ff539cc198d094780c83e0cb6eb964313d228fa204e9c05f84878e8098a9
Date: Tue, 20 Feb 2024 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708399096
