Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F221F9409
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733127954; cv=none; b=kGw0FZE0ZSJciJWgTfF6Tr2OtNXLaxc++qVYZkjlgILidwzgOFDqhERrgHHO0E9mvr5i6I+t3Nj9D+q/OWWDacGEg/K/Nc04ZYsdhVBbb7jvkxSTprT6lRiTbBfDMIeBZgi/ckc25RxOya1iu1nvwb+IE9ScNPrWXigGgf7bXWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733127954; c=relaxed/simple;
	bh=6ALkopTm41iBDqkeiGo90IMCi9vhBP866tMGKFwXXRE=;
	h=To:Subject:From:Message-Id:Date; b=LNAUU2b6YsyGLXr0MC/NoL0PQZ+5lNUQGwdPGHZD1QjswwLswyUb95eVG4oN793XbhPbBgiNHVUS4rjqnEEnB9baIMmrwGzGo+ybfD5QRBhoiPY9wpjo+1c2pgEerNiUFIz/HOImxY3sSO+zeXtz6kW5k4KNIgZ4mrhUm3TD5fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YeXOFz+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YeXOFz+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95D9C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733127953;
	bh=6ALkopTm41iBDqkeiGo90IMCi9vhBP866tMGKFwXXRE=;
	h=To:Subject:From:Date:From;
	b=YeXOFz+c3BnNplt8nKVlBC4q1NPbqZziHFTyHbFOwodE5H7mj+OMv3WHasXxRxo1r
	 wrjxPoa5+hixxAY8C1qbvySykB8hW0+huwXORJXVi686cXTdWp+E/w0iOtHo/XVspM
	 YZqIiUEfpZ7SREjCYUNHeR24P4B7kz8eMjwDOuNb0TkQMs6lcBg8JLmCjNBv327vnq
	 C96djBosushZxpSOFJCNZcwba8sAR4i381EtcEUsc2bUguLPLBG412016Q53tmbdYg
	 GDO39w8Q+mIaIU8lz44cIWxRMmwogi+zIpDAd2x7O/x2Uy7aAH/dfIo3hvESjXs/I0
	 s0J1a+1cQ0B+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9068D10DBC
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173312795367.25636.284753360973016549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57b5ff1d3d96ccd3776250fa19ab042c8b7749258816fb63b0a79bc3d9cafb10
Date: Mon, 02 Dec 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733127953
