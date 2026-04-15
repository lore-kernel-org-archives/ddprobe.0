Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD6337E2E2
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 05:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776232654; cv=none; b=UbGwNqzSVeuLqS2X3EsSOGF/xanMefHb5PV9tRC2OyhvjVALw8pfCQ9B4Y67KhtEtrF92YlHR90KGMRGvJw/24RL550ZBW/L/91pp1vURGWDjtLWJ2RERZimioPpqt8zHZCEzozkf/MCuVbBNTMihayr003UQEtU1N2gp7jCPfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776232654; c=relaxed/simple;
	bh=P98Kkel2ueLeSq0feXknHokeP/8ei6Xbino7rJFl7Kk=;
	h=To:Subject:From:Message-Id:Date; b=iRPP7f2SvVhgjjYbLlz0oc1eT77q/fKyMx0ENzauDN/ja2udUPqn1zQXFIe34up2jBU01nMFjqOf+h7/hG6P0MMK1J5Iu6deNN6vR9HAJz1JG2r5geOe17YsiB3oLqlWoEfU4F75K170FfItQsm8bPRRbwAwEbpx/4HiXkRSSN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqi3a3D8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqi3a3D8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD8B3C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776232653;
	bh=P98Kkel2ueLeSq0feXknHokeP/8ei6Xbino7rJFl7Kk=;
	h=To:Subject:From:Date:From;
	b=fqi3a3D8YJcJw81c6JuSpLSTrsMo7c/FOlLkjNbOUefTtHJ7KNWXjtWtpbKEGijFR
	 VJLoutkcp06YOFv0kZcxolOBjS5N+CSFOJzAGkmBxS6ViEGTb7haPd0i7qZU4LEotq
	 PgocGmmYglOWvIcQvPwpsiJ596m5GJ7d7MJAWudOANcSrxG8vORPUUE2wmeGiBkUsc
	 9pupvZmz8qmg4WRiKjD9uWYraQU6K3xWCnT/qj5Ka6Cx6btYgK2w5MX54cYGlD6cgO
	 1LVS/yNwRll5wRtyNLo/w5AnPKoOvsjHlF/NT5jUPWAYaRJB15XQ8hsItXUU8FHtap
	 lTbgID9jBMxgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8C2FA0C32
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177623265368.16407.16840425999365664615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32cb28650224a2fe209659c44ae02dbd1dc84409385a3311bc419c95bcc92240
Date: Wed, 15 Apr 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776232653
