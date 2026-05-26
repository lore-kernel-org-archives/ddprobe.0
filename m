Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D104CA45
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 01:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779757954; cv=none; b=YwtBkVKfF9YEyuWHjjkPo0Z6mM313vviVvzJon+SG4vqSrNucsIQoxmQ/dMLv8Wu7T1Ku4GTvZFOsOL58GKqp3PN+0Dtt9nKPpoB8cYQuQ9xk55uWZWY2duA0MfkdE3UL5YlvlVif+7cEpFTxPCq2JGvCiVX87CW2Ug78jtHjbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779757954; c=relaxed/simple;
	bh=aXc+qw2NowUdwHEQTxpInF2eLpJqIMrfR+XnifD5XWU=;
	h=To:Subject:From:Message-Id:Date; b=L2Mf8achN3aj3p3MjurxqlqQ4b0ljkJSCdUZt6YwNBXHaGGv7hPyjs/FmmDSrIWI84IeziGmBaxsDi1ympnLo6YuK3HWvQCo/B6PGs1dJflB1v35zEgdm1yA800fyqUGCfVWdJo3SJ4nS5vcJiZjiL+C6c+wB+bnlCv6+Fv24Co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hyV/gY+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hyV/gY+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3C6DC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 01:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779757953;
	bh=aXc+qw2NowUdwHEQTxpInF2eLpJqIMrfR+XnifD5XWU=;
	h=To:Subject:From:Date:From;
	b=hyV/gY+bqFoumwz0rNIhNRmi+Rbn0iZhZIc1HElIcSV8YMEvHNLf2pIsnrFWQxn4g
	 9Mk8EtS8SyVQPM2c7EHUHTqcA8Te4S8lWXhJ0LD2UUMYpQ/hW0sSl5uN3RPz6FidL9
	 S/csRsPsZxUYC699faPyaIfWVqrFTerB4ro3yUVrGDuT8W/33a+rqOaqDfRYj4F9d0
	 qpBxU7cHHcipNKE60Mpp0smIh3XL9fV3964h+LOzHGPuwUDTMuKJxtz/7aZTm++faX
	 5emcVePkf1f/RvjXteJFsVLDUnsXhFHk1SU/avBUcAwjAXfvv861zDZEVEfNUrNLrF
	 8bPa8w9kVl98w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDBFCD5BC9
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 01:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177975795369.32078.11580181152791467553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b16e79eedef03c451f786b9f40d32443c03e8a784610ceceb3f7591e76c9cec
Date: Tue, 26 May 2026 01:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779757953
