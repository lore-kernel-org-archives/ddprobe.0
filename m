Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308C52FB094
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759140594; cv=none; b=cf5ZA9L7UTV6VxcOy1it3df6OH1XR8p7aAQtTKRA+ROVRn0dVsgZTlZqxNxSD2LPJSTTh7SSEyBh9sH6Ocy9Zp4rCjFN7Ankh+uZgZTcIHYuuMzoHywdg8IOJjskcgGoyoY1ZtKV4cr+MR4zGMJC48hzT2Fagnnf2L7V6jXJbMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759140594; c=relaxed/simple;
	bh=LIhzNGo7wZ2kBpBUBaIAwBmxHUf5w0MX1JeiThs75JU=;
	h=To:Subject:From:Message-Id:Date; b=CiG2amt5bDw0jzNVtlepqU6MMTi8XP8WBiWe26dZj4PGd+sY8q0Uq7IYWnkPHIkSsarIylsz9qe8IqPFAV9lylsXuFPJfI/68GmnxAYvc4W1g2b/GT1lxOS3pX4zIg7cWvIFq1qThzcx1EASeiVWZErjoyK1LSiKOIKJItZ4Xbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvH/SVoW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvH/SVoW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A089CC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759140593;
	bh=LIhzNGo7wZ2kBpBUBaIAwBmxHUf5w0MX1JeiThs75JU=;
	h=To:Subject:From:Date:From;
	b=rvH/SVoWIaAwcG6rsZy4T31Uctd4KrVbfxAVuf4aZEl5UCZp01gAGZxsDiRE7YIUM
	 YYr9ZcTQa/LSSD2UnHXvHxhto7/RF7uxtlTwCV76kcPdun66vsZS4KPHyUI67mgyan
	 vJGxImHEXOm23WAzChZ86EyX4KGM39aBx2S/lJ468bmU2dlD5sgN4gEunDZ+kpHTWL
	 Va/Z5h/sRBpThWirBODGrXtSk+dbcCOzO8fXBnHkWTPFrc/LW2HIhfQhSw2kXQlD5z
	 wA9qIJOPuNgrrEDrPthvB81AtO6T2EnJFmOupVFzWQX9iwWrfl40g4cwbnK4IeIJRT
	 LS17XmYi+UKww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908B3CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175914059358.11158.6711397213039160014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89372320e0c19e4ba09ccbcf4f4a4a58bdf07c954a86119f663b7c70bd92c876
Date: Mon, 29 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759140593
