Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAAC1DE3D1
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728372354; cv=none; b=QuHNH1E11ixdto8k/qdtrIv6RhBGSd8t0wJApiq4TWOzDuh0H+rt8rgDoxXhP47Gzi8LwGVhTJMXjj6HnKh0hFqoNOd9teo4EPqJMrVb4dLtVxIWccUK+hrrztbMiTzjX3SkgtnviJ4Fns0yQRANuOrv937faUcK/Gn8BmWuEkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728372354; c=relaxed/simple;
	bh=K+vWfOg1GjhLsoAv5Z+emkFkjFe5oYOZSgYK5bAAH2w=;
	h=To:Subject:From:Message-Id:Date; b=dOD2Ici5bN0uieZ47YoLubbDctnwuWtq/VHzY7q7jHXuGnwZEV678tVpbwri6y0WiSrZpwtLHY/T6JoGFoYbemDRoH4a0NbmqJaFAQ4fqa9Gaeoa0LAP5toz46PQ4MOb637JaO15UJLoGpJWVG0O50Eq81pImQETeUIOq3ePNwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ryZ3PqBM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ryZ3PqBM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6BDC4CECC
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728372353;
	bh=K+vWfOg1GjhLsoAv5Z+emkFkjFe5oYOZSgYK5bAAH2w=;
	h=To:Subject:From:Date:From;
	b=ryZ3PqBMRogTow9gnZHVPvto2tfetD2XlHvfXUVZ2evlA8njbA1ixFIGmhDCAAqLe
	 zopf7h/GqO6gv1CyBSB9ah8GDVxyZuSLMJik2xUHZHZYFqJZjmIC3Ok1LVEHK6xaG9
	 MlvHRh/JJ1T/W2dMSV0h0vmcFLi7LJbVATmDotbiDACmYNuPkREC2Jl1Woe9ktfPZ9
	 tyioDKkE2n0xdOPROak+jAqQ7yL0sT6MCwOW8bSgOI7a/8vRy7LvdMmQPGG+3kU6W6
	 4TJr3UBP2MjvNJZs/2WF2qP7n1hOyDysp9n/yVv15LKZa5M7FGO8rbyLyajYMPPV/S
	 AcnuxgfrbsmwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A30CED274
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172837235361.29710.12142749069992098762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8457274db2e74307a4f01a3ded4d7ca189fb6b2991a8709cf77b8543b60fa670
Date: Tue, 08 Oct 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728372353
