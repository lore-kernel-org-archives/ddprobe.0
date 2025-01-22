Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D60C323D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737558954; cv=none; b=PI3odhyq+sLO4vdtyQUacgdJwkgz7At5ZAuIrriVzwMCBqFOFt/9efJS/jgvWha6n8/gwQsc/5BRJld/qBBtkQQnGNXPEl2VHgS58Nb2gY9UcC6bkBQyIc8NnC84Wdb5CbNlpHAnorF/TNnNo5laNeu4MNI1HkhkW+ne9cJPaFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737558954; c=relaxed/simple;
	bh=PWFoUSi2wQrF1jj6TzufXGY9PN7uf+A4vDn6Nq0OA9w=;
	h=To:Subject:From:Message-Id:Date; b=DHApmYtkZJ5bBb3KwIT3fsx9nK8B1T83z7y08sK4RxTwZ/JLvgN4UBNZVkUVovRy3Cgb/YTe4tEnQ4JLem/oTStglLejcA6pK/I9XpIQvnfvDuDavq1YA8HqCBmnnuyAucjLD9wKOakRgg6HEb+O8LhovxF/B1oocYKWxl4fppQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WI5lHAxL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WI5lHAxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B56E9C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737558953;
	bh=PWFoUSi2wQrF1jj6TzufXGY9PN7uf+A4vDn6Nq0OA9w=;
	h=To:Subject:From:Date:From;
	b=WI5lHAxLmmCSJmrmBWeTuRDUvxM2KaiGaoOv4evdT1eHN6b96hcOWchZ1R55VUQNs
	 YCVVDbDUhi0OzXBb8C0urOk4A61EHFptUs0QSddo8E7IkeInClrC5Rbfhx6+RVVr8O
	 fE4sPY49PZkGdvgb778m7sXOUbkp9Jj90Fr7OQuFPnOttDfnDVJDTwpEJ4p37rzxqW
	 S4vBNYfL7sRrOweAXC6+60ms6MQLjx0NHZ5ZGUP04KM0PCcZHMl51nP6WJDph5z4q3
	 CPhAM8thShMr/4MUMX85Y3Ahu+NOfw1tMmVgLfZfN8zpS1v80+Z8IpaWlpsyELMfL7
	 egkg0B4iK1sWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A16F9C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173755895365.20395.17473972290872962995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58753d13bb30abdb261ebd16877107fe0656cba5126a87ffd92b0af98994f5fd
Date: Wed, 22 Jan 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737558953
