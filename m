Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC041547D8
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730443554; cv=none; b=DLNtmnvVGcwCJeLCia5zXhMSq4Wmp5pwI/+RLp7VeATBj0PctmrVIE0hLrl3CWTbFzXYW2vQbuyXybK3XZph9O9u3mLa9dECNePZDFinhZnqDYoDw2MjNdH7Hwsdb4Tnue+0O4fGWPgfyFEKtRj8JAGZkUPn6yE/mshnOnnuRyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730443554; c=relaxed/simple;
	bh=i4x4GNL1JF87uOmmVkYGNbDhhe7Sw04aTfdjR6fYRNU=;
	h=To:Subject:From:Message-Id:Date; b=YgU1M+Swhx+NprhJJ10X2C9S5oP3agcMh4Mgg4Zcq5PsOmBNeAPFuKYtKn9f0osghs35X/RtsCKn7J8unCuvI/mb7Z9U2gajmjydQQIODwWAQc5f2nvJO8HAnDKGTA/fVkSHyFMi3224w70gvAhpVr1esLBh4k6+y76hp+MxdHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOZEPxir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOZEPxir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AD7C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730443553;
	bh=i4x4GNL1JF87uOmmVkYGNbDhhe7Sw04aTfdjR6fYRNU=;
	h=To:Subject:From:Date:From;
	b=fOZEPxirBiI2uMJteZXEttKK0oLm3qJ0JLJwWbFxob7g50grikm7cJLs2Cc8P9f89
	 bYNQ8TBmk4xeTw6lbf/NP5Q5yd0/T16SR0cv6FEGoMuf2wJ9UDJVksePgiNe4D3nL1
	 0bKB1vvrn2Buvf3eT6zEousfAA3l8d3ihkSSz1DEexyJdeTbipndwhJ7zew+Dpwyrz
	 zvY/C86WM8If1McaQdpzFwp7/sZv/lb/eTLEpW11VgwNcQVxOkq2w3S3r/eLqTUkVY
	 zEUsJ9OhMsbqxrZBuKsMQ2bTEcDRc2byE5kwxUnUgwhyMeOSj/TFPH9QSQhkyKKsi7
	 84upSXz4CQb5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D87DE674A7
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173044355360.6278.15931400073441466256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4395d76b368264840f6229e2df49dfbb3ff43de79d6739dab9f6b8ff1d930cfa
Date: Fri, 01 Nov 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730443553
