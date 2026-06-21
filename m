Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343AA2222CC
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 19:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782071194; cv=none; b=lvETszHAhPmmKaQvp1fj+PLbgYTEPJMyXakuHBqbIFjPzmXeCXvnPYQwBZ7rKWVW09CPM5FYinBUc5gN1taBjw/xGmyBFc/msd4+chj+uChaZf74SXpeOHNHolkw+zu7WlrqLd2kvd+4DzR73ztbbJNjQdX4blnVaqu1gb708E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782071194; c=relaxed/simple;
	bh=6Lp0XKQDaaYNBT6wNBP6Nv39dlbFPJeaOPkwRxWj86I=;
	h=To:Subject:From:Message-Id:Date; b=orpCnvvv+bf6dW+j94V/2JvYqngkXlTj2KVRSxD0GJC47KwT/Mr96LxG2oZ74aLCxbUSTpxUTsEARoHry8nh9fv56RvybIAL70cUXs9hF5UnBMJPTiPxL9xKlUiyGT5h4FRsB3M+ogwjetNg2jPV05wWXoCe08Jj9RXU8xG5uC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGjYzkdM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGjYzkdM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1ED3C2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 19:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782071193;
	bh=6Lp0XKQDaaYNBT6wNBP6Nv39dlbFPJeaOPkwRxWj86I=;
	h=To:Subject:From:Date:From;
	b=XGjYzkdMm3NWFMTgtM+O62jxcK7DJPryGbOwXBC294Mrz3uIryDuDvRzNrqNAeq1F
	 vcXb/MmEZGuaG1b7/p0/hncprFe7NzWhehCAsEJDP8yQV/aSufXnW4DZZNizA4kuih
	 BsnPNWkWQVsguNHUxVCKA/8h/AFo3WNcYrhSIMgZcqJV8ZSzm0UmeFSpowZKaLd/3a
	 31rr74LSI6jQHQd14gnhRaJUKCf/U3A7rnzrDtisG3YOC16zy4pUkHfaku8F0SyM5p
	 mEhoTWhDKVrmrhiOvOmCsr3Y7b8zCS/+IYKy+JowoMiMZQx5AgUpq/iMUkoTPfeP3U
	 N8wUJ/ltUPkFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6B3CCD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 19:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178207119373.16992.11833267468832266440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 868db2fc6fe0ea04d833c2f45f7d5c119ff6375c14fa0356a5a856b8380d5e4a
Date: Sun, 21 Jun 2026 19:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782071193
