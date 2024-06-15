Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6676317555
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 07:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718438303; cv=none; b=hq7wUuxZHOld9jBGEzEAWIxptP9dVz25VhERd0wVMoU/AEEuaCb6VcNtNlTGz6hsdMXevYnIPid94KZeHCmuDU01/XrwA9T0YQNkFOj4mBdaNFThHAvr15u7Gg5JZhaK64gVdtRM7MQLO9oTLNXHq+IRjuEPfrQupZkoJey7zf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718438303; c=relaxed/simple;
	bh=xXUS8x/6WlfKzcnDSoBLISflK7uSBNDnkw2ftQWFul4=;
	h=To:Subject:From:Message-Id:Date; b=uLIQZlIIzDrhBwmI7iXQ1qTFaL7M/T2xQ/0zWq10Kw1mO5eLHo6MdB+x68mSCyS3HxOkZs/TFoAjrm3S3UUrA9CHMRdq/x1Je5AFMa6/Lj4y3+UGxZVvuo/+mAmYMTPcgaoxvqbYlsLLpCPhACI8fWe3yNkE1lPWphjmEGlsxPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZh9QADb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZh9QADb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0AD0C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 07:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718438303;
	bh=xXUS8x/6WlfKzcnDSoBLISflK7uSBNDnkw2ftQWFul4=;
	h=To:Subject:From:Date:From;
	b=KZh9QADbwCIjZweswHCZP0oq/AEaJZN0Br/OCv6zYz3g9DKuxyWCE2LpescWyPaU+
	 l8QjLccjl9ukbYXMRCtbeNprWV1oGtg5FkZSugZhgWVJ6Dag6l9ERSPNol0n53pyWj
	 +ttL8HXG4qckpkCEJb0ciuR8IHM2+jJ/9yVvWlhD7BFG9lZqqbzjifwUvEYzOn3qso
	 S2+3flBcE5QDmwZVCoLpp42IZr18CNPXEu8zVc8jdROeGauo1/g5Afn4hyT+53G+Kw
	 ZtCDc4hXVySxtwUhcVYNp72Olvp8DaNwIIasvPE9DwKj4uCwAOFoTf2tyS8gXiG2mc
	 6GKTUE0I1zOxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D73C5C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 07:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171843830283.30192.5397293642341514659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0151a625322dda5dd0b3d6ed7959dfc32a0d4c050ff6bc0d3e74cf4aaed73929
Date: Sat, 15 Jun 2024 07:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718438302
