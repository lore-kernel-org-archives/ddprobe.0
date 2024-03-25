Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E976016D9BF
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711372697; cv=none; b=fUNchooBiQRMLpa9xPa/AEsBOpO2Nec45kAvuHYh6MBzLijU06hIiDtp8MpxUI0o3XYuvnjPgZpocNEidF474GkiSY4sPCPTVQjOOHcNBF5rqK1A85etr3mXFMx4Kk1aVX2EENYdf/V4whJlw55CJyBU8xtFo2ptkQmbwDRXcyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711372697; c=relaxed/simple;
	bh=19//R4FyDesNt5zf6HnfBUNs9J+gA31KUUTSPx3V6Lk=;
	h=To:Subject:From:Message-Id:Date; b=ofToLZ6RYxFbQzMyLp+Z3OyIONbx5lcqD2jS7uVOFAcqizvF2/Tp0xUxk068EceLS05AS5cPWFN9dmHXMXIAkG7Pq3Hp0rRbYGjeXFBWZ+5R3cY7cuVDoY0NDEy7rLXPgKK0dTnOwQc6v89Yubbnu1/T+WdBLRMZDfeb6GkcvMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pp9XHYJB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pp9XHYJB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FC91C433B1
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711372696;
	bh=19//R4FyDesNt5zf6HnfBUNs9J+gA31KUUTSPx3V6Lk=;
	h=To:Subject:From:Date:From;
	b=pp9XHYJBM17aKPOFMlDqNqrojkHpgONPMC5A3dYpmHkp0zaQwbIAmj52Nc4rHWC8L
	 wZb+Dr5sgJ8aRTcy4tS2l9fvAB1mwVV1FmgGDiBrmf4OJ50erU3RhS4akSKX1OXcOS
	 deZ6uEMVIkfnQZLF9T3oy+jIJN/CVYEk5HlZKENcUNke42RnANFFqJkqnUi5oBBVSr
	 dEdVis/jADRl0W0+gZYxl1+5r7gx/IOOULowToukJR4GcxpHx8FSkO7SSZT/FIJIQ/
	 cnK06oX1WJWitfPeEiY0hsaZ7qFP7YFoMRsi7tpqMoHChcVCoGzvagM5EjWvjQ+283
	 5Jirp50QJgokw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C798C54E58
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171137269643.26877.11758952054200251059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8247d6095fb9cf6cb770ca2be88e1c32dc342fe051063bc2018baf97635e417a
Date: Mon, 25 Mar 2024 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711372696
