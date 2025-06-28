Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317FB2F1FF1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751114994; cv=none; b=GWTyFbZMIIb7Jk7oWVh1EQicOvkoH4RroRS5JJ2bvmZWO5H2rEJoQRu9a/QU7lKRXVj2YVQfA6WXKLwT3IilAsUwB7pYEnM3sNQz0YrJ/nW6zE5OjHpRG6psBITGSWcxJZ8b7DADm3ACC0HMA/yb9NQ0pXHCbR6/I++gTIpFcq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751114994; c=relaxed/simple;
	bh=xpP3Ruv1ijzNPOeeMx9/cez0FtJSYC2H6wyEQISTegI=;
	h=To:Subject:From:Message-Id:Date; b=Mxxt0SveBOdgaZNOa42Y44v2mOSgbQYH0bNaA817FKgwUSn6E5jk3tv6yTVhnASGuO3WTBhJFYA+0CO14YPJgGHasn+dp+5z65rOCprlcI9fB82+WtR238mrACWEDEL96xwLEJPcQPu+EusIVjices/4R3cMlNoIBs1DDofA+nY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1UsHZWC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1UsHZWC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31A6C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751114993;
	bh=xpP3Ruv1ijzNPOeeMx9/cez0FtJSYC2H6wyEQISTegI=;
	h=To:Subject:From:Date:From;
	b=A1UsHZWCYbY3qm6uaTkfhnsPg+w9psgXodwnQVKR/NhRfxY1+WiH1GQ41c46QsDSO
	 Up6cDHXcL/J9mkP5yT1KBjaMFoq/dLZxomFpUPXYPporaxCh+lg0CBo+Z5kzaiitnO
	 IR74UN9HBB0+HeNJGd30kRuKK2SWUfFVdpyYJOyRB9CctTbHyZJmXNr08h6zXM6vkh
	 d8gDzPLVFjYlzH79QyNxbQnY4dmAfMnlySlZBbUmEAjAayHN7qx3xMCx7JWvjdkMvq
	 cZhrBIsUTz5QZl+DxuUsXdrkhCotIahOOxquEsyYb3IuIc5FrlYen9NQ88YoJOGRzZ
	 PhrrccxrtsysQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B9C7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175111499357.742.3215576134082522613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc7473c8c69b2387211bf1e6502ef57fbe4cf942b30521e9155b7971c889cf09
Date: Sat, 28 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751114993
