Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F13C5810B
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711028897; cv=none; b=UM0Bl1B9Ojny/APV8srNCrqn1vsWoB1aTc3ZpbrJNbAw30p8gHDXlEJ7nBgYQ9QATwdOPC/Sxf6nESpvOtfTREiW+6WY/AUnoP4qMMaw4i+iKaO83yosKvOewRBe5dNjODJLNxz/P9GboWGBokWaz/2cr4ozjwGImIYSigeqAVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711028897; c=relaxed/simple;
	bh=JanlAveOkj+VowsAMKnlU1nBAaBkAhPLdtn+X9N0hkc=;
	h=To:Subject:From:Message-Id:Date; b=kQoPWmKMbcf20DfDE44BdzOj1h4at9CmhhVwVf/LfCXSe2R40v8FIQcrKp7teE6RikiRBD1vjHS/xgAQdVEKtlElu4FVuBrXHenBJrsuIi05BkVdEcqszRq6avtiZFEFey6TJUhzl8yttf3GXxP3Z5PFDNz461i20kUmq3YjTuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDDhP3UP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDDhP3UP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 792F2C433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711028896;
	bh=JanlAveOkj+VowsAMKnlU1nBAaBkAhPLdtn+X9N0hkc=;
	h=To:Subject:From:Date:From;
	b=tDDhP3UPrXhIyceMaidNJ9/awH31XaSYcdXUgMJVt9dTF9+W5aKiVVO/pZ3/jLqDg
	 mhsxxKO3EDSOukRfn5YXaKXYIJ5KD2B2mp0gSuGhr7PM/Fv4fCZLg/BxCgtfUk2Lnd
	 7xzeIyhBorjYGhCEmEGigHFoaAKbOTuMWN3tOLyA92ijgdKBJ4tMIoKmarCZ+PJCAp
	 ObuvVPGF5DjiHqawFKUmhmW0ND6jWHsZsT6xZfwvxaW96TZSqWnGOdlJ9F5+ADsEDk
	 bO0XLN2S4I40k/SZuGZ2yK5pfQlE1sae/43YmOnHOyxHZ0c0+BphXp83yIfXaeGeEJ
	 YVY0QfHYLt16g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 652D0C54E58
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171102889638.18825.17899669757042825751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b713aae797a2212f3472805bbb87c3c57eb737528e2b4823476f394d1a6d5a61
Date: Thu, 21 Mar 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711028896
