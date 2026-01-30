Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B41221F20
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769786634; cv=none; b=RrPFmCmhS9P6voS2VOuBWqAmcyv86N7c0t5cBV+zr8TP2lwzi4CKnf7Yk39QfBuXTmsflSLix9K/a+6sCbZz0gH6OzUGLDJqDEKzgLMlhDW8jUOrdEiwQxOfv2rsKLf3gCXNfFjcxHD6RBd4s4wEWdLLJFyMUXpf6xH8vo3daG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769786634; c=relaxed/simple;
	bh=62bww3whNGDd6DEH8wZ/cM3gwT/GvpX1Ed6N7l/+ebA=;
	h=To:Subject:From:Message-Id:Date; b=ksB/Ujk5WvkQifSj3l3lIW/sgS0WLdiIPv57/9iAtAvbJCaAbpEEKg89YQISvWrbB2KoCmiMGU6vzduPwrv5AGOji7c8af7zmKEGNxDpSAltIV7bVdSUbQQ2CZIjITXJaZ9gvXh6DIcpQ3aUcK9IfOAwqB1pUeZtXu9+f751LBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgX+R56r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgX+R56r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56EDC116C6
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769786633;
	bh=62bww3whNGDd6DEH8wZ/cM3gwT/GvpX1Ed6N7l/+ebA=;
	h=To:Subject:From:Date:From;
	b=bgX+R56rlDGQxQoZPpU9/oqQfF/46aUkAA2d24HjFg6PcTK2mFWepC0HQ2ud5WeMr
	 EqhR4AdYnhwK2tAdDGAOKT1c8KivPWonh6s7bdw6NJJSpYewJaGkcbU0Qe7FJNw2Bq
	 QEaYEDOh+5QpTqUr/JjDs83sm51mC83zjiiVm6+Lr6TOR3Z09QybHwUjG8CCJmq4vM
	 G5lXjpD82Y3r8SPkJLEIzZalgKRxVh+5oPT/+4NsanQq+M8yznUdo8S8A1tKj9mlYs
	 zqEMQzdtZEagZdEXgn0GW48vIFS3sFaAe/GvgKIy4SDS9sibIz7trTr5UcUy2Jd2cw
	 Il15Los1Rn6vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B97E6BF1F
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176978663360.14661.17972409824799281149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4868e02ff9c8167ba002fceda507d3ae629758b145df35b4c792a13e423b43a2
Date: Fri, 30 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769786633
