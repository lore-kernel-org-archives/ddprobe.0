Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5963C10A09
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 01:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718242703; cv=none; b=MPGOm1MctmHT68L/1bOzhI7eKibDCOREn7Lex1Adwl0lR26DoV2rIUB4zkysJe3rqQocIcYwqwvdQbjc3zDEvFdlZZOf4ADFv8gr5BE2mSCnQPAMr46UWvSPyTVD5GNzhIRfBROjz8qKMu8po9f4S51aUWQ1Y/12YEFZzbc3psE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718242703; c=relaxed/simple;
	bh=vyg3et/Rua/W7PFSeUrQX4XTGlb/g8ghhu1g4hnUGq4=;
	h=To:Subject:From:Message-Id:Date; b=Hn9JMAnZW4u0wTqhvwKiVyb0WGYuAfbNK1+E25boVA2ajVF/+getgnKJQPMbhRswqApluM12HORCvz1SFVZHiUipsKe6F3StKAsEtG4H946xw5+aBUvjdf3Nymc1kxSyPuW0aCEm9goEAzmu0xFe4FpNryD+TKA/Ka605pVkE3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbCCZzx2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbCCZzx2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D7AC116B1
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 01:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718242702;
	bh=vyg3et/Rua/W7PFSeUrQX4XTGlb/g8ghhu1g4hnUGq4=;
	h=To:Subject:From:Date:From;
	b=sbCCZzx2l5mV6Bm/98FRziWqt2W8sBFvxnaQhZVk/LNWzYSBYn24mNC0OlNFlRBtF
	 7ML8YwfWQcQxQFyz662wOHSUlkWfo0pqgkBkzNJsz3R8caI6j5MLONXUp+WTJ5aRBl
	 OhycJOPh648ltSjNglESKitS7f2MxdkrYx3Q8sYv9Hp3q7DM7Z9BvoIgWXad/eUUJz
	 /+8Gu6ffXIXhqNZ9nf37IECsjXR1ymom+Da2jg9qB9S4/A7sIQ4yzq3Q6H77Cp4gri
	 EZjCxdzkhD6DScMziKgJRiNeJZvIPmio6mD8iuIgMwrLifqF1JfA/zmsrxEW1f1n/f
	 B/+C/uni+54NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D21C27C53
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 01:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171824270278.20222.7103995835362093643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac0e9e5f477123f36965537380b397cba3d7417b8286fd3c5329bc51f83d4d5b
Date: Thu, 13 Jun 2024 01:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718242702
