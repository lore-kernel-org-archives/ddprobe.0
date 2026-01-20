Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D92433FE0D
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768886034; cv=none; b=kf1uDueVGtH7PfKAsTqlVvHb3P75agBRST/SVsgnh1KPWxJHYvd0ZrsVZCMmjQKa+/aiW1GdZHYi2FKGqSW/RGDNAigtyds3zQyZSvvii5zcc/sFEdEV/F1YdfNaJaKJ5Zc0Ueh6xWK5MszgIWu6RweGxh0n1VjTFVbeKHs2BXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768886034; c=relaxed/simple;
	bh=5n4hwi7LnoXhDkxlf6lN+7mZTf7erfiH7x79EYVprDk=;
	h=To:Subject:From:Message-Id:Date; b=Qx5DyNatLdmba0QU0aYCZ9ypCUHozfjUbBm2lhW2f05D/ScivixjcXjRB+uC/n34BrgvJRxRCmbspD/A98gz9LlB2lyN2YmAyOtZLl/76LYA+ShFPCi2pr76hJiP+LjJjiJntctnbhh5MYVsoEM6gvitUXh7naIaDw2r6cw+zj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2viKZac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2viKZac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA80C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768886033;
	bh=5n4hwi7LnoXhDkxlf6lN+7mZTf7erfiH7x79EYVprDk=;
	h=To:Subject:From:Date:From;
	b=P2viKZacTwKRlmTTS0f7mSe92Sf9eomRFVSqnNl4TU++u/MQ/coL5yMaWPHN6L4D1
	 jkqleHIgT0Msq/des7bLivnOqNL8BzIqBulJ7/QzSBv6fub5l4y7SWSbUDWWSktQJc
	 tTVI9pj5t05AExCJ5vZf8o5z9eR4CbS1hcKUtygU6PyWqxZxCjt258sCXIAJOFghsR
	 f3vhO9/nnx5hOwoPOF+Dw9i2CkMCH38NHQ04g55GMAlHJ1YKzOVxMBx4Zb8bnCJdCZ
	 rYGbFO3Hxqs1ns9550J+m95oPLQlWRanH5O/7NXfLD+8PdbUDG4wPuqz29iHJAuE8O
	 338c/Phn0BmRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96562D2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176888603360.11461.12382054339652290356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6145e644673ca832f017cbcc0d3976f3a5f150991e4ac1b731066b4dc532a48
Date: Tue, 20 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768886033
