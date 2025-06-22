Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FA31E522
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750556394; cv=none; b=nYLHpZefcF9rycvALQZWTUcxKvN4WxM2ukbcout3Bjwv4oQ1JzANgBBd1zQwU8wpUfhChoRR70ZqW7nu25CIWfYURi4VE3PYdG8r6v2HJVhvZzm/SldxIpJwDq0BZ2dAASRkzUDtxkzew1TYOOLXFAWWft5X+zdLFCcrj1wvMoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750556394; c=relaxed/simple;
	bh=INtlN1eT9TeW/CZdouJXQ/zmM06us/pfTMFAbCEbGy8=;
	h=To:Subject:From:Message-Id:Date; b=rKrqvAComVm8K/X4YZNfCObyXExRBUVppm37EVcwjbI0RusB15U21EeTMokGDRq15URabUiDr1GwGh0YCyZu5sJs2hpNL7rmzN9jAcFSX8Amxk7hE41+g64wa/QssydbOiepWT2DcOJqmoHP5d1JtUMGBIrRjIryGzp170Umhtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfTKTBr/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfTKTBr/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64CFC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750556393;
	bh=INtlN1eT9TeW/CZdouJXQ/zmM06us/pfTMFAbCEbGy8=;
	h=To:Subject:From:Date:From;
	b=KfTKTBr/0LcI7h7L/LHmiQti9fIepQumbn2+qGubFqZ1JWoAw1SBecO3/tKa/4AGq
	 fY9yrWIetonMOv0JHtbOvdMGC1GHDjyqzNYVuJq7M8pyChQVPltIUGfTFeYtX3hfyT
	 PkIJdoLsBzyfU9RstW7ooaNLRr9Dvnh8vragkuY+g0/jqByRMiJmP5qHw7W20gp5yk
	 lLvAw9zatKHch5yPS0h6xOXdhWZ77Iz4gU0Tb5HEXLrEoPKeFSys4GGpoWhFMVSjCm
	 P0Kt8f7+enB3CVQcnI7kdWP8/3/UHu29fcZmc1mGMRBuZnSkyeGMeZ/iaoqI6ZAbQs
	 LyjtMkiskz4jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9237BC7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175055639357.9646.12437606441988441304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6535f61da50c16e13865f925d09dac7e5faad361c32dd50186d0c192f0f1dc2
Date: Sun, 22 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750556393
