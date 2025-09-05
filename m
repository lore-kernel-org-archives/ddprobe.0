Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138B01F30AD
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757107194; cv=none; b=eHW7uS2Oh0Vmd7PYl51h5I8VHcG2Dq5E/yJc4XY+dbP31re0qWYUg8I7zn23SF6sFn34TnuM28TxaOdtjh3klS/Z9l+cAcg5rHq7nu2vE/ip3cyaH8FbWQ0kwU0qtOkGD3HLV/YkMSOEk0MGeh5SMN5UrvmqdbWhEOquFoAN9pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757107194; c=relaxed/simple;
	bh=0GUlhKMR4Vw6UA+yN4h9c4R8a8sD5+MsQ2bSY9UKvvQ=;
	h=To:Subject:From:Message-Id:Date; b=YmKlobAKCIUDCLworhbtkuDOiy3vSaeWMOsHSMjuN91fbtBlYvjwSToniH4/kgsU8AG7W1pxb/kt8ValRUc4TPFb09QBqQ5usAUDhoEGjp1QCjN/ORsPvcwBIyTKtotTZIu1nmgOFIPj7cpUJgXntJNDNf/Ua+YlGkCIwzQaaMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNczZbAt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNczZbAt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C06C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757107193;
	bh=0GUlhKMR4Vw6UA+yN4h9c4R8a8sD5+MsQ2bSY9UKvvQ=;
	h=To:Subject:From:Date:From;
	b=DNczZbAtJbHBxGyKZ40xRa1nJ5T0UomRTy4kylJOOHghLphGN9v3Uz5f++PnvPguq
	 7euXDqochVYlJxLZSTL6HxLgC8tO8vQes0JC1HRg8AccQARt4v0YxG3uc8bgIhZJmP
	 C7cogIwr2/IFwjlQj3tqQMiWGdvgHdD9vHj0vQlOexB9waFaDx1UOtfYBLLEaG/rLW
	 IFglNmdc+NvasU3iqsupc3n9We39xfB2vJrg05pwB+H9YbQAxTNRQR9yfS345Lz2j5
	 SfeAiw//NCp+sp9KrllOgXZdQO3gKWpiGDlsRhWDr087mwfcAOkzM6hxR6tuqjgjGP
	 ByzUGgQZpwP8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90021CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175710719358.12335.18371127143376501562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7369a5d29349b7957e5b48ee34e63a78ff4a2242e31a0923aaf4cf573432073d
Date: Fri, 05 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757107193
