Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222612EA14D
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757333994; cv=none; b=pwdqOW4g5MYv7Yw08HxaSgajfhHzK1tWnFpIDGHouXDX6vEpGUQrrDOMQ54Vl877PswtaPhHvenDdyalm2gmPbiW8yZWUh2HaXz1IMvH5/hHmzTyJPcNHw9p0nsCsPXrh+ZzyqzCxhmUCA+3Rzg71Lji4VGLyo8+/EGHRq2sw9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757333994; c=relaxed/simple;
	bh=11eGWjMveemFJFPteAMk/RdFba9txM5Uxfxx/BzdoiY=;
	h=To:Subject:From:Message-Id:Date; b=HDCWBRE8sZWXc9SXjb4tHm0F0AaEvxoH7Yb7KFs1Q3RY3gZrmAiKKR/W1Ycwup8OeoadH5THIjDsOg+YkdemSPBaAMHAvEphY7BDSn5hZz91k3CWjTkFpO2THjOkQ70Z4QCMelt7x9OSeoEtlUEsZipQ/A+tuPnzp2fZ/E/jDqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOz3wPXt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOz3wPXt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDEAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757333993;
	bh=11eGWjMveemFJFPteAMk/RdFba9txM5Uxfxx/BzdoiY=;
	h=To:Subject:From:Date:From;
	b=TOz3wPXtOe4I8fhsMhnUBmt5qwqKaRuxfuL/XbqgecYXnT0Xsg/vnKp2AjAmg8+Tm
	 yHr3hf5NPEhxXnSuywouGCpDiLDqONcPacfsCaM72Rn6sdtemywRj+nS7SlK2Ag4Ma
	 eCwyGhXUoOtidNVg4X5kZY3zqkK+mIKJpZFPRerMa8FPe7oVHApsNsEMYF/ZlHsZRw
	 c9NZKnMqyiqk6aMJatrKzK6/FP4dKhg6VMzxxVwjquB5trcYiYzNUOTiwjLnO9Cdhj
	 rLzMAUsg3Ym+GAF+vGHgquKNxrYlatIWqEPNO74/2jvFRKOaGGmHWXT+kcRXR+VNX1
	 ogTJndoNa/rRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC71CAC586
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175733399357.3647.15755057305710390119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44146720d23af9f59440826603b9edcb0c36ae1d8ccb6b1b8586da0b6f2226b1
Date: Mon, 08 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757333993
