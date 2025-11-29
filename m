Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230CC22A4EB
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 13:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764421374; cv=none; b=sxzboV4aNeXzSOtqiSoFGyfCUmcc4GqnaAsQ4E8H0YhvO91e4Hi8kAH8LKod96wdK1vMViDZTPXyGrESHi2zRoB3mbKtYLvF4zcWDLYlV7uqSYztMPpPhmh0q9FxIX8r4MarKqpAowo7EnRy5GxKmrm9k7u6G/JHvZsL+lUXezM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764421374; c=relaxed/simple;
	bh=oQT7fZ73TxLRYyZzHW6YFbWjZzsjW7rZLVA4LJ2YeXw=;
	h=To:Subject:From:Message-Id:Date; b=XUOpK0r25ncolUaU84vqVcUd7Jvr/+Edx2KxY+f71SapxpqSHp+BAnBjykyTO+K5YDh3sgBd2pijj9wzbG3r8ekURMBuFze+05C6VErLhcWZR22i8Sq7wtBQPmSjn5ASfDH5UmN5WiNGboePXOSMeAW44+XEzdI0nOx3oPoFk2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihKvlCGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihKvlCGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD27C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 13:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764421373;
	bh=oQT7fZ73TxLRYyZzHW6YFbWjZzsjW7rZLVA4LJ2YeXw=;
	h=To:Subject:From:Date:From;
	b=ihKvlCGtKJA72CsCWtTaHmb1KBfc9BhRwY6FA24yf4Vu4YYacMF7wIthSfLycjlg6
	 ygOxOkCQjNHKddSJtaJpUDMEBlXinx4NddKw7g4t2aO/PI6lBwoGblpPGnTQb1eO/w
	 kFTfjfsNffqR/Y1xUZ6XuLZaKZ04ubmTDHSyMVJ3v/Gn+wQyB11Vc2pwXYjSxR+drN
	 KYUZNMDJSZXZPfcfd1AnJq4w2o5Rd3XnqQSjc/ncn+EWOlaUDCtGV6SQr5v3WNj3xI
	 mOHCVIzyaCNcAnOTOJeZFbOxGfN1vkYg0OG2ULCfmnyWvKYPZS0I7pf/qeCHnZGYTD
	 gqvz6I146Ul7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94639D116F1
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 13:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176442137358.22381.10937857434762141261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af35dadf2a246bd124530e82e025665c2d751a05b6fb37b5fd065a8fd3f1b259
Date: Sat, 29 Nov 2025 13:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764421373
