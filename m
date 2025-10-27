Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB3B212572
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761531594; cv=none; b=C9hLAFRp318Ww3tkuNzztNUQUOnF+ZhfQO5L0ersH7aPifaMAApsl0SkA29pCAmaUn4bFa+yZlP1cjWsxwiJ6vPMlCVnS9unMbvwQkeBCG+ZKVKRaOzJECQJ4hGW5IbLEDmb35AcD2wsp0X/Z1KWcR4EQLaZ+U0VqMwSNJAWv/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761531594; c=relaxed/simple;
	bh=8cWZPJxYPRmga3I5nREYFjXm/zDhW5useohXWoCkFRY=;
	h=To:Subject:From:Message-Id:Date; b=RZQi+UsS+ZgMSq1H3edZy/w7rkzCTYEi3hP6dnoX2NqOqxK25H2LmqzGkbURe+4oeXlG5YkIZtlTzxOeF0x4yXiRXyY7NjPFrBlvHK7xApGo3aZJU79tXA3Lm2njlcVuMVEqXNX/Uy0jyhzohRIuCZCP8mAtshG6dOsifthXOMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqr8FXyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqr8FXyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65CDC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761531593;
	bh=8cWZPJxYPRmga3I5nREYFjXm/zDhW5useohXWoCkFRY=;
	h=To:Subject:From:Date:From;
	b=cqr8FXyK4sV7GTjBlk76oOj8GvUDVbjGLFaQYcUGCeNP6qMYitkzJGQNjKQCdZdYw
	 5hYW7K679oBpNDKyUXKFAzmZ9EmkB9JDXy0fHG38MFdA7DPsSvqzfBwtN07EMX2fJE
	 j4AjjqtyofId6rCqeMwqVR2O1sELg0hH4P3O5poQ3E7l37qrLIEqaJ4guHWFWvuRBg
	 MQbPAjGE7uVQKLOYEO7bzqzHvsxr3G78Zfftxbl1HzcvNO4+PP1WwMLeHfCdpBuEc2
	 Ydltk9QguUXWgkoujjKSOuL07IX/IUdDV9uozT0FbhYjh4XOSHAACePr3dLYNC9PBo
	 BbEFcuy78KpeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912E1CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176153159357.17499.3219421880935815624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83a3c21434d654aa1a31fef1cb3425093c2417bd01cc476be64ae3af4e30670d
Date: Mon, 27 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761531593
