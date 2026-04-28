Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75BCE3A7581
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 10:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777371454; cv=none; b=HiWgHhdhf+YlWQNrhcDbe7529kn848NJoUbMsauqqLe9eZ82F/04aHY8CwMtxKOKbmWypWTMpxV3911A5RrhXochOhrzp71kz1yd93lHGiYFrQOnE+VIqV90RxacmgbC6oA5PsC4NVvFB063wEdTa7xcfgMTynnvQCiFBSxFy2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777371454; c=relaxed/simple;
	bh=GHvY2Ca/4f3monW6xN2BuswwVrYIuc9M0ZbvWEgiLP0=;
	h=To:Subject:From:Message-Id:Date; b=iGZNAOOnS5pEnQI79TbspVifYOh5qlMR4SCnDRP1JJ3yQI8QU8ZoUJ3MpirmDAQrajByCjlIp8f/0jIB0LSuShZRDPzBo1WRCWq5TrJY2+wjdig22Mmac+5CTQgSR60NCo6zA4X9yMH2JeT26nioR1oclthcbPAbXtoklfH3KYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9UAhCpn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9UAhCpn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82E4C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777371453;
	bh=GHvY2Ca/4f3monW6xN2BuswwVrYIuc9M0ZbvWEgiLP0=;
	h=To:Subject:From:Date:From;
	b=h9UAhCpnwVxpZkZZHpjjbpLM4itDLNw+vvZ7TD+5JG/csRQpPfFX33haQfRrFEydR
	 eSlXF2ute0H8MHI//iejvwDXUj7QH7pdGT9A46+w+PooZlhLnO3z7YT/zio5mHZixJ
	 DPItJ72tIvdvaj7epTwVz/YgeYFnbc20Swp7i4LTa9m+NO+iQD4SF+n6a0seCFGUXI
	 uptO5hKx2vcMLHIHFJqzw6xkZWIX5KbEtsSWIoaIN1vUmSb169xWnKFvwjFrClCZU8
	 +WpgKUCVOmfuBDgAkk/gPfSz/zyuBnPA2kP0L16HtiX/NqseR8+zgxkzkSaaKOvjko
	 TOnicVtzH2Qdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0CDFF885D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177737145368.18979.368802209628255370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 319ee7506d102a4eff939acf97bf8e353823b3bc66748a4002e84153be28a206
Date: Tue, 28 Apr 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777371453
