Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6520026CE05
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786182634; cv=none; b=iM1sMEW6HlY3NVXb75omxS/jMOb+9cSjiZa1HWg3yalhVencKV51kOl+j7N3Sl1Z9Hip6xj6qpMW+IgtdZ8IOGCK4BpeIW4OtVNHWq/ZfERZ15mNarVMXvzmv49AyEke5H77l9DOykpkMk8rAOYccr8DWGs9ovCraUJ1qeq3phw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786182634; c=relaxed/simple;
	bh=PSHU6xkQyg3G5FlrNuL/8fiWhZsSW9ECOENqp/HJe+Y=;
	h=To:Subject:From:Message-Id:Date; b=W8NZDzr0W3zLgUhYTKirJFWbxDLR7TVOUPpg/j4uWv2toEuOKJgevfZuXAHtR1QY5mmHscio/UfAajSuWq2IG3A6Cm3N9nhPEamncsnHAYk5PPUGi8b8Jy2+MtVtamWrVa2ARPfx6Iwk1nHYrfktJI06THXc+u55kdqFTQcDRJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/gW0Y33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/gW0Y33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D521EC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786182633;
	bh=PSHU6xkQyg3G5FlrNuL/8fiWhZsSW9ECOENqp/HJe+Y=;
	h=To:Subject:From:Date:From;
	b=e/gW0Y33x31rkFyxlrfHt4Td9pB5jox2RuDafiDTzyuo2GbP+En8pz8+gVAjvMUUe
	 Rn+yYzlYwlB1Uthneceqbf1+Wb1oxVgDG6oxQhbZQ6wfT1zkLBsfOLLa5GDoINoH92
	 PRkrx//HsZgZiFdx+azap2w4DjRdu5vpvs7W4KbDi9C+7d6oGIZeNSSG/jB1X7vUTg
	 njxqV3iDcyFZoed9O4RTlO3M1YVx2czHWyOZXj+rA08b6ebrJNFoShjdcpOLKWiyD1
	 VideKSMlEFEcG/HEaM/z7ngyiUn9wdM5jT/gelrXsXRmw7Y+elm6nEgMlEljv/AiUh
	 QQEgoGbYvbS1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E50C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178618263369.31368.14618513704317664478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e1fa38fa1f8e7c65800c84f7b40ba114acede9eb993caf1cde14908561fa77a
Date: Sat, 08 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786182633
