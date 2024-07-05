Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBBD81E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 19:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720208723; cv=none; b=UODFKuW9V7rL8to9ucZmV5TyHfLHW0ELJqm/nRq0YHaD8tWoTGyyTG7t6fq5urZVjggN0DG1KBtInDjWi2WWHEpURdDrcWdZ8jaCHPTeF3L70Soq6AHW9oEuz2IFtEgqdH90qYSfOV1lH9CCoeEyGbxyIYCNIDn6ssAFovO8J8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720208723; c=relaxed/simple;
	bh=uMXR8P2vwm7BzXq2rVENx5nCSi7/gFzafYGEoZLyhf8=;
	h=To:Subject:From:Message-Id:Date; b=uPiGW1CQyeAAddlQm+5XP43SOb7anX4ku1/mAPeKG7uOpKNlPpBAyF0KBnWivHZaBAt3bTnsbLz8yk5KkjC/NPQf4AY0RdeVOMZQzaIils9Ms4R/aFNhD6gOd/h5XCCpJZELWJVcOMOEDn1TEgGYjnvqfxxdwINBFpat3t+pA3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlU0K3va; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YlU0K3va"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF738C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 19:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720208722;
	bh=uMXR8P2vwm7BzXq2rVENx5nCSi7/gFzafYGEoZLyhf8=;
	h=To:Subject:From:Date:From;
	b=YlU0K3vapcHepLsomo3zE0Q15beGjXdJOStc6C/ZaP5NLkWFkcixDt36N7hp0tyVT
	 mrl6pzCMnY5zZVFFMeNtvpjQuNmeLZ4zSXA12VY4pkOG/3xkU7JLZ5pOBrjO9S2iHT
	 rAiweCsmOWzQ3wCUVN3VUgOm8Qw/McZRtwW96wEW/AW0HlbkZ71iDu8sFUbq45rg1O
	 At9Jdzz9h620p4pfK4Slp0Tgh0uKcrX6lL6PSb+XlebFGVeEQZ/BCytl8Hf1U/yVXD
	 ACNa0IUqiGttCJeArUcFJy1Yu/cu0GdgtqZUg86LW/F3FpskhAWG5n+URJzUmQGcJC
	 pEw4s2cRT3J6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F09C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 19:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172020872278.10985.5544922530145636457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5036195d9c3122588affb32a61514b95c188dd3d9c2aa2320765b97c1966bc36
Date: Fri, 05 Jul 2024 19:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720208722
