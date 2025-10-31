Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395471F5423
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761891594; cv=none; b=fouPSzzu4bnbPbtvAgtTLjG05r/fq1R1Xu8qTTaH3cWleuNgDf896hEcjajLUazUy9glo69NXnjsjvEOKC9VEW6UX85dky5SxU977C3Mnc/PZ+fO6O0xc2QQrVau4ZK80RojfNDCklLShMN1da7eG30nGzSjYjVSyewL8q7cuZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761891594; c=relaxed/simple;
	bh=8qkqkmoFIBVqMOWyaAF4No2uKTqJqqodz8Kb9dkx9iU=;
	h=To:Subject:From:Message-Id:Date; b=sFzMdV/mexUi04LJ1yD4oD0VSgYFBd5ireWHCryg1YVYWaO6ro/OavhuFlS8WLjyAbGC4Qxr/LEXOLwtcxpAgYFFP/R+1D9JsDazgo0XLk7OpBgXKADTY/35ztpM7l0cFujNOyCCFXLHKOgfDkt9kxOXG4TLLvzszSaUyVI1jEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lo/d1gWH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lo/d1gWH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D15C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761891593;
	bh=8qkqkmoFIBVqMOWyaAF4No2uKTqJqqodz8Kb9dkx9iU=;
	h=To:Subject:From:Date:From;
	b=lo/d1gWHyS9TPFToQAyrXTPj9Rq4duF0hNazBuTB1gaGvpmhCaIXB+fs+iUBFlnE1
	 MrELSjggUALZDm5O8xknwvUbso5c9UCM0vTgE4vJswcla2fCgW8UzXvTM53iwa5JTA
	 0dBRycEECMIH6E5Sg2JijrKBLHNHPtbcJo9sxi2QJt0wv1IcH40GNb7IOMV6Cs75q8
	 qNlWqy/z9pKyDPib5Kpr2EWK2oXrP1zcwaoj+TT/85X2K7XvKqimB8+9Zet3rTkjUl
	 BxOpfW9nASivKUl/eKjpsxZKTWlcZtbY7QvWTVCQSfkdhyBOckRBNLafQjHKu6GnID
	 2GSJZzk25aHZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9437CCCF9EE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176189159358.12127.9603787882000011363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd29fd7544316bc6a8398ce534358acd2afa83d909d59e33ea3c2aa08a1df5fc
Date: Fri, 31 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761891593
