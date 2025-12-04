Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294FF338597
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 13:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764853974; cv=none; b=kj2UWoAcVil1Ere4o6+RrBY2JwamhFxmmwPP6pMZTJ/J7BOmNmU2zEZK8MyLvEvZHNVldlX/mCGB0J8YbFqn8yfbFORbT9qchxb99Pk3dgbMOzRjzEVHYVL+qkyACfgW3CEvv1gt9LiiiT6luC78G0BXU9MiF9xQxC2rNHUUVTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764853974; c=relaxed/simple;
	bh=inRKWSnu1/Q3jHg+cy0eZQ5/5KICSCnby7y7EcsSE3I=;
	h=To:Subject:From:Message-Id:Date; b=hhV2cJSoGUteUcKDBhXzffeHllzpr0mse5+t+CxwM7Odn6vnrlt2JpIrjzaDbzr3R+gHv7svXH/SgMyVCiQKk1kRjm2GFm3oNB/uLyKSmUhhRHm+3YMEYie+jB5KQuY11JbZvh349jE1njp0SmTigDGdqilDs6jT3VHQh9ffh2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brCNBtFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="brCNBtFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA08FC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 13:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764853973;
	bh=inRKWSnu1/Q3jHg+cy0eZQ5/5KICSCnby7y7EcsSE3I=;
	h=To:Subject:From:Date:From;
	b=brCNBtFrn2vQXXon0JVNQ0p8xR8Z8z0UfjEH6OKwslXDE920ycRx4DHQ2cYTHbGHm
	 LydNFKUvKd/PcWsg5rjyX3gJR/4bXQSqIeC+6s7zpHcoz8+CkHO6VlEufHPD2SZNcN
	 4xt9qEOhsBwEqrEB56rd1DcdjCYh7c2bxohNtzLw1lrm5WKZ1gaM9c5sCNzZUIvXwy
	 /P6Mg0OnMHbdLxWjVhfsopAti7ZYJoTDQf9TTMDsScCqx+HobH6F0qGjpBRJ9MrhF/
	 51ZWK94mdOZzL1wbYnW1vJL744+yneYEgz08jJJU7/Mkc6UHYMQZmoIwFRoQIGEUVc
	 vSusr0wcGfGvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9664DD20682
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 13:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176485397360.25139.18411601168980960300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dac68661e1e43947529a483f5287cd4b5680608be48318d7791d069abae20974
Date: Thu, 04 Dec 2025 13:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764853973
