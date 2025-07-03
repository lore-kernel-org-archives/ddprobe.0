Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2005A1B95B
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751537395; cv=none; b=UQIw3C/4MQYhGP9oGsLEXXKt++mqKZMR09mLBwis0TYecS7nODYdsX1LMucyB8dTTpOIo0eYwAbd+2wExnhEUZs30YUNj5xxxo2ny0rDaJpHY5v8/ONwK82WfrqtGetyLB8ivlmCEQTIgg4YCQDwxph/vtUsGlfe3bfa0D7hu04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751537395; c=relaxed/simple;
	bh=An1UH+ukmGpI7m6TrI9kHmt1XvfzMQPYOl+xuu/7d8k=;
	h=To:Subject:From:Message-Id:Date; b=qAQBj/Y/O5RMeZ9jXpgawnP9ANHSQ+jcv9ito3sxfUz3Mz0HUH+Vl6U04kJ3TdJZRgRtU17jIfA81G/dWXvuybLiCm8JRKqDeqybNJ2c/RcsGBEH6gu0Uu8lkkjLRzplA8ulgz1hx67GbXmoikwAGQmQ/YjBMa0fK0EKG/b1GkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ao0Xbo5a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ao0Xbo5a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24B4C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751537393;
	bh=An1UH+ukmGpI7m6TrI9kHmt1XvfzMQPYOl+xuu/7d8k=;
	h=To:Subject:From:Date:From;
	b=Ao0Xbo5aMegc5R+TlBziKssK4NWOktp3oq71ubcNwVqLZaKeus1X5oUTICnf7S9Zx
	 jjtKb4FwXReyT/HvsTHFH0T6ET/J7etSQbRlwYwc+2LhvYV4os0pghUD7aq9J3oncL
	 2lmc0UCb1dcdjz0WfJp7w3o8dpCLTAEtMO8sdcU/sH73ymimRSkqBesJCMxF/NleKT
	 LxS26iQT4q5ybZMXvYyD4JHgiUSSgjAzwJoD+0YIufq2Seia6jENhAATNjIN0VbhuE
	 F/qtEwg9x1qrnbM5pdWlATLdNmw7Mj9+WUFM57UdqxYlK4YcX1IXzmLUIaEBTb3It6
	 qYl/ZDEq2huYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9176BC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175153739357.22846.16605284538683487353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b36b2cf5a62f90ac4db3468124fe24b946ddfc10ab6ccb9bbbc6b449e8b4e9
Date: Thu, 03 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751537393
