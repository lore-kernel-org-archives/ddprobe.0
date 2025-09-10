Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2DE1F30BB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757479195; cv=none; b=MPaR9+48KuiDJ+TWQu89LByOghzGQkd29T24ZnmTtKfJEITRfbtsL66OS/7vbPKRJXkTZZFenUQ5or4KqkFopq+vZXw7fXYRtEYQagLsZuWU+XJcKu/6Y2OZuN/odma7mJ7t2EVye7GinpfXbRfFr/50nPZj7StdHZ3dTeqSLms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757479195; c=relaxed/simple;
	bh=2yqboUNNw93SxF+JFcLgPjNlFFXmOctHWbzzLO2TMcI=;
	h=To:Subject:From:Message-Id:Date; b=SJ63DZTAVhDcVpCFsCNJO9g8w8a6pI1Nj6BCabakDNuAvzb5LAtGjDgfXuCDUKqd4r4t7/GNFCQOXv79Q70ktsVLE2z4Wlz6tsiGaPfuoI0Dip8Z9rYpd6CuupRcoi6Vryls301VOF77Nbq8ZgjjXhmZVUYlx4qBfIjC+2If4Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSufKgCC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSufKgCC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB87C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757479193;
	bh=2yqboUNNw93SxF+JFcLgPjNlFFXmOctHWbzzLO2TMcI=;
	h=To:Subject:From:Date:From;
	b=kSufKgCCnCsoeMELiivTEYSgGrQm3G0Y60jtEVyyY7pTSoVNZNtrDkcThpaauVovf
	 6mXXpqPk9rvPQC3UpVOo5JZ4h3OzMCDqN0TbjUEPvH4qgdrU/sp1bf/Gdy0UQVrs3B
	 KJe/ppl/IcssqSESL5Ypg7MtTXFaSmW/dBWeVVgFTuWiU1ScVVLHf5hy6GIp/xNtqt
	 6GCRrJDx6z1t8GuqnQj4yCoYET02H+XhZWqdHlXWp840EB0fo12SBRIl4Jf9wRzPaS
	 wYtSmvHTDJvrUTixjZtE2GsFkbQ4agM8b8LgTuN18AdYrPFtJgKdsdyZcSh6lv1ZEh
	 UOAhtl9B7WmTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E466CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175747919357.23000.1241938922721671248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b5bbda3fe4408be9079d59e10e3bd6f65c043cc8684bc56fed73d8a7e962b4
Date: Wed, 10 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757479193
